.globl entrypoint

entrypoint:
  mov64 r0, 0xc
  ldxdw r3, [r1+0x8]
  jeq r3, 0x0, jmp_01b8
  ldxb r2, [r1+0x10]
  jne32 r2, 0x0, jmp_00b8
  jlt r3, 0x7, jmp_01b8
  mov64 r3, 0xc
  ldxb r2, [r1+0x11]
  jgt32 r2, 0x1, jmp_0188
  mov64 r3, 0x6
  ldxb r2, [r1+0x12]
  jne32 r2, 0x0, jmp_0188
  ldxb r2, [r1+0x13]
  jne32 r2, 0x1, jmp_0300
  ldxb r2, [r1+0x14]
  jeq32 r2, 0x1, jmp_0450
  lddw r1, str_0000
  mov64 r2, 0xd
  call sol_log_

jmp_00a0:
  lddw r0, 0x700000000
  ja jmp_01b8

jmp_00b8:
  mov32 r1, r2
  call fn_04e8
  mov64 r6, r0
  mov64 r0, 0x0
  jeq32 r6, -0x1, jmp_01b8
  lddw r1, str_0000
  mov64 r2, 0xd
  call sol_log_
  jsgt32 r6, 0xc, jmp_0150
  jsgt32 r6, 0x5, jmp_01c0
  jsgt32 r6, 0x2, jmp_0270
  jeq32 r6, 0x0, jmp_0350
  lddw r0, 0x200000000
  jeq32 r6, 0x1, jmp_01b8
  lddw r0, 0x300000000
  ja jmp_01b8

jmp_0150:
  jsgt32 r6, 0x12, jmp_01f0
  jsgt32 r6, 0xf, jmp_0298
  jeq32 r6, 0xd, jmp_0360
  jeq32 r6, 0xe, jmp_0408
  lddw r0, 0x1000000000
  ja jmp_01b8

jmp_0188:
  lddw r1, str_0000
  mov64 r2, 0xd
  mov64 r6, r3
  call sol_log_

jmp_01b0:
  mov64 r0, r6

jmp_01b8:
  exit

jmp_01c0:
  jsgt32 r6, 0x8, jmp_0220
  jeq32 r6, 0x6, jmp_00a0
  jeq32 r6, 0x7, jmp_04d0
  lddw r0, 0x900000000
  ja jmp_01b8

jmp_01f0:
  jsgt32 r6, 0x15, jmp_0248
  jeq32 r6, 0x13, jmp_0338
  jeq32 r6, 0x14, jmp_0390
  lddw r0, 0x1600000000
  ja jmp_01b8

jmp_0220:
  jsgt32 r6, 0xa, jmp_02c0
  jeq32 r6, 0x9, jmp_03a8
  lddw r0, 0xb00000000
  ja jmp_01b8

jmp_0248:
  jsgt32 r6, 0x17, jmp_02e0
  jeq32 r6, 0x16, jmp_03c0
  lddw r0, 0x1800000000
  ja jmp_01b8

jmp_0270:
  jeq32 r6, 0x3, jmp_0480
  jeq32 r6, 0x4, jmp_0420
  lddw r0, 0x600000000
  ja jmp_01b8

jmp_0298:
  jeq32 r6, 0x10, jmp_0378
  jeq32 r6, 0x11, jmp_0438
  lddw r0, 0x1300000000
  ja jmp_01b8

jmp_02c0:
  jeq32 r6, 0xb, jmp_03d8
  lddw r0, 0xd00000000
  ja jmp_01b8

jmp_02e0:
  jeq32 r6, 0x18, jmp_03f0
  lddw r0, 0x1a00000000
  ja jmp_01b8

jmp_0300:
  lddw r1, str_0000
  mov64 r2, 0xd
  call sol_log_
  lddw r0, 0x100000000
  ja jmp_01b8

jmp_0338:
  lddw r0, 0x1400000000
  ja jmp_01b8

jmp_0350:
  rsh64 r6, 0x20
  ja jmp_01b0

jmp_0360:
  lddw r0, 0xe00000000
  ja jmp_01b8

jmp_0378:
  lddw r0, 0x1100000000
  ja jmp_01b8

jmp_0390:
  lddw r0, 0x1500000000
  ja jmp_01b8

jmp_03a8:
  lddw r0, 0xa00000000
  ja jmp_01b8

jmp_03c0:
  lddw r0, 0x1700000000
  ja jmp_01b8

jmp_03d8:
  lddw r0, 0xc00000000
  ja jmp_01b8

jmp_03f0:
  lddw r0, 0x1900000000
  ja jmp_01b8

jmp_0408:
  lddw r0, 0xf00000000
  ja jmp_01b8

jmp_0420:
  lddw r0, 0x500000000
  ja jmp_01b8

jmp_0438:
  lddw r0, 0x1200000000
  ja jmp_01b8

jmp_0450:
  ldxb r2, [r1+0x15]
  jeq32 r2, 0x1, jmp_0498
  lddw r1, str_0000
  mov64 r2, 0xd
  call sol_log_

jmp_0480:
  lddw r0, 0x400000000
  ja jmp_01b8

jmp_0498:
  mov64 r0, 0x0
  ldxb r1, [r1+0x16]
  jeq32 r1, 0x0, jmp_01b8
  lddw r1, str_0000
  mov64 r2, 0xd
  call sol_log_

jmp_04d0:
  lddw r0, 0x800000000
  ja jmp_01b8

fn_04e8:
  and32 r1, 0xff
  mov64 r0, r1
  lsh64 r0, 0x20
  jlt32 r1, 0x1a, jmp_0518
  lddw r0, 0xc00000000

jmp_0518:
  exit

.rodata
  str_0000: .ascii "program error"
