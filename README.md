# ProgramResult return ABI repro

This example measures a **+4 CU difference** between the Aug 18 and Aug 19 Rust
nightlies. It keeps the dispatch and error handling from the
[original repro](../rust-bpf-abi-regression/README.md), without Pinocchio or
`solana-compiler-builtins`.

It defines a local `ProgramError` enum matching Pinocchio 0.9.3, including
`Custom(u32)`, and uses the same return type:

```rust
type ProgramResult = Result<(), ProgramError>;
```

The program takes instruction data with no accounts. Mollusk is a test dependency
only; the on-chain program has no package dependencies.

## Results

All three builds use the same source and produce v3 executables.

| Build | Success CU | Tests |
| --- | ---: | --- |
| Solana: cargo-build-sbf 4.4.0, platform-tools v1.57, Rust 1.95.0 | 26 | 270 inputs passed |
| nightly-2026-08-18, sbpf-linker 0.2.2 | 26 | 270 inputs passed |
| nightly-2026-08-19, sbpf-linker 0.2.2 | 30 | 270 inputs passed |

The success input is `[0, 1, 0, 1, 1, 1, 0]`. Tests also check truncated input,
instruction discriminators and validation errors, including custom error zero.
The original Pinocchio repro measured 30 → 34 CU, so removing the dependencies
preserved the +4 CU difference.

## What changed

On Aug 18, `remaining_instruction` writes its result through a hidden pointer
into an 8-byte memory slot. On Aug 19, it returns a packed `i64` directly.
The Rust type stays `Result<(), ProgramError>`; the return convention changes.

The newer code merges more result paths into shared blocks:

- Owner and writable checks execute two extra error-tag assignments
- Success-tag preparation and checking add another two instructions overall

That makes the successful path **26 → 30 instructions**, matching the CU count.
The difference is already visible in optimized LLVM IR. Both versions have
shared blocks; direct return does not make every path slower.

## Build

Run from this folder. Both upstream builds use the same
[configuration](.cargo/sbpf.toml): LLVM CPU v4, final arch v3 and a 4096-byte stack.
The commands save CFG and LLVM dumps separately for each build.

```bash
cargo +nightly-2026-08-18 --config .cargo/sbpf.toml rustc --release --target bpfel-unknown-none --target-dir target/aug18 -- -C link-arg=--dump-cfg-dir=artifacts/toolchain-comparison/aug18/cfg_dump -C link-arg=--dump-module=artifacts/toolchain-comparison/aug18/llvm
cargo +nightly-2026-08-19 --config .cargo/sbpf.toml rustc --release --target bpfel-unknown-none --target-dir target/aug19 -- -C link-arg=--dump-cfg-dir=artifacts/toolchain-comparison/aug19/cfg_dump -C link-arg=--dump-module=artifacts/toolchain-comparison/aug19/llvm
cargo build-sbf --arch v3 --sbf-out-dir target/sbf-deploy -- --locked
```

The Solana build uses its default ABI. It does not load `.cargo/sbpf.toml`.

## Test

[Mollusk tests](tests/test.rs) load the built program selected by `PROGRAM_PATH`.
The Sept 19 compiler builds the host tests, not the program being measured.

```bash
RUST_LOG=off PROGRAM_PATH=target/aug18/bpfel-unknown-none/release/libprogram_result_abi_minimal cargo +nightly-2026-09-19 test --locked --target-dir target-host --test test -- --nocapture --test-threads=1
RUST_LOG=off PROGRAM_PATH=target/aug19/bpfel-unknown-none/release/libprogram_result_abi_minimal cargo +nightly-2026-09-19 test --locked --target-dir target-host --test test -- --nocapture --test-threads=1
RUST_LOG=off PROGRAM_PATH=target/sbf-deploy/program_result_abi_minimal cargo +nightly-2026-09-19 test --locked --target-dir target-host --test test -- --nocapture --test-threads=1
```

## Saved outputs

- [Aug 18 / Aug 19](artifacts/toolchain-comparison/): build/test logs, assembly, LLVM IR and CFG dumps
- [Solana](artifacts/sbf/): versions, build/test logs and disassembly
- [Build records](artifacts/toolchain-comparison/provenance.json): compiler versions and source, config, linker and ELF hashes

`dfe-before.dot` and `dfe-after.dot` show the assembly CFG before and after
dead-function elimination within each build. Compare the two nightly folders
to see the compiler-version difference.
