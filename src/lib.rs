#![cfg_attr(any(target_arch = "bpf", target_arch = "sbf"), no_std)]

#[cfg(any(target_arch = "bpf", target_arch = "sbf"))]
#[panic_handler]
fn panic(_: &core::panic::PanicInfo) -> ! {
    loop {}
}

// Pinocchio 0.9.3 variant order and payload, without the dependency.
#[derive(Clone, Copy, Debug, Eq, PartialEq)]
pub enum ProgramError {
    Custom(u32),

    InvalidArgument,

    InvalidInstructionData,

    InvalidAccountData,

    AccountDataTooSmall,

    InsufficientFunds,

    IncorrectProgramId,

    MissingRequiredSignature,

    AccountAlreadyInitialized,

    UninitializedAccount,

    NotEnoughAccountKeys,

    AccountBorrowFailed,

    MaxSeedLengthExceeded,

    InvalidSeeds,

    BorshIoError,

    AccountNotRentExempt,

    UnsupportedSysvar,

    IllegalOwner,

    MaxAccountsDataAllocationsExceeded,

    InvalidRealloc,

    MaxInstructionTraceLengthExceeded,

    BuiltinProgramsMustConsumeComputeUnits,

    InvalidAccountOwner,

    ArithmeticOverflow,

    Immutable,

    IncorrectAuthority,
}

type ProgramResult = Result<(), ProgramError>;

impl From<ProgramError> for u64 {
    fn from(error: ProgramError) -> u64 {
        match error {
            ProgramError::Custom(0) => 1 << 32,
            ProgramError::Custom(code) => code as u64,
            ProgramError::InvalidArgument => 2 << 32,
            ProgramError::InvalidInstructionData => 3 << 32,
            ProgramError::InvalidAccountData => 4 << 32,
            ProgramError::AccountDataTooSmall => 5 << 32,
            ProgramError::InsufficientFunds => 6 << 32,
            ProgramError::IncorrectProgramId => 7 << 32,
            ProgramError::MissingRequiredSignature => 8 << 32,
            ProgramError::AccountAlreadyInitialized => 9 << 32,
            ProgramError::UninitializedAccount => 10 << 32,
            ProgramError::NotEnoughAccountKeys => 11 << 32,
            ProgramError::AccountBorrowFailed => 12 << 32,
            ProgramError::MaxSeedLengthExceeded => 13 << 32,
            ProgramError::InvalidSeeds => 14 << 32,
            ProgramError::BorshIoError => 15 << 32,
            ProgramError::AccountNotRentExempt => 16 << 32,
            ProgramError::UnsupportedSysvar => 17 << 32,
            ProgramError::IllegalOwner => 18 << 32,
            ProgramError::MaxAccountsDataAllocationsExceeded => 19 << 32,
            ProgramError::InvalidRealloc => 20 << 32,
            ProgramError::MaxInstructionTraceLengthExceeded => 21 << 32,
            ProgramError::BuiltinProgramsMustConsumeComputeUnits => 22 << 32,
            ProgramError::InvalidAccountOwner => 23 << 32,
            ProgramError::ArithmeticOverflow => 24 << 32,
            ProgramError::Immutable => 25 << 32,
            ProgramError::IncorrectAuthority => 26 << 32,
        }
    }
}

const INVALID_INSTRUCTION: ProgramError = ProgramError::Custom(12);

#[no_mangle]
pub unsafe extern "C" fn entrypoint(input: *mut u8) -> u64 {
    // Serialized input: zero accounts, instruction length, instruction bytes.
    let len = input.add(8).cast::<u64>().read_unaligned() as usize;
    let instruction_data = core::slice::from_raw_parts(input.add(16), len);

    match process_instruction(instruction_data) {
        Ok(()) => 0,
        Err(error) => error.into(),
    }
}

#[inline(always)]
fn process_instruction(instruction_data: &[u8]) -> ProgramResult {
    let [discriminator, instruction_data @ ..] = instruction_data else {
        return Err(INVALID_INSTRUCTION);
    };

    let result = match *discriminator {
        0 => success_path(instruction_data),
        1 => error::<1>(),
        3 => error::<3>(),
        7 => error::<7>(),
        8 => error::<8>(),
        9 => error::<9>(),
        12 => error::<12>(),
        15 => error::<15>(),
        17 => error::<17>(),
        18 => error::<18>(),
        20 => error::<20>(),
        22 => error::<22>(),
        discriminator => remaining_instruction(discriminator),
    };

    result.inspect_err(log_error)
}

#[inline(always)]
fn success_path(data: &[u8]) -> ProgramResult {
    let [option, initialized, rent_exempt, owner, writable, signer, _remaining @ ..] = data else {
        return Err(INVALID_INSTRUCTION);
    };

    match *option {
        0 | 1 => {}
        _ => return Err(INVALID_INSTRUCTION),
    }
    if *initialized != 0 {
        return Err(ProgramError::Custom(6));
    }
    if *rent_exempt != 1 {
        return Err(ProgramError::Custom(0));
    }
    if *owner != 1 {
        return Err(ProgramError::IncorrectProgramId);
    }
    if *writable != 1 {
        return Err(ProgramError::InvalidAccountData);
    }
    if *signer != 0 {
        return Err(ProgramError::MissingRequiredSignature);
    }

    Ok(())
}

#[inline(never)]
fn error<const CODE: u8>() -> ProgramResult {
    Err(ProgramError::Custom(CODE as u32))
}

#[inline(never)]
fn remaining_instruction(discriminator: u8) -> ProgramResult {
    match discriminator {
        2 => error::<2>(),
        4 => error::<4>(),
        5 => error::<5>(),
        6 => error::<6>(),
        10 => error::<10>(),
        11 => error::<11>(),
        13 => error::<13>(),
        14 => error::<14>(),
        16 => error::<16>(),
        19 => error::<19>(),
        21 => error::<21>(),
        23 => error::<23>(),
        24 => error::<24>(),
        25 => error::<25>(),
        _ => Err(INVALID_INSTRUCTION),
    }
}

#[cold]
fn log_error(_error: &ProgramError) {
    #[cfg(any(target_arch = "bpf", target_arch = "sbf"))]
    unsafe {
        // Static Solana sol_log_ syscall, matching the original repro.
        let log: extern "C" fn(*const u8, u64) = core::mem::transmute(0x207559bdu64);
        log(b"program error".as_ptr(), 13);
    }
}
