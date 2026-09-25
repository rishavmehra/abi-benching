.globl entrypoint

entrypoint:
  mov32 r7, 0xc
  ldxdw r3, [r1+0x8]
  jeq r3, 0x0, jmp_0340
  ldxb r2, [r1+0x10]
  jsgt32 r2, 0xb, jmp_0070
  jsgt32 r2, 0x6, jmp_00b8
  jeq32 r2, 0x0, jmp_0150
  jeq32 r2, 0x1, jmp_0270
  jeq32 r2, 0x3, jmp_0050
  ja jmp_0110

jmp_0050:
  mov64 r1, r10
  add64 r1, -0x8
  call fn_08a0
  ja jmp_02e8

jmp_0070:
  jsgt32 r2, 0x11, jmp_00f8
  jeq32 r2, 0xc, jmp_0210
  jeq32 r2, 0xf, jmp_0290
  jeq32 r2, 0x11, jmp_0098
  ja jmp_0110

jmp_0098:
  mov64 r1, r10
  add64 r1, -0x8
  call fn_0960
  ja jmp_02e8

jmp_00b8:
  jeq32 r2, 0x7, jmp_0230
  jeq32 r2, 0x8, jmp_02b0
  jeq32 r2, 0x9, jmp_00d8
  ja jmp_0110

jmp_00d8:
  mov64 r1, r10
  add64 r1, -0x8
  call fn_0900
  ja jmp_02e8

jmp_00f8:
  jeq32 r2, 0x12, jmp_0250
  jeq32 r2, 0x14, jmp_02d0
  jeq32 r2, 0x16, jmp_0130

jmp_0110:
  mov64 r1, r10
  add64 r1, -0x8
  call fn_06b8
  ja jmp_02e8

jmp_0130:
  mov64 r1, r10
  add64 r1, -0x8
  call fn_09c0
  ja jmp_02e8

jmp_0150:
  mov32 r7, 0xc
  jslt r3, 0x7, jmp_0308
  ldxb r2, [r1+0x11]
  jgt32 r2, 0x1, jmp_0308
  mov32 r7, 0x6
  ldxb r2, [r1+0x12]
  jne32 r2, 0x0, jmp_0308
  mov32 r7, 0x0
  ldxb r2, [r1+0x13]
  jne32 r2, 0x1, jmp_0308
  ldxb r2, [r1+0x14]
  jne32 r2, 0x1, jmp_0350
  ldxb r2, [r1+0x15]
  jeq32 r2, 0x1, jmp_01c8
  ja jmp_0388

jmp_01c8:
  ldxb r1, [r1+0x16]
  jeq32 r1, 0x0, jmp_02f8
  lddw r1, str_0000
  mov64 r2, 0xd
  call sol_log_

jmp_01f8:
  lddw r0, 0x800000000
  ja jmp_0348

jmp_0210:
  mov64 r1, r10
  add64 r1, -0x8
  call fn_0920
  ja jmp_02e8

jmp_0230:
  mov64 r1, r10
  add64 r1, -0x8
  call fn_08c0
  ja jmp_02e8

jmp_0250:
  mov64 r1, r10
  add64 r1, -0x8
  call fn_0980
  ja jmp_02e8

jmp_0270:
  mov64 r1, r10
  add64 r1, -0x8
  call fn_0880
  ja jmp_02e8

jmp_0290:
  mov64 r1, r10
  add64 r1, -0x8
  call fn_0940
  ja jmp_02e8

jmp_02b0:
  mov64 r1, r10
  add64 r1, -0x8
  call fn_08e0
  ja jmp_02e8

jmp_02d0:
  mov64 r1, r10
  add64 r1, -0x8
  call fn_09a0

jmp_02e8:
  ldxw r6, [r10-0x8]
  jne32 r6, -0x1, jmp_03c0

jmp_02f8:
  mov64 r0, 0x0
  ja jmp_0348

jmp_0308:
  lddw r1, str_0000
  mov64 r2, 0xd
  call sol_log_

jmp_0328:
  lddw r0, 0x100000000
  jeq32 r7, 0x0, jmp_0348

jmp_0340:
  mov64 r0, r7

jmp_0348:
  exit

jmp_0350:
  lddw r1, str_0000
  mov64 r2, 0xd
  call sol_log_

jmp_0370:
  lddw r0, 0x700000000
  ja jmp_0348

