.globl entrypoint

fn_0000:
  mov64 r0, r1
  and64 r1, 0xff
  jlt r1, 0x1a, jmp_0020
  mov64 r0, 0xc

jmp_0020:
  and64 r0, 0xff
  exit

entrypoint:
  mov64 r0, 0xc
  ldxdw r3, [r1+0x8]
  jeq r3, 0x0, jmp_03f8
  ldxb r2, [r1+0x10]
  jeq r2, 0x0, jmp_00d8
  mov64 r1, r2
  call fn_0000
  mov64 r6, 0x0

jmp_0070:
  mov64 r7, r0
  lddw r1, str_0008
  mov64 r2, 0xd
  call sol_log_
  jsle r6, 0xc, jmp_0170

jmp_00a0:
  jsgt r6, 0x13, jmp_01a8
  jsle r6, 0xf, jmp_0208
  jsgt r6, 0x11, jmp_02a8
  jne r6, 0x10, jmp_0388
  lddw r0, 0x1100000000
  ja jmp_0408

jmp_00d8:
  jle r3, 0x6, jmp_03f8
  mov64 r6, 0x0
  ldxb r2, [r1+0x11]
  jgt r2, 0x1, jmp_0070
  mov64 r0, 0x6
  ldxb r2, [r1+0x12]
  jne r2, 0x0, jmp_0070
  ldxb r2, [r1+0x13]
  mov64 r0, 0x0
  jne r2, 0x1, jmp_0070
  ldxb r2, [r1+0x14]
  jne r2, 0x1, jmp_04b8
  ldxb r2, [r1+0x15]
  jne r2, 0x1, jmp_04c8
  mov64 r6, 0x7
  ldxb r1, [r1+0x16]
  jne r1, 0x0, jmp_0070
  mov64 r6, 0x1a
  jsgt r6, 0xc, jmp_00a0

jmp_0170:
  jsle r6, 0x5, jmp_01d8
  jsle r6, 0x8, jmp_0258
  jsgt r6, 0xa, jmp_02f0
  jne r6, 0x9, jmp_0440
  lddw r0, 0xa00000000
  ja jmp_0408

jmp_01a8:
  jsle r6, 0x16, jmp_0230
  jsgt r6, 0x18, jmp_02c8
  jne r6, 0x17, jmp_03a0
  lddw r0, 0x1800000000
  ja jmp_0408

jmp_01d8:
  jsgt r6, 0x2, jmp_0280
  jeq r6, 0x0, jmp_03d0
  jne r6, 0x1, jmp_0470
  lddw r0, 0x200000000
  ja jmp_0408

jmp_0208:
  jeq r6, 0xd, jmp_0310
  jne r6, 0xe, jmp_0358
  lddw r0, 0xf00000000
  ja jmp_0408

jmp_0230:
  jeq r6, 0x14, jmp_0328
  jne r6, 0x15, jmp_0370
  lddw r0, 0x1600000000
  ja jmp_0408

jmp_0258:
  jeq r6, 0x6, jmp_0340
  jne r6, 0x7, jmp_0428
  lddw r0, 0x800000000
  ja jmp_0408

jmp_0280:
  jeq r6, 0x3, jmp_0410
  jne r6, 0x4, jmp_0488
  lddw r0, 0x500000000
  ja jmp_0408

jmp_02a8:
  jne r6, 0x12, jmp_03b8
  lddw r0, 0x1300000000
  ja jmp_0408

jmp_02c8:
  mov64 r0, 0x0
  jne r6, 0x19, jmp_0408
  lddw r0, 0x1a00000000
  ja jmp_0408

jmp_02f0:
  jne r6, 0xb, jmp_0458
  lddw r0, 0xc00000000
  ja jmp_0408

jmp_0310:
  lddw r0, 0xe00000000
  ja jmp_0408

jmp_0328:
  lddw r0, 0x1500000000
  ja jmp_0408

jmp_0340:
  lddw r0, 0x700000000
  ja jmp_0408

jmp_0358:
  lddw r0, 0x1000000000
  ja jmp_0408

jmp_0370:
  lddw r0, 0x1700000000
  ja jmp_0408

jmp_0388:
  lddw r0, 0x1200000000
  ja jmp_0408

jmp_03a0:
  lddw r0, 0x1900000000
  ja jmp_0408

jmp_03b8:
  lddw r0, 0x1400000000
  ja jmp_0408

jmp_03d0:
  mov64 r0, r7
  mov64 r1, r0
  lsh64 r1, 0x20
  rsh64 r1, 0x20
  jeq r1, 0x0, jmp_04a0

jmp_03f8:
  lsh64 r0, 0x20
  rsh64 r0, 0x20

jmp_0408:
  exit

jmp_0410:
  lddw r0, 0x400000000
  ja jmp_0408

jmp_0428:
  lddw r0, 0x900000000
  ja jmp_0408

jmp_0440:
  lddw r0, 0xb00000000
  ja jmp_0408

jmp_0458:
  lddw r0, 0xd00000000
  ja jmp_0408

jmp_0470:
  lddw r0, 0x300000000
  ja jmp_0408

jmp_0488:
  lddw r0, 0x600000000
  ja jmp_0408

jmp_04a0:
  lddw r0, data_0000
  ja jmp_0408

jmp_04b8:
  mov64 r6, 0x6
  ja jmp_0070

jmp_04c8:
  mov64 r6, 0x3
  ja jmp_0070

.rodata
  data_0000: .quad 0x0000000000000000
  str_0008: .ascii "program error"
