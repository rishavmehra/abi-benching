.globl entrypoint

entrypoint:
  mov32 r6, 0xc
  ldxdw r3, [r1+0x8]
  jeq r3, 0x0, jmp_0030
  ldxb r2, [r1+0x10]
  jne32 r2, 0x0, jmp_00f8
  jgt r3, 0x6, jmp_0040

jmp_0030:
  mov64 r0, r6
  ja jmp_04d0

jmp_0040:
  mov32 r6, 0xc
  ldxb r2, [r1+0x11]
  jgt32 r2, 0x1, jmp_01e0
  mov32 r6, 0x6
  ldxb r2, [r1+0x12]
  jne32 r2, 0x0, jmp_01e0
  mov32 r6, 0x0
  ldxb r2, [r1+0x13]
  jne32 r2, 0x1, jmp_01e0
  ldxb r2, [r1+0x14]
  jne32 r2, 0x1, jmp_0468
  ldxb r2, [r1+0x15]
  jeq32 r2, 0x1, jmp_00b0
  ja jmp_04a0

jmp_00b0:
  ldxb r1, [r1+0x16]
  jeq32 r1, 0x0, jmp_0120
  lddw r1, str_0000
  mov64 r2, 0xd
  call sol_log_

jmp_00e0:
  lddw r0, 0x800000000
  ja jmp_04d0

jmp_00f8:
  mov64 r1, r10
  add64 r1, -0x8
  call fn_04d8
  ldxw r7, [r10-0x8]
  jne32 r7, -0x1, jmp_0130

jmp_0120:
  mov64 r0, 0x0
  ja jmp_04d0

jmp_0130:
  ldxw r6, [r10-0x4]
  lddw r1, str_0000
  mov64 r2, 0xd
  call sol_log_
  jsgt32 r7, 0xc, jmp_01a8
  jsgt32 r7, 0x5, jmp_0220
  jsgt32 r7, 0x2, jmp_02d0
  jeq32 r7, 0x0, jmp_0200
  lddw r0, 0x200000000
  jeq32 r7, 0x1, jmp_04d0
  lddw r0, 0x300000000
  ja jmp_04d0

jmp_01a8:
  jsgt32 r7, 0x12, jmp_0250
  jsgt32 r7, 0xf, jmp_02f8
  jeq32 r7, 0xd, jmp_0378
  jeq32 r7, 0xe, jmp_0420
  lddw r0, 0x1000000000
  ja jmp_04d0

jmp_01e0:
  lddw r1, str_0000
  mov64 r2, 0xd
  call sol_log_

jmp_0200:
  lddw r0, 0x100000000
  jeq32 r6, 0x0, jmp_04d0
  ja jmp_0030

jmp_0220:
  jsgt32 r7, 0x8, jmp_0280
  jeq32 r7, 0x6, jmp_0488
  jeq32 r7, 0x7, jmp_00e0
  lddw r0, 0x900000000
  ja jmp_04d0

jmp_0250:
  jsgt32 r7, 0x15, jmp_02a8
  jeq32 r7, 0x13, jmp_0360
  jeq32 r7, 0x14, jmp_03a8
  lddw r0, 0x1600000000
  ja jmp_04d0

jmp_0280:
  jsgt32 r7, 0xa, jmp_0320
  jeq32 r7, 0x9, jmp_03c0
  lddw r0, 0xb00000000
  ja jmp_04d0

jmp_02a8:
  jsgt32 r7, 0x17, jmp_0340
  jeq32 r7, 0x16, jmp_03d8
  lddw r0, 0x1800000000
  ja jmp_04d0

jmp_02d0:
  jeq32 r7, 0x3, jmp_04c0
  jeq32 r7, 0x4, jmp_0438
  lddw r0, 0x600000000
  ja jmp_04d0

jmp_02f8:
  jeq32 r7, 0x10, jmp_0390
  jeq32 r7, 0x11, jmp_0450
  lddw r0, 0x1300000000
  ja jmp_04d0

jmp_0320:
  jeq32 r7, 0xb, jmp_03f0
  lddw r0, 0xd00000000
  ja jmp_04d0

jmp_0340:
  jeq32 r7, 0x18, jmp_0408
  lddw r0, 0x1a00000000
  ja jmp_04d0

jmp_0360:
  lddw r0, 0x1400000000
  ja jmp_04d0

jmp_0378:
  lddw r0, 0xe00000000
  ja jmp_04d0

jmp_0390:
  lddw r0, 0x1100000000
  ja jmp_04d0

jmp_03a8:
  lddw r0, 0x1500000000
  ja jmp_04d0

jmp_03c0:
  lddw r0, 0xa00000000
  ja jmp_04d0

jmp_03d8:
  lddw r0, 0x1700000000
  ja jmp_04d0

jmp_03f0:
  lddw r0, 0xc00000000
  ja jmp_04d0

jmp_0408:
  lddw r0, 0x1900000000
  ja jmp_04d0

jmp_0420:
  lddw r0, 0xf00000000
  ja jmp_04d0

jmp_0438:
  lddw r0, 0x500000000
  ja jmp_04d0

jmp_0450:
  lddw r0, 0x1200000000
  ja jmp_04d0

jmp_0468:
  lddw r1, str_0000
  mov64 r2, 0xd
  call sol_log_

jmp_0488:
  lddw r0, 0x700000000
  ja jmp_04d0

jmp_04a0:
  lddw r1, str_0000
  mov64 r2, 0xd
  call sol_log_

jmp_04c0:
  lddw r0, 0x400000000

jmp_04d0:
  exit

fn_04d8:
  mov32 r3, r2
  and32 r3, 0xff
  jlt32 r3, 0x1a, jmp_04f8
  mov32 r2, 0xc

jmp_04f8:
  and32 r2, 0xff
  stxw [r1+0x4], r2
  stw [r1+0x0], 0x0
  exit

.rodata
  str_0000: .ascii "program error"