jmp_0388:
  lddw r1, str_0000
  mov64 r2, 0xd
  call sol_log_

jmp_03a8:
  lddw r0, 0x400000000
  ja jmp_0348

jmp_03c0:
  ldxw r7, [r10-0x4]
  lddw r1, str_0000
  mov64 r2, 0xd
  call sol_log_
  jsgt32 r6, 0xc, jmp_0438
  jsgt32 r6, 0x5, jmp_0470
  jsgt32 r6, 0x2, jmp_0520
  jeq32 r6, 0x0, jmp_0328
  lddw r0, 0x200000000
  jeq32 r6, 0x1, jmp_0348
  lddw r0, 0x300000000
  ja jmp_0348

jmp_0438:
  jsgt32 r6, 0x12, jmp_04a0
  jsgt32 r6, 0xf, jmp_0548
  jeq32 r6, 0xd, jmp_05b0
  jeq32 r6, 0xe, jmp_05c8
  lddw r0, 0x1000000000
  ja jmp_0348

jmp_0470:
  jsgt32 r6, 0x8, jmp_04d0
  jeq32 r6, 0x6, jmp_0370
  jeq32 r6, 0x7, jmp_01f8
  lddw r0, 0x900000000
  ja jmp_0348

jmp_04a0:
  jsgt32 r6, 0x15, jmp_04f8
  jeq32 r6, 0x13, jmp_05e0
  jeq32 r6, 0x14, jmp_05f8
  lddw r0, 0x1600000000
  ja jmp_0348

jmp_04d0:
  jsgt32 r6, 0xa, jmp_0570
  jeq32 r6, 0x9, jmp_0610
  lddw r0, 0xb00000000
  ja jmp_0348

jmp_04f8:
  jsgt32 r6, 0x17, jmp_0590
  jeq32 r6, 0x16, jmp_0628
  lddw r0, 0x1800000000
  ja jmp_0348

jmp_0520:
  jeq32 r6, 0x3, jmp_03a8
  jeq32 r6, 0x4, jmp_0640
  lddw r0, 0x600000000
  ja jmp_0348

jmp_0548:
  jeq32 r6, 0x10, jmp_0658
  jeq32 r6, 0x11, jmp_0670
  lddw r0, 0x1300000000
  ja jmp_0348

jmp_0570:
  jeq32 r6, 0xb, jmp_0688
  lddw r0, 0xd00000000
  ja jmp_0348

jmp_0590:
  jeq32 r6, 0x18, jmp_06a0
  lddw r0, 0x1a00000000
  ja jmp_0348

jmp_05b0:
  lddw r0, 0xe00000000
  ja jmp_0348

jmp_05c8:
  lddw r0, 0xf00000000
  ja jmp_0348

jmp_05e0:
  lddw r0, 0x1400000000
  ja jmp_0348

jmp_05f8:
  lddw r0, 0x1500000000
  ja jmp_0348

jmp_0610:
  lddw r0, 0xa00000000
  ja jmp_0348

jmp_0628:
  lddw r0, 0x1700000000
  ja jmp_0348

jmp_0640:
  lddw r0, 0x500000000
  ja jmp_0348

jmp_0658:
  lddw r0, 0x1100000000
  ja jmp_0348

jmp_0670:
  lddw r0, 0x1200000000
  ja jmp_0348

jmp_0688:
  lddw r0, 0xc00000000
  ja jmp_0348

jmp_06a0:
  lddw r0, 0x1900000000
  ja jmp_0348

fn_06b8:
  and32 r2, 0xff
  jsgt32 r2, 0xd, jmp_0700
  jsgt32 r2, 0x5, jmp_0738
  jeq32 r2, 0x2, jmp_0830
  jeq32 r2, 0x4, jmp_0860
  jeq32 r2, 0x5, jmp_06f0
  ja jmp_07d0

jmp_06f0:
  call fn_0a20
  ja jmp_0878

jmp_0700:
  jsgt32 r2, 0x14, jmp_0768
  jeq32 r2, 0xe, jmp_0840
  jeq32 r2, 0x10, jmp_0870
  jeq32 r2, 0x13, jmp_0728
  ja jmp_07d0

jmp_0728:
  call fn_0b00
  ja jmp_0878

jmp_0738:
  jsgt32 r2, 0xa, jmp_0798
  jeq32 r2, 0x6, jmp_07f0
  jeq32 r2, 0xa, jmp_0758
  ja jmp_07d0

jmp_0758:
  call fn_0a60
  ja jmp_0878

jmp_0768:
  jsgt32 r2, 0x17, jmp_07c0
  jeq32 r2, 0x15, jmp_0800
  jeq32 r2, 0x17, jmp_0788
  ja jmp_07d0

jmp_0788:
  call fn_0b40
  ja jmp_0878

jmp_0798:
  jeq32 r2, 0xb, jmp_0810
  jeq32 r2, 0xd, jmp_07b0
  ja jmp_07d0

jmp_07b0:
  call fn_0aa0
  ja jmp_0878

jmp_07c0:
  jeq32 r2, 0x18, jmp_0820
  jeq32 r2, 0x19, jmp_0850

jmp_07d0:
  lddw r2, 0xc00000000
  stxdw [r1+0x0], r2
  ja jmp_0878

jmp_07f0:
  call fn_0a40
  ja jmp_0878

jmp_0800:
  call fn_0b20
  ja jmp_0878

jmp_0810:
  call fn_0a80
  ja jmp_0878

jmp_0820:
  call fn_0b60
  ja jmp_0878

jmp_0830:
  call fn_09e0
  ja jmp_0878

jmp_0840:
  call fn_0ac0
  ja jmp_0878

jmp_0850:
  call fn_0b80
  ja jmp_0878

jmp_0860:
  call fn_0a00
  ja jmp_0878

jmp_0870:
  call fn_0ae0

jmp_0878:
  exit

fn_0880:
  lddw r2, 0x100000000
  stxdw [r1+0x0], r2
  exit

fn_08a0:
  lddw r2, 0x300000000
  stxdw [r1+0x0], r2
  exit

fn_08c0:
  lddw r2, 0x700000000
  stxdw [r1+0x0], r2
  exit

fn_08e0:
  lddw r2, 0x800000000
  stxdw [r1+0x0], r2
  exit

fn_0900:
  lddw r2, 0x900000000
  stxdw [r1+0x0], r2
  exit

fn_0920:
  lddw r2, 0xc00000000
  stxdw [r1+0x0], r2
  exit

fn_0940:
  lddw r2, 0xf00000000
  stxdw [r1+0x0], r2
  exit

fn_0960:
  lddw r2, 0x1100000000
  stxdw [r1+0x0], r2
  exit

fn_0980:
  lddw r2, 0x1200000000
  stxdw [r1+0x0], r2
  exit

fn_09a0:
  lddw r2, 0x1400000000
  stxdw [r1+0x0], r2
  exit

fn_09c0:
  lddw r2, 0x1600000000
  stxdw [r1+0x0], r2
  exit

fn_09e0:
  lddw r2, 0x200000000
  stxdw [r1+0x0], r2
  exit

fn_0a00:
  lddw r2, 0x400000000
  stxdw [r1+0x0], r2
  exit

fn_0a20:
  lddw r2, 0x500000000
  stxdw [r1+0x0], r2
  exit

fn_0a40:
  lddw r2, 0x600000000
  stxdw [r1+0x0], r2
  exit

fn_0a60:
  lddw r2, 0xa00000000
  stxdw [r1+0x0], r2
  exit

fn_0a80:
  lddw r2, 0xb00000000
  stxdw [r1+0x0], r2
  exit

fn_0aa0:
  lddw r2, 0xd00000000
  stxdw [r1+0x0], r2
  exit

fn_0ac0:
  lddw r2, 0xe00000000
  stxdw [r1+0x0], r2
  exit

fn_0ae0:
  lddw r2, 0x1000000000
  stxdw [r1+0x0], r2
  exit

fn_0b00:
  lddw r2, 0x1300000000
  stxdw [r1+0x0], r2
  exit

fn_0b20:
  lddw r2, 0x1500000000
  stxdw [r1+0x0], r2
  exit

fn_0b40:
  lddw r2, 0x1700000000
  stxdw [r1+0x0], r2
  exit

fn_0b60:
  lddw r2, 0x1800000000
  stxdw [r1+0x0], r2
  exit

fn_0b80:
  lddw r2, 0x1900000000
  stxdw [r1+0x0], r2
  exit

.rodata
  str_0000: .ascii "program error"
