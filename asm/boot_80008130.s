.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_80008130
/* 008D30 80008130 27BDFF40 */  addiu $sp, $sp, -0xc0
/* 008D34 80008134 AFBF0044 */  sw    $ra, 0x44($sp)
/* 008D38 80008138 AFB50040 */  sw    $s5, 0x40($sp)
/* 008D3C 8000813C AFB4003C */  sw    $s4, 0x3c($sp)
/* 008D40 80008140 AFB30038 */  sw    $s3, 0x38($sp)
/* 008D44 80008144 AFB20034 */  sw    $s2, 0x34($sp)
/* 008D48 80008148 AFB10030 */  sw    $s1, 0x30($sp)
/* 008D4C 8000814C AFB0002C */  sw    $s0, 0x2c($sp)
/* 008D50 80008150 F7B60020 */  sdc1  $f22, 0x20($sp)
/* 008D54 80008154 F7B40018 */  sdc1  $f20, 0x18($sp)
/* 008D58 80008158 AFA500C4 */  sw    $a1, 0xc4($sp)
/* 008D5C 8000815C 8C820024 */  lw    $v0, 0x24($a0)
/* 008D60 80008160 00803025 */  move  $a2, $a0
/* 008D64 80008164 27B200A0 */  addiu $s2, $sp, 0xa0
/* 008D68 80008168 04410004 */  bgez  $v0, .L8000817C
/* 008D6C 8000816C D4940000 */   ldc1  $f20, ($a0)
/* 008D70 80008170 240E0006 */  li    $t6, 6
/* 008D74 80008174 1000000A */  b     .L800081A0
/* 008D78 80008178 AC8E0024 */   sw    $t6, 0x24($a0)
.L8000817C:
/* 008D7C 8000817C 14400008 */  bnez  $v0, .L800081A0
/* 008D80 80008180 93AF00C7 */   lbu   $t7, 0xc7($sp)
/* 008D84 80008184 24010067 */  li    $at, 103
/* 008D88 80008188 11E10003 */  beq   $t7, $at, .L80008198
/* 008D8C 8000818C AFAF0050 */   sw    $t7, 0x50($sp)
/* 008D90 80008190 24010047 */  li    $at, 71
/* 008D94 80008194 15E10002 */  bne   $t7, $at, .L800081A0
.L80008198:
/* 008D98 80008198 24180001 */   li    $t8, 1
/* 008D9C 8000819C ACD80024 */  sw    $t8, 0x24($a2)
.L800081A0:
/* 008DA0 800081A0 27A4008A */  addiu $a0, $sp, 0x8a
/* 008DA4 800081A4 00C02825 */  move  $a1, $a2
/* 008DA8 800081A8 0C002170 */  jal   func_800085C0
/* 008DAC 800081AC AFA600C0 */   sw    $a2, 0xc0($sp)
/* 008DB0 800081B0 1840000F */  blez  $v0, .L800081F0
/* 008DB4 800081B4 24010002 */   li    $at, 2
/* 008DB8 800081B8 14410004 */  bne   $v0, $at, .L800081CC
/* 008DBC 800081BC 3C058001 */   lui   $a1, %hi(D_8001232C)
/* 008DC0 800081C0 3C058001 */  lui   $a1, %hi(D_80012328)
/* 008DC4 800081C4 10000002 */  b     .L800081D0
/* 008DC8 800081C8 24A52328 */   addiu $a1, %lo(D_80012328)
.L800081CC:
/* 008DCC 800081CC 24A5232C */  addiu $a1, %lo(D_8001232C)
.L800081D0:
/* 008DD0 800081D0 8FA200C0 */  lw    $v0, 0xc0($sp)
/* 008DD4 800081D4 24190003 */  li    $t9, 3
/* 008DD8 800081D8 24060003 */  li    $a2, 3
/* 008DDC 800081DC AC590014 */  sw    $t9, 0x14($v0)
/* 008DE0 800081E0 0C001846 */  jal   func_80006118
/* 008DE4 800081E4 8C440008 */   lw    $a0, 8($v0)
/* 008DE8 800081E8 100000EB */  b     .L80008598
/* 008DEC 800081EC 8FBF0044 */   lw    $ra, 0x44($sp)
.L800081F0:
/* 008DF0 800081F0 14400003 */  bnez  $v0, .L80008200
/* 008DF4 800081F4 00003825 */   move  $a3, $zero
/* 008DF8 800081F8 100000E0 */  b     .L8000857C
/* 008DFC 800081FC A7A0008A */   sh    $zero, 0x8a($sp)
.L80008200:
/* 008E00 80008200 4480B800 */  mtc1  $zero, $f23
/* 008E04 80008204 4480B000 */  mtc1  $zero, $f22
/* 008E08 80008208 93A800C7 */  lbu   $t0, 0xc7($sp)
/* 008E0C 8000820C 87A9008A */  lh    $t1, 0x8a($sp)
/* 008E10 80008210 4636A03C */  c.lt.d $f20, $f22
/* 008E14 80008214 24017597 */  li    $at, 30103
/* 008E18 80008218 240F0003 */  li    $t7, 3
/* 008E1C 8000821C 27B200A1 */  addiu $s2, $sp, 0xa1
/* 008E20 80008220 45000002 */  bc1f  .L8000822C
/* 008E24 80008224 AFA80050 */   sw    $t0, 0x50($sp)
/* 008E28 80008228 4620A507 */  neg.d $f20, $f20
.L8000822C:
/* 008E2C 8000822C 01210019 */  multu $t1, $at
/* 008E30 80008230 3C010001 */  lui   $at, (0x000186A0 >> 16) # lui $at, 1
/* 008E34 80008234 342186A0 */  ori   $at, (0x000186A0 & 0xFFFF) # ori $at, $at, 0x86a0
/* 008E38 80008238 00001825 */  move  $v1, $zero
/* 008E3C 8000823C 24050006 */  li    $a1, 6
/* 008E40 80008240 00005012 */  mflo  $t2
/* 008E44 80008244 00000000 */  nop   
/* 008E48 80008248 00000000 */  nop   
/* 008E4C 8000824C 0141001A */  div   $zero, $t2, $at
/* 008E50 80008250 00005812 */  mflo  $t3
/* 008E54 80008254 256CFFFC */  addiu $t4, $t3, -4
/* 008E58 80008258 000C6C00 */  sll   $t5, $t4, 0x10
/* 008E5C 8000825C 000D7403 */  sra   $t6, $t5, 0x10
/* 008E60 80008260 05C10018 */  bgez  $t6, .L800082C4
/* 008E64 80008264 A7AC008A */   sh    $t4, 0x8a($sp)
/* 008E68 80008268 000CC400 */  sll   $t8, $t4, 0x10
/* 008E6C 8000826C 0018CC03 */  sra   $t9, $t8, 0x10
/* 008E70 80008270 01F92023 */  subu  $a0, $t7, $t9
/* 008E74 80008274 2401FFFC */  li    $at, -4
/* 008E78 80008278 00811024 */  and   $v0, $a0, $at
/* 008E7C 8000827C 00024823 */  negu  $t1, $v0
/* 008E80 80008280 1840002C */  blez  $v0, .L80008334
/* 008E84 80008284 A7A9008A */   sh    $t1, 0x8a($sp)
/* 008E88 80008288 3C048001 */  lui   $a0, %hi(D_800122E0) # $a0, 0x8001
/* 008E8C 8000828C 248422E0 */  addiu $a0, %lo(D_800122E0) # addiu $a0, $a0, 0x22e0
.L80008290:
/* 008E90 80008290 304A0001 */  andi  $t2, $v0, 1
/* 008E94 80008294 11400006 */  beqz  $t2, .L800082B0
/* 008E98 80008298 00027043 */   sra   $t6, $v0, 1
/* 008E9C 8000829C 000358C0 */  sll   $t3, $v1, 3
/* 008EA0 800082A0 008B6821 */  addu  $t5, $a0, $t3
/* 008EA4 800082A4 D5A40000 */  ldc1  $f4, ($t5)
/* 008EA8 800082A8 4624A502 */  mul.d $f20, $f20, $f4
/* 008EAC 800082AC 00000000 */  nop   
.L800082B0:
/* 008EB0 800082B0 01C01025 */  move  $v0, $t6
/* 008EB4 800082B4 1DC0FFF6 */  bgtz  $t6, .L80008290
/* 008EB8 800082B8 24630001 */   addiu $v1, $v1, 1
/* 008EBC 800082BC 1000001E */  b     .L80008338
/* 008EC0 800082C0 8FAE0050 */   lw    $t6, 0x50($sp)
.L800082C4:
/* 008EC4 800082C4 87AC008A */  lh    $t4, 0x8a($sp)
/* 008EC8 800082C8 3C013FF0 */  li    $at, 0x3FF00000 # 0.000000
/* 008ECC 800082CC 00001825 */  move  $v1, $zero
/* 008ED0 800082D0 19800018 */  blez  $t4, .L80008334
/* 008ED4 800082D4 3198FFFC */   andi  $t8, $t4, 0xfffc
/* 008ED8 800082D8 00181400 */  sll   $v0, $t8, 0x10
/* 008EDC 800082DC 0018CC00 */  sll   $t9, $t8, 0x10
/* 008EE0 800082E0 44810800 */  mtc1  $at, $f1
/* 008EE4 800082E4 44800000 */  mtc1  $zero, $f0
/* 008EE8 800082E8 00194403 */  sra   $t0, $t9, 0x10
/* 008EEC 800082EC 00027C03 */  sra   $t7, $v0, 0x10
/* 008EF0 800082F0 A7B8008A */  sh    $t8, 0x8a($sp)
/* 008EF4 800082F4 1900000E */  blez  $t0, .L80008330
/* 008EF8 800082F8 01E01025 */   move  $v0, $t7
/* 008EFC 800082FC 3C048001 */  lui   $a0, %hi(D_800122E0) # $a0, 0x8001
/* 008F00 80008300 248422E0 */  addiu $a0, %lo(D_800122E0) # addiu $a0, $a0, 0x22e0
.L80008304:
/* 008F04 80008304 30490001 */  andi  $t1, $v0, 1
/* 008F08 80008308 11200006 */  beqz  $t1, .L80008324
/* 008F0C 8000830C 00026843 */   sra   $t5, $v0, 1
/* 008F10 80008310 000350C0 */  sll   $t2, $v1, 3
/* 008F14 80008314 008A5821 */  addu  $t3, $a0, $t2
/* 008F18 80008318 D5660000 */  ldc1  $f6, ($t3)
/* 008F1C 8000831C 46260002 */  mul.d $f0, $f0, $f6
/* 008F20 80008320 00000000 */  nop   
.L80008324:
/* 008F24 80008324 01A01025 */  move  $v0, $t5
/* 008F28 80008328 1DA0FFF6 */  bgtz  $t5, .L80008304
/* 008F2C 8000832C 24630001 */   addiu $v1, $v1, 1
.L80008330:
/* 008F30 80008330 4620A503 */  div.d $f20, $f20, $f0
.L80008334:
/* 008F34 80008334 8FAE0050 */  lw    $t6, 0x50($sp)
.L80008338:
/* 008F38 80008338 24010066 */  li    $at, 102
/* 008F3C 8000833C 8FAC00C0 */  lw    $t4, 0xc0($sp)
/* 008F40 80008340 15C10004 */  bne   $t6, $at, .L80008354
/* 008F44 80008344 24180030 */   li    $t8, 48
/* 008F48 80008348 87A5008A */  lh    $a1, 0x8a($sp)
/* 008F4C 8000834C 10000001 */  b     .L80008354
/* 008F50 80008350 24A5000A */   addiu $a1, $a1, 0xa
.L80008354:
/* 008F54 80008354 8D8F0024 */  lw    $t7, 0x24($t4)
/* 008F58 80008358 00AFA821 */  addu  $s5, $a1, $t7
/* 008F5C 8000835C 2AA10014 */  slti  $at, $s5, 0x14
/* 008F60 80008360 14200002 */  bnez  $at, .L8000836C
/* 008F64 80008364 00000000 */   nop   
/* 008F68 80008368 24150013 */  li    $s5, 19
.L8000836C:
/* 008F6C 8000836C 1AA00031 */  blez  $s5, .L80008434
/* 008F70 80008370 A3B800A0 */   sb    $t8, 0xa0($sp)
/* 008F74 80008374 4634B03C */  c.lt.d $f22, $f20
/* 008F78 80008378 24140030 */  li    $s4, 48
/* 008F7C 8000837C 27B30064 */  addiu $s3, $sp, 0x64
/* 008F80 80008380 4502002D */  bc1fl .L80008438
/* 008F84 80008384 87AD008A */   lh    $t5, 0x8a($sp)
/* 008F88 80008388 4620A20D */  trunc.w.d $f8, $f20
.L8000838C:
/* 008F8C 8000838C 26B5FFF8 */  addiu $s5, $s5, -8
/* 008F90 80008390 26520008 */  addiu $s2, $s2, 8
/* 008F94 80008394 44114000 */  mfc1  $s1, $f8
/* 008F98 80008398 1AA00008 */  blez  $s5, .L800083BC
/* 008F9C 8000839C 00000000 */   nop   
/* 008FA0 800083A0 44915000 */  mtc1  $s1, $f10
/* 008FA4 800083A4 3C018001 */  lui   $at, %hi(D_80012338)
/* 008FA8 800083A8 D4242338 */  ldc1  $f4, %lo(D_80012338)($at)
/* 008FAC 800083AC 46805421 */  cvt.d.w $f16, $f10
/* 008FB0 800083B0 4630A481 */  sub.d $f18, $f20, $f16
/* 008FB4 800083B4 46249502 */  mul.d $f20, $f18, $f4
/* 008FB8 800083B8 00000000 */  nop   
.L800083BC:
/* 008FBC 800083BC 1A200011 */  blez  $s1, .L80008404
/* 008FC0 800083C0 24100008 */   li    $s0, 8
/* 008FC4 800083C4 24100007 */  li    $s0, 7
/* 008FC8 800083C8 0600000E */  bltz  $s0, .L80008404
/* 008FCC 800083CC 02602025 */   move  $a0, $s3
.L800083D0:
/* 008FD0 800083D0 02202825 */  move  $a1, $s1
/* 008FD4 800083D4 0C001FE8 */  jal   func_80007FA0
/* 008FD8 800083D8 2406000A */   li    $a2, 10
/* 008FDC 800083DC 8FA80068 */  lw    $t0, 0x68($sp)
/* 008FE0 800083E0 2652FFFF */  addiu $s2, $s2, -1
/* 008FE4 800083E4 25090030 */  addiu $t1, $t0, 0x30
/* 008FE8 800083E8 A2490000 */  sb    $t1, ($s2)
/* 008FEC 800083EC 8FB10064 */  lw    $s1, 0x64($sp)
/* 008FF0 800083F0 5A200005 */  blezl $s1, .L80008408
/* 008FF4 800083F4 2610FFFF */   addiu $s0, $s0, -1
/* 008FF8 800083F8 2610FFFF */  addiu $s0, $s0, -1
/* 008FFC 800083FC 0603FFF4 */  bgezl $s0, .L800083D0
/* 009000 80008400 02602025 */   move  $a0, $s3
.L80008404:
/* 009004 80008404 2610FFFF */  addiu $s0, $s0, -1
.L80008408:
/* 009008 80008408 06000004 */  bltz  $s0, .L8000841C
.L8000840C:
/* 00900C 8000840C 2610FFFF */   addiu $s0, $s0, -1
/* 009010 80008410 2652FFFF */  addiu $s2, $s2, -1
/* 009014 80008414 0601FFFD */  bgez  $s0, .L8000840C
/* 009018 80008418 A2540000 */   sb    $s4, ($s2)
.L8000841C:
/* 00901C 8000841C 1AA00005 */  blez  $s5, .L80008434
/* 009020 80008420 26520008 */   addiu $s2, $s2, 8
/* 009024 80008424 4634B03C */  c.lt.d $f22, $f20
/* 009028 80008428 00000000 */  nop   
/* 00902C 8000842C 4503FFD7 */  bc1tl .L8000838C
/* 009030 80008430 4620A20D */   trunc.w.d $f8, $f20
.L80008434:
/* 009034 80008434 87AD008A */  lh    $t5, 0x8a($sp)
.L80008438:
/* 009038 80008438 93AC00A1 */  lbu   $t4, 0xa1($sp)
/* 00903C 8000843C 27AB00A0 */  addiu $t3, $sp, 0xa0
/* 009040 80008440 24020030 */  li    $v0, 48
/* 009044 80008444 024BA823 */  subu  $s5, $s2, $t3
/* 009048 80008448 25AE0007 */  addiu $t6, $t5, 7
/* 00904C 8000844C 26B5FFFF */  addiu $s5, $s5, -1
/* 009050 80008450 A7AE008A */  sh    $t6, 0x8a($sp)
/* 009054 80008454 144C0009 */  bne   $v0, $t4, .L8000847C
/* 009058 80008458 27B200A1 */   addiu $s2, $sp, 0xa1
/* 00905C 8000845C 87AF008A */  lh    $t7, 0x8a($sp)
.L80008460:
/* 009060 80008460 26520001 */  addiu $s2, $s2, 1
/* 009064 80008464 26B5FFFF */  addiu $s5, $s5, -1
/* 009068 80008468 25F8FFFF */  addiu $t8, $t7, -1
/* 00906C 8000846C A7B8008A */  sh    $t8, 0x8a($sp)
/* 009070 80008470 92590000 */  lbu   $t9, ($s2)
/* 009074 80008474 5059FFFA */  beql  $v0, $t9, .L80008460
/* 009078 80008478 87AF008A */   lh    $t7, 0x8a($sp)
.L8000847C:
/* 00907C 8000847C 8FA80050 */  lw    $t0, 0x50($sp)
/* 009080 80008480 24010066 */  li    $at, 102
/* 009084 80008484 8FAA00C0 */  lw    $t2, 0xc0($sp)
/* 009088 80008488 15010004 */  bne   $t0, $at, .L8000849C
/* 00908C 8000848C 8FA90050 */   lw    $t1, 0x50($sp)
/* 009090 80008490 87A5008A */  lh    $a1, 0x8a($sp)
/* 009094 80008494 10000009 */  b     .L800084BC
/* 009098 80008498 24A50001 */   addiu $a1, $a1, 1
.L8000849C:
/* 00909C 8000849C 24010065 */  li    $at, 101
/* 0090A0 800084A0 11210003 */  beq   $t1, $at, .L800084B0
/* 0090A4 800084A4 24010045 */   li    $at, 69
/* 0090A8 800084A8 15210003 */  bne   $t1, $at, .L800084B8
/* 0090AC 800084AC 00001025 */   move  $v0, $zero
.L800084B0:
/* 0090B0 800084B0 10000001 */  b     .L800084B8
/* 0090B4 800084B4 24020001 */   li    $v0, 1
.L800084B8:
/* 0090B8 800084B8 00402825 */  move  $a1, $v0
.L800084BC:
/* 0090BC 800084BC 8D4B0024 */  lw    $t3, 0x24($t2)
/* 0090C0 800084C0 00AB3821 */  addu  $a3, $a1, $t3
/* 0090C4 800084C4 00076C00 */  sll   $t5, $a3, 0x10
/* 0090C8 800084C8 000D3C03 */  sra   $a3, $t5, 0x10
/* 0090CC 800084CC 02A7082A */  slt   $at, $s5, $a3
/* 0090D0 800084D0 10200004 */  beqz  $at, .L800084E4
/* 0090D4 800084D4 00000000 */   nop   
/* 0090D8 800084D8 00153C00 */  sll   $a3, $s5, 0x10
/* 0090DC 800084DC 00076403 */  sra   $t4, $a3, 0x10
/* 0090E0 800084E0 01803825 */  move  $a3, $t4
.L800084E4:
/* 0090E4 800084E4 18E00025 */  blez  $a3, .L8000857C
/* 0090E8 800084E8 00F5082A */   slt   $at, $a3, $s5
/* 0090EC 800084EC 10200007 */  beqz  $at, .L8000850C
/* 0090F0 800084F0 00F21021 */   addu  $v0, $a3, $s2
/* 0090F4 800084F4 904F0000 */  lbu   $t7, ($v0)
/* 0090F8 800084F8 29E10035 */  slti  $at, $t7, 0x35
/* 0090FC 800084FC 54200004 */  bnezl $at, .L80008510
/* 009100 80008500 24050030 */   li    $a1, 48
/* 009104 80008504 10000003 */  b     .L80008514
/* 009108 80008508 24050039 */   li    $a1, 57
.L8000850C:
/* 00910C 8000850C 24050030 */  li    $a1, 48
.L80008510:
/* 009110 80008510 00F21021 */  addu  $v0, $a3, $s2
.L80008514:
/* 009114 80008514 9058FFFF */  lbu   $t8, -1($v0)
/* 009118 80008518 24E3FFFF */  addiu $v1, $a3, -1
/* 00911C 8000851C 00A02025 */  move  $a0, $a1
/* 009120 80008520 14B80009 */  bne   $a1, $t8, .L80008548
/* 009124 80008524 24010039 */   li    $at, 57
/* 009128 80008528 00721021 */  addu  $v0, $v1, $s2
.L8000852C:
/* 00912C 8000852C 9049FFFF */  lbu   $t1, -1($v0)
/* 009130 80008530 24E7FFFF */  addiu $a3, $a3, -1
/* 009134 80008534 0007CC00 */  sll   $t9, $a3, 0x10
/* 009138 80008538 2463FFFF */  addiu $v1, $v1, -1
/* 00913C 8000853C 2442FFFF */  addiu $v0, $v0, -1
/* 009140 80008540 1089FFFA */  beq   $a0, $t1, .L8000852C
/* 009144 80008544 00193C03 */   sra   $a3, $t9, 0x10
.L80008548:
/* 009148 80008548 14810004 */  bne   $a0, $at, .L8000855C
/* 00914C 8000854C 02431021 */   addu  $v0, $s2, $v1
/* 009150 80008550 904A0000 */  lbu   $t2, ($v0)
/* 009154 80008554 254B0001 */  addiu $t3, $t2, 1
/* 009158 80008558 A04B0000 */  sb    $t3, ($v0)
.L8000855C:
/* 00915C 8000855C 04610007 */  bgez  $v1, .L8000857C
/* 009160 80008560 87AC008A */   lh    $t4, 0x8a($sp)
/* 009164 80008564 24E70001 */  addiu $a3, $a3, 1
/* 009168 80008568 00076C00 */  sll   $t5, $a3, 0x10
/* 00916C 8000856C 258F0001 */  addiu $t7, $t4, 1
/* 009170 80008570 A7AF008A */  sh    $t7, 0x8a($sp)
/* 009174 80008574 000D3C03 */  sra   $a3, $t5, 0x10
/* 009178 80008578 2652FFFF */  addiu $s2, $s2, -1
.L8000857C:
/* 00917C 8000857C 87B8008A */  lh    $t8, 0x8a($sp)
/* 009180 80008580 8FA400C0 */  lw    $a0, 0xc0($sp)
/* 009184 80008584 93A500C7 */  lbu   $a1, 0xc7($sp)
/* 009188 80008588 02403025 */  move  $a2, $s2
/* 00918C 8000858C 0C00219E */  jal   func_80008678
/* 009190 80008590 AFB80010 */   sw    $t8, 0x10($sp)
/* 009194 80008594 8FBF0044 */  lw    $ra, 0x44($sp)
.L80008598:
/* 009198 80008598 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 00919C 8000859C D7B60020 */  ldc1  $f22, 0x20($sp)
/* 0091A0 800085A0 8FB0002C */  lw    $s0, 0x2c($sp)
/* 0091A4 800085A4 8FB10030 */  lw    $s1, 0x30($sp)
/* 0091A8 800085A8 8FB20034 */  lw    $s2, 0x34($sp)
/* 0091AC 800085AC 8FB30038 */  lw    $s3, 0x38($sp)
/* 0091B0 800085B0 8FB4003C */  lw    $s4, 0x3c($sp)
/* 0091B4 800085B4 8FB50040 */  lw    $s5, 0x40($sp)
/* 0091B8 800085B8 03E00008 */  jr    $ra
/* 0091BC 800085BC 27BD00C0 */   addiu $sp, $sp, 0xc0

glabel func_800085C0
/* 0091C0 800085C0 94A60000 */  lhu   $a2, ($a1)
/* 0091C4 800085C4 240107FF */  li    $at, 2047
/* 0091C8 800085C8 30C37FF0 */  andi  $v1, $a2, 0x7ff0
/* 0091CC 800085CC 00037103 */  sra   $t6, $v1, 4
/* 0091D0 800085D0 000E7C00 */  sll   $t7, $t6, 0x10
/* 0091D4 800085D4 000F1C03 */  sra   $v1, $t7, 0x10
/* 0091D8 800085D8 14610018 */  bne   $v1, $at, .L8000863C
/* 0091DC 800085DC 00000000 */   nop   
/* 0091E0 800085E0 A4800000 */  sh    $zero, ($a0)
/* 0091E4 800085E4 94B90000 */  lhu   $t9, ($a1)
/* 0091E8 800085E8 24030002 */  li    $v1, 2
/* 0091EC 800085EC 00031400 */  sll   $v0, $v1, 0x10
/* 0091F0 800085F0 3328000F */  andi  $t0, $t9, 0xf
/* 0091F4 800085F4 1500000A */  bnez  $t0, .L80008620
/* 0091F8 800085F8 00026403 */   sra   $t4, $v0, 0x10
/* 0091FC 800085FC 94A90002 */  lhu   $t1, 2($a1)
/* 009200 80008600 15200007 */  bnez  $t1, .L80008620
/* 009204 80008604 00000000 */   nop   
/* 009208 80008608 94AA0004 */  lhu   $t2, 4($a1)
/* 00920C 8000860C 15400004 */  bnez  $t2, .L80008620
/* 009210 80008610 00000000 */   nop   
/* 009214 80008614 94AB0006 */  lhu   $t3, 6($a1)
/* 009218 80008618 51600004 */  beql  $t3, $zero, .L8000862C
/* 00921C 8000861C 24030001 */   li    $v1, 1
.L80008620:
/* 009220 80008620 03E00008 */  jr    $ra
/* 009224 80008624 01801025 */   move  $v0, $t4
/* 009228 80008628 24030001 */  li    $v1, 1
.L8000862C:
/* 00922C 8000862C 00031400 */  sll   $v0, $v1, 0x10
/* 009230 80008630 00026403 */  sra   $t4, $v0, 0x10
/* 009234 80008634 03E00008 */  jr    $ra
/* 009238 80008638 01801025 */   move  $v0, $t4

.L8000863C:
/* 00923C 8000863C 18600007 */  blez  $v1, .L8000865C
/* 009240 80008640 30CD800F */   andi  $t5, $a2, 0x800f
/* 009244 80008644 35AE3FF0 */  ori   $t6, $t5, 0x3ff0
/* 009248 80008648 A4AE0000 */  sh    $t6, ($a1)
/* 00924C 8000864C 246FFC02 */  addiu $t7, $v1, -0x3fe
/* 009250 80008650 A48F0000 */  sh    $t7, ($a0)
/* 009254 80008654 03E00008 */  jr    $ra
/* 009258 80008658 2402FFFF */   li    $v0, -1

.L8000865C:
/* 00925C 8000865C 04610003 */  bgez  $v1, .L8000866C
/* 009260 80008660 00001025 */   move  $v0, $zero
/* 009264 80008664 03E00008 */  jr    $ra
/* 009268 80008668 24020002 */   li    $v0, 2

.L8000866C:
/* 00926C 8000866C A4800000 */  sh    $zero, ($a0)
/* 009270 80008670 03E00008 */  jr    $ra
/* 009274 80008674 00000000 */   nop   

glabel func_80008678
/* 009278 80008678 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00927C 8000867C AFA7002C */  sw    $a3, 0x2c($sp)
/* 009280 80008680 00077400 */  sll   $t6, $a3, 0x10
/* 009284 80008684 000E3C03 */  sra   $a3, $t6, 0x10
/* 009288 80008688 AFB10018 */  sw    $s1, 0x18($sp)
/* 00928C 8000868C AFB00014 */  sw    $s0, 0x14($sp)
/* 009290 80008690 00808025 */  move  $s0, $a0
/* 009294 80008694 00C08825 */  move  $s1, $a2
/* 009298 80008698 AFBF001C */  sw    $ra, 0x1c($sp)
/* 00929C 8000869C 1CE00004 */  bgtz  $a3, .L800086B0
/* 0092A0 800086A0 AFA50024 */   sw    $a1, 0x24($sp)
/* 0092A4 800086A4 3C118001 */  lui   $s1, %hi(D_80012330) # $s1, 0x8001
/* 0092A8 800086A8 26312330 */  addiu $s1, %lo(D_80012330) # addiu $s1, $s1, 0x2330
/* 0092AC 800086AC 24070001 */  li    $a3, 1
.L800086B0:
/* 0092B0 800086B0 93A30027 */  lbu   $v1, 0x27($sp)
/* 0092B4 800086B4 24020066 */  li    $v0, 102
/* 0092B8 800086B8 24040067 */  li    $a0, 103
/* 0092BC 800086BC 5043000E */  beql  $v0, $v1, .L800086F8
/* 0092C0 800086C0 87A80032 */   lh    $t0, 0x32($sp)
/* 0092C4 800086C4 10830003 */  beq   $a0, $v1, .L800086D4
/* 0092C8 800086C8 24010047 */   li    $at, 71
/* 0092CC 800086CC 146100A5 */  bne   $v1, $at, .L80008964
/* 0092D0 800086D0 00000000 */   nop   
.L800086D4:
/* 0092D4 800086D4 87A80032 */  lh    $t0, 0x32($sp)
/* 0092D8 800086D8 2901FFFC */  slti  $at, $t0, -4
/* 0092DC 800086DC 142000A1 */  bnez  $at, .L80008964
/* 0092E0 800086E0 00000000 */   nop   
/* 0092E4 800086E4 8E180024 */  lw    $t8, 0x24($s0)
/* 0092E8 800086E8 0118082A */  slt   $at, $t0, $t8
/* 0092EC 800086EC 1020009D */  beqz  $at, .L80008964
/* 0092F0 800086F0 00000000 */   nop   
/* 0092F4 800086F4 87A80032 */  lh    $t0, 0x32($sp)
.L800086F8:
/* 0092F8 800086F8 02202825 */  move  $a1, $s1
/* 0092FC 800086FC 25080001 */  addiu $t0, $t0, 1
/* 009300 80008700 0008CC00 */  sll   $t9, $t0, 0x10
/* 009304 80008704 1043000E */  beq   $v0, $v1, .L80008740
/* 009308 80008708 00194403 */   sra   $t0, $t9, 0x10
/* 00930C 8000870C 8E0A0030 */  lw    $t2, 0x30($s0)
/* 009310 80008710 8E020024 */  lw    $v0, 0x24($s0)
/* 009314 80008714 314B0008 */  andi  $t3, $t2, 8
/* 009318 80008718 15600005 */  bnez  $t3, .L80008730
/* 00931C 8000871C 00E2082A */   slt   $at, $a3, $v0
/* 009320 80008720 50200004 */  beql  $at, $zero, .L80008734
/* 009324 80008724 00486023 */   subu  $t4, $v0, $t0
/* 009328 80008728 AE070024 */  sw    $a3, 0x24($s0)
/* 00932C 8000872C 00E01025 */  move  $v0, $a3
.L80008730:
/* 009330 80008730 00486023 */  subu  $t4, $v0, $t0
.L80008734:
/* 009334 80008734 05810002 */  bgez  $t4, .L80008740
/* 009338 80008738 AE0C0024 */   sw    $t4, 0x24($s0)
/* 00933C 8000873C AE000024 */  sw    $zero, 0x24($s0)
.L80008740:
/* 009340 80008740 1D000034 */  bgtz  $t0, .L80008814
/* 009344 80008744 00E8082A */   slt   $at, $a3, $t0
/* 009348 80008748 8E0F0008 */  lw    $t7, 8($s0)
/* 00934C 8000874C 8E180014 */  lw    $t8, 0x14($s0)
/* 009350 80008750 240E0030 */  li    $t6, 48
/* 009354 80008754 00081823 */  negu  $v1, $t0
/* 009358 80008758 01F8C821 */  addu  $t9, $t7, $t8
/* 00935C 8000875C A32E0000 */  sb    $t6, ($t9)
/* 009360 80008760 8E090014 */  lw    $t1, 0x14($s0)
/* 009364 80008764 8E020024 */  lw    $v0, 0x24($s0)
/* 009368 80008768 252A0001 */  addiu $t2, $t1, 1
/* 00936C 8000876C 1C400005 */  bgtz  $v0, .L80008784
/* 009370 80008770 AE0A0014 */   sw    $t2, 0x14($s0)
/* 009374 80008774 8E0B0030 */  lw    $t3, 0x30($s0)
/* 009378 80008778 316C0008 */  andi  $t4, $t3, 8
/* 00937C 8000877C 5180000B */  beql  $t4, $zero, .L800087AC
/* 009380 80008780 0043082A */   slt   $at, $v0, $v1
.L80008784:
/* 009384 80008784 8E0F0008 */  lw    $t7, 8($s0)
/* 009388 80008788 8E180014 */  lw    $t8, 0x14($s0)
/* 00938C 8000878C 240D002E */  li    $t5, 46
/* 009390 80008790 01F87021 */  addu  $t6, $t7, $t8
/* 009394 80008794 A1CD0000 */  sb    $t5, ($t6)
/* 009398 80008798 8E190014 */  lw    $t9, 0x14($s0)
/* 00939C 8000879C 8E020024 */  lw    $v0, 0x24($s0)
/* 0093A0 800087A0 27290001 */  addiu $t1, $t9, 1
/* 0093A4 800087A4 AE090014 */  sw    $t1, 0x14($s0)
/* 0093A8 800087A8 0043082A */  slt   $at, $v0, $v1
.L800087AC:
/* 0093AC 800087AC 50200006 */  beql  $at, $zero, .L800087C8
/* 0093B0 800087B0 00486021 */   addu  $t4, $v0, $t0
/* 0093B4 800087B4 00024023 */  negu  $t0, $v0
/* 0093B8 800087B8 00085400 */  sll   $t2, $t0, 0x10
/* 0093BC 800087BC 000A4403 */  sra   $t0, $t2, 0x10
/* 0093C0 800087C0 00081823 */  negu  $v1, $t0
/* 0093C4 800087C4 00486021 */  addu  $t4, $v0, $t0
.L800087C8:
/* 0093C8 800087C8 0187082A */  slt   $at, $t4, $a3
/* 0093CC 800087CC AE030018 */  sw    $v1, 0x18($s0)
/* 0093D0 800087D0 10200004 */  beqz  $at, .L800087E4
/* 0093D4 800087D4 AE0C0024 */   sw    $t4, 0x24($s0)
/* 0093D8 800087D8 000C3C00 */  sll   $a3, $t4, 0x10
/* 0093DC 800087DC 00077C03 */  sra   $t7, $a3, 0x10
/* 0093E0 800087E0 01E03825 */  move  $a3, $t7
.L800087E4:
/* 0093E4 800087E4 8E180008 */  lw    $t8, 8($s0)
/* 0093E8 800087E8 8E0D0014 */  lw    $t5, 0x14($s0)
/* 0093EC 800087EC AE07001C */  sw    $a3, 0x1c($s0)
/* 0093F0 800087F0 A7A7002E */  sh    $a3, 0x2e($sp)
/* 0093F4 800087F4 00E03025 */  move  $a2, $a3
/* 0093F8 800087F8 0C001846 */  jal   func_80006118
/* 0093FC 800087FC 030D2021 */   addu  $a0, $t8, $t5
/* 009400 80008800 87A7002E */  lh    $a3, 0x2e($sp)
/* 009404 80008804 8E0E0024 */  lw    $t6, 0x24($s0)
/* 009408 80008808 01C7C823 */  subu  $t9, $t6, $a3
/* 00940C 8000880C 100000F4 */  b     .L80008BE0
/* 009410 80008810 AE190020 */   sw    $t9, 0x20($s0)
.L80008814:
/* 009414 80008814 10200021 */  beqz  $at, .L8000889C
/* 009418 80008818 02202825 */   move  $a1, $s1
/* 00941C 8000881C 8E090008 */  lw    $t1, 8($s0)
/* 009420 80008820 8E0A0014 */  lw    $t2, 0x14($s0)
/* 009424 80008824 A7A80032 */  sh    $t0, 0x32($sp)
/* 009428 80008828 A7A7002E */  sh    $a3, 0x2e($sp)
/* 00942C 8000882C 02202825 */  move  $a1, $s1
/* 009430 80008830 00E03025 */  move  $a2, $a3
/* 009434 80008834 0C001846 */  jal   func_80006118
/* 009438 80008838 012A2021 */   addu  $a0, $t1, $t2
/* 00943C 8000883C 87A7002E */  lh    $a3, 0x2e($sp)
/* 009440 80008840 87A80032 */  lh    $t0, 0x32($sp)
/* 009444 80008844 8E0B0014 */  lw    $t3, 0x14($s0)
/* 009448 80008848 8E020024 */  lw    $v0, 0x24($s0)
/* 00944C 8000884C 01077823 */  subu  $t7, $t0, $a3
/* 009450 80008850 01676021 */  addu  $t4, $t3, $a3
/* 009454 80008854 AE0C0014 */  sw    $t4, 0x14($s0)
/* 009458 80008858 1C400005 */  bgtz  $v0, .L80008870
/* 00945C 8000885C AE0F0018 */   sw    $t7, 0x18($s0)
/* 009460 80008860 8E180030 */  lw    $t8, 0x30($s0)
/* 009464 80008864 330D0008 */  andi  $t5, $t8, 8
/* 009468 80008868 11A0000A */  beqz  $t5, .L80008894
/* 00946C 8000886C 00000000 */   nop   
.L80008870:
/* 009470 80008870 8E190008 */  lw    $t9, 8($s0)
/* 009474 80008874 8E090014 */  lw    $t1, 0x14($s0)
/* 009478 80008878 240E002E */  li    $t6, 46
/* 00947C 8000887C 03295021 */  addu  $t2, $t9, $t1
/* 009480 80008880 A14E0000 */  sb    $t6, ($t2)
/* 009484 80008884 8E0B001C */  lw    $t3, 0x1c($s0)
/* 009488 80008888 8E020024 */  lw    $v0, 0x24($s0)
/* 00948C 8000888C 256C0001 */  addiu $t4, $t3, 1
/* 009490 80008890 AE0C001C */  sw    $t4, 0x1c($s0)
.L80008894:
/* 009494 80008894 100000D2 */  b     .L80008BE0
/* 009498 80008898 AE020020 */   sw    $v0, 0x20($s0)
.L8000889C:
/* 00949C 8000889C 8E0F0008 */  lw    $t7, 8($s0)
/* 0094A0 800088A0 8E180014 */  lw    $t8, 0x14($s0)
/* 0094A4 800088A4 A7A80032 */  sh    $t0, 0x32($sp)
/* 0094A8 800088A8 A7A7002E */  sh    $a3, 0x2e($sp)
/* 0094AC 800088AC 01003025 */  move  $a2, $t0
/* 0094B0 800088B0 0C001846 */  jal   func_80006118
/* 0094B4 800088B4 01F82021 */   addu  $a0, $t7, $t8
/* 0094B8 800088B8 87A7002E */  lh    $a3, 0x2e($sp)
/* 0094BC 800088BC 87A80032 */  lh    $t0, 0x32($sp)
/* 0094C0 800088C0 8E0D0014 */  lw    $t5, 0x14($s0)
/* 0094C4 800088C4 8E020024 */  lw    $v0, 0x24($s0)
/* 0094C8 800088C8 00E83823 */  subu  $a3, $a3, $t0
/* 0094CC 800088CC 00074C00 */  sll   $t1, $a3, 0x10
/* 0094D0 800088D0 01A8C821 */  addu  $t9, $t5, $t0
/* 0094D4 800088D4 AE190014 */  sw    $t9, 0x14($s0)
/* 0094D8 800088D8 1C400005 */  bgtz  $v0, .L800088F0
/* 0094DC 800088DC 00093C03 */   sra   $a3, $t1, 0x10
/* 0094E0 800088E0 8E0A0030 */  lw    $t2, 0x30($s0)
/* 0094E4 800088E4 314B0008 */  andi  $t3, $t2, 8
/* 0094E8 800088E8 5160000B */  beql  $t3, $zero, .L80008918
/* 0094EC 800088EC 0047082A */   slt   $at, $v0, $a3
.L800088F0:
/* 0094F0 800088F0 8E0F0008 */  lw    $t7, 8($s0)
/* 0094F4 800088F4 8E180014 */  lw    $t8, 0x14($s0)
/* 0094F8 800088F8 240C002E */  li    $t4, 46
/* 0094FC 800088FC 01F86821 */  addu  $t5, $t7, $t8
/* 009500 80008900 A1AC0000 */  sb    $t4, ($t5)
/* 009504 80008904 8E190014 */  lw    $t9, 0x14($s0)
/* 009508 80008908 8E020024 */  lw    $v0, 0x24($s0)
/* 00950C 8000890C 27290001 */  addiu $t1, $t9, 1
/* 009510 80008910 AE090014 */  sw    $t1, 0x14($s0)
/* 009514 80008914 0047082A */  slt   $at, $v0, $a3
.L80008918:
/* 009518 80008918 10200004 */  beqz  $at, .L8000892C
/* 00951C 8000891C 01112821 */   addu  $a1, $t0, $s1
/* 009520 80008920 00023C00 */  sll   $a3, $v0, 0x10
/* 009524 80008924 00077403 */  sra   $t6, $a3, 0x10
/* 009528 80008928 01C03825 */  move  $a3, $t6
.L8000892C:
/* 00952C 8000892C 8E0A0008 */  lw    $t2, 8($s0)
/* 009530 80008930 8E0B0014 */  lw    $t3, 0x14($s0)
/* 009534 80008934 A7A7002E */  sh    $a3, 0x2e($sp)
/* 009538 80008938 00E03025 */  move  $a2, $a3
/* 00953C 8000893C 0C001846 */  jal   func_80006118
/* 009540 80008940 014B2021 */   addu  $a0, $t2, $t3
/* 009544 80008944 87A7002E */  lh    $a3, 0x2e($sp)
/* 009548 80008948 8E0F0014 */  lw    $t7, 0x14($s0)
/* 00954C 8000894C 8E0C0024 */  lw    $t4, 0x24($s0)
/* 009550 80008950 01E7C021 */  addu  $t8, $t7, $a3
/* 009554 80008954 01876823 */  subu  $t5, $t4, $a3
/* 009558 80008958 AE180014 */  sw    $t8, 0x14($s0)
/* 00955C 8000895C 100000A0 */  b     .L80008BE0
/* 009560 80008960 AE0D0018 */   sw    $t5, 0x18($s0)
.L80008964:
/* 009564 80008964 10830004 */  beq   $a0, $v1, .L80008978
/* 009568 80008968 87A80032 */   lh    $t0, 0x32($sp)
/* 00956C 8000896C 24010047 */  li    $at, 71
/* 009570 80008970 54610013 */  bnel  $v1, $at, .L800089C0
/* 009574 80008974 8E0F0008 */   lw    $t7, 8($s0)
.L80008978:
/* 009578 80008978 8E020024 */  lw    $v0, 0x24($s0)
/* 00957C 8000897C 240E0065 */  li    $t6, 101
/* 009580 80008980 00E2082A */  slt   $at, $a3, $v0
/* 009584 80008984 50200004 */  beql  $at, $zero, .L80008998
/* 009588 80008988 2459FFFF */   addiu $t9, $v0, -1
/* 00958C 8000898C AE070024 */  sw    $a3, 0x24($s0)
/* 009590 80008990 00E01025 */  move  $v0, $a3
/* 009594 80008994 2459FFFF */  addiu $t9, $v0, -1
.L80008998:
/* 009598 80008998 07210002 */  bgez  $t9, .L800089A4
/* 00959C 8000899C AE190024 */   sw    $t9, 0x24($s0)
/* 0095A0 800089A0 AE000024 */  sw    $zero, 0x24($s0)
.L800089A4:
/* 0095A4 800089A4 54830004 */  bnel  $a0, $v1, .L800089B8
/* 0095A8 800089A8 240A0045 */   li    $t2, 69
/* 0095AC 800089AC 10000003 */  b     .L800089BC
/* 0095B0 800089B0 A3AE0027 */   sb    $t6, 0x27($sp)
/* 0095B4 800089B4 240A0045 */  li    $t2, 69
.L800089B8:
/* 0095B8 800089B8 A3AA0027 */  sb    $t2, 0x27($sp)
.L800089BC:
/* 0095BC 800089BC 8E0F0008 */  lw    $t7, 8($s0)
.L800089C0:
/* 0095C0 800089C0 8E180014 */  lw    $t8, 0x14($s0)
/* 0095C4 800089C4 922B0000 */  lbu   $t3, ($s1)
/* 0095C8 800089C8 26310001 */  addiu $s1, $s1, 1
/* 0095CC 800089CC 01F86021 */  addu  $t4, $t7, $t8
/* 0095D0 800089D0 A18B0000 */  sb    $t3, ($t4)
/* 0095D4 800089D4 8E0D0014 */  lw    $t5, 0x14($s0)
/* 0095D8 800089D8 8E020024 */  lw    $v0, 0x24($s0)
/* 0095DC 800089DC 25B90001 */  addiu $t9, $t5, 1
/* 0095E0 800089E0 1C400005 */  bgtz  $v0, .L800089F8
/* 0095E4 800089E4 AE190014 */   sw    $t9, 0x14($s0)
/* 0095E8 800089E8 8E090030 */  lw    $t1, 0x30($s0)
/* 0095EC 800089EC 312E0008 */  andi  $t6, $t1, 8
/* 0095F0 800089F0 11C0000A */  beqz  $t6, .L80008A1C
/* 0095F4 800089F4 00000000 */   nop   
.L800089F8:
/* 0095F8 800089F8 8E0F0008 */  lw    $t7, 8($s0)
/* 0095FC 800089FC 8E180014 */  lw    $t8, 0x14($s0)
/* 009600 80008A00 240A002E */  li    $t2, 46
/* 009604 80008A04 01F85821 */  addu  $t3, $t7, $t8
/* 009608 80008A08 A16A0000 */  sb    $t2, ($t3)
/* 00960C 80008A0C 8E0C0014 */  lw    $t4, 0x14($s0)
/* 009610 80008A10 8E020024 */  lw    $v0, 0x24($s0)
/* 009614 80008A14 258D0001 */  addiu $t5, $t4, 1
/* 009618 80008A18 AE0D0014 */  sw    $t5, 0x14($s0)
.L80008A1C:
/* 00961C 80008A1C 5840001A */  blezl $v0, .L80008A88
/* 009620 80008A20 8E190008 */   lw    $t9, 8($s0)
/* 009624 80008A24 24E7FFFF */  addiu $a3, $a3, -1
/* 009628 80008A28 0007CC00 */  sll   $t9, $a3, 0x10
/* 00962C 80008A2C 00193C03 */  sra   $a3, $t9, 0x10
/* 009630 80008A30 0047082A */  slt   $at, $v0, $a3
/* 009634 80008A34 10200004 */  beqz  $at, .L80008A48
/* 009638 80008A38 02202825 */   move  $a1, $s1
/* 00963C 80008A3C 00023C00 */  sll   $a3, $v0, 0x10
/* 009640 80008A40 00077403 */  sra   $t6, $a3, 0x10
/* 009644 80008A44 01C03825 */  move  $a3, $t6
.L80008A48:
/* 009648 80008A48 8E0F0008 */  lw    $t7, 8($s0)
/* 00964C 80008A4C 8E180014 */  lw    $t8, 0x14($s0)
/* 009650 80008A50 A7A80032 */  sh    $t0, 0x32($sp)
/* 009654 80008A54 A7A7002E */  sh    $a3, 0x2e($sp)
/* 009658 80008A58 00E03025 */  move  $a2, $a3
/* 00965C 80008A5C 0C001846 */  jal   func_80006118
/* 009660 80008A60 01F82021 */   addu  $a0, $t7, $t8
/* 009664 80008A64 87A7002E */  lh    $a3, 0x2e($sp)
/* 009668 80008A68 8E0A0014 */  lw    $t2, 0x14($s0)
/* 00966C 80008A6C 8E0C0024 */  lw    $t4, 0x24($s0)
/* 009670 80008A70 87A80032 */  lh    $t0, 0x32($sp)
/* 009674 80008A74 01475821 */  addu  $t3, $t2, $a3
/* 009678 80008A78 01876823 */  subu  $t5, $t4, $a3
/* 00967C 80008A7C AE0B0014 */  sw    $t3, 0x14($s0)
/* 009680 80008A80 AE0D0018 */  sw    $t5, 0x18($s0)
/* 009684 80008A84 8E190008 */  lw    $t9, 8($s0)
.L80008A88:
/* 009688 80008A88 8E090014 */  lw    $t1, 0x14($s0)
/* 00968C 80008A8C 93AE0027 */  lbu   $t6, 0x27($sp)
/* 009690 80008A90 03298821 */  addu  $s1, $t9, $t1
/* 009694 80008A94 26310001 */  addiu $s1, $s1, 1
/* 009698 80008A98 05000005 */  bltz  $t0, .L80008AB0
/* 00969C 80008A9C A22EFFFF */   sb    $t6, -1($s1)
/* 0096A0 80008AA0 240F002B */  li    $t7, 43
/* 0096A4 80008AA4 A22F0000 */  sb    $t7, ($s1)
/* 0096A8 80008AA8 10000008 */  b     .L80008ACC
/* 0096AC 80008AAC 26310001 */   addiu $s1, $s1, 1
.L80008AB0:
/* 0096B0 80008AB0 00084023 */  negu  $t0, $t0
/* 0096B4 80008AB4 00085400 */  sll   $t2, $t0, 0x10
/* 0096B8 80008AB8 2418002D */  li    $t8, 45
/* 0096BC 80008ABC 000A5C03 */  sra   $t3, $t2, 0x10
/* 0096C0 80008AC0 A2380000 */  sb    $t8, ($s1)
/* 0096C4 80008AC4 26310001 */  addiu $s1, $s1, 1
/* 0096C8 80008AC8 01604025 */  move  $t0, $t3
.L80008ACC:
/* 0096CC 80008ACC 29010064 */  slti  $at, $t0, 0x64
/* 0096D0 80008AD0 5420002A */  bnezl $at, .L80008B7C
/* 0096D4 80008AD4 2402000A */   li    $v0, 10
/* 0096D8 80008AD8 290103E8 */  slti  $at, $t0, 0x3e8
/* 0096DC 80008ADC 14200013 */  bnez  $at, .L80008B2C
/* 0096E0 80008AE0 240203E8 */   li    $v0, 1000
/* 0096E4 80008AE4 0102001A */  div   $zero, $t0, $v0
/* 0096E8 80008AE8 14400002 */  bnez  $v0, .L80008AF4
/* 0096EC 80008AEC 00000000 */   nop   
/* 0096F0 80008AF0 0007000D */  break 7
.L80008AF4:
/* 0096F4 80008AF4 2401FFFF */  li    $at, -1
/* 0096F8 80008AF8 14410004 */  bne   $v0, $at, .L80008B0C
/* 0096FC 80008AFC 3C018000 */   lui   $at, 0x8000
/* 009700 80008B00 15010002 */  bne   $t0, $at, .L80008B0C
/* 009704 80008B04 00000000 */   nop   
/* 009708 80008B08 0006000D */  break 6
.L80008B0C:
/* 00970C 80008B0C 00004010 */  mfhi  $t0
/* 009710 80008B10 0008CC00 */  sll   $t9, $t0, 0x10
/* 009714 80008B14 00006012 */  mflo  $t4
/* 009718 80008B18 258D0030 */  addiu $t5, $t4, 0x30
/* 00971C 80008B1C 00194C03 */  sra   $t1, $t9, 0x10
/* 009720 80008B20 01204025 */  move  $t0, $t1
/* 009724 80008B24 A22D0000 */  sb    $t5, ($s1)
/* 009728 80008B28 26310001 */  addiu $s1, $s1, 1
.L80008B2C:
/* 00972C 80008B2C 24020064 */  li    $v0, 100
/* 009730 80008B30 0102001A */  div   $zero, $t0, $v0
/* 009734 80008B34 14400002 */  bnez  $v0, .L80008B40
/* 009738 80008B38 00000000 */   nop   
/* 00973C 80008B3C 0007000D */  break 7
.L80008B40:
/* 009740 80008B40 2401FFFF */  li    $at, -1
/* 009744 80008B44 14410004 */  bne   $v0, $at, .L80008B58
/* 009748 80008B48 3C018000 */   lui   $at, 0x8000
/* 00974C 80008B4C 15010002 */  bne   $t0, $at, .L80008B58
/* 009750 80008B50 00000000 */   nop   
/* 009754 80008B54 0006000D */  break 6
.L80008B58:
/* 009758 80008B58 00004010 */  mfhi  $t0
/* 00975C 80008B5C 0008C400 */  sll   $t8, $t0, 0x10
/* 009760 80008B60 00007012 */  mflo  $t6
/* 009764 80008B64 25CF0030 */  addiu $t7, $t6, 0x30
/* 009768 80008B68 00185403 */  sra   $t2, $t8, 0x10
/* 00976C 80008B6C 01404025 */  move  $t0, $t2
/* 009770 80008B70 A22F0000 */  sb    $t7, ($s1)
/* 009774 80008B74 26310001 */  addiu $s1, $s1, 1
/* 009778 80008B78 2402000A */  li    $v0, 10
.L80008B7C:
/* 00977C 80008B7C 0102001A */  div   $zero, $t0, $v0
/* 009780 80008B80 14400002 */  bnez  $v0, .L80008B8C
/* 009784 80008B84 00000000 */   nop   
/* 009788 80008B88 0007000D */  break 7
.L80008B8C:
/* 00978C 80008B8C 2401FFFF */  li    $at, -1
/* 009790 80008B90 14410004 */  bne   $v0, $at, .L80008BA4
/* 009794 80008B94 3C018000 */   lui   $at, 0x8000
/* 009798 80008B98 15010002 */  bne   $t0, $at, .L80008BA4
/* 00979C 80008B9C 00000000 */   nop   
/* 0097A0 80008BA0 0006000D */  break 6
.L80008BA4:
/* 0097A4 80008BA4 00004010 */  mfhi  $t0
/* 0097A8 80008BA8 00086C00 */  sll   $t5, $t0, 0x10
/* 0097AC 80008BAC 000DCC03 */  sra   $t9, $t5, 0x10
/* 0097B0 80008BB0 00005812 */  mflo  $t3
/* 0097B4 80008BB4 256C0030 */  addiu $t4, $t3, 0x30
/* 0097B8 80008BB8 27290030 */  addiu $t1, $t9, 0x30
/* 0097BC 80008BBC A22C0000 */  sb    $t4, ($s1)
/* 0097C0 80008BC0 A2290001 */  sb    $t1, 1($s1)
/* 0097C4 80008BC4 8E0E0008 */  lw    $t6, 8($s0)
/* 0097C8 80008BC8 8E180014 */  lw    $t8, 0x14($s0)
/* 0097CC 80008BCC 26310002 */  addiu $s1, $s1, 2
/* 0097D0 80008BD0 022E7823 */  subu  $t7, $s1, $t6
/* 0097D4 80008BD4 01F85023 */  subu  $t2, $t7, $t8
/* 0097D8 80008BD8 03204025 */  move  $t0, $t9
/* 0097DC 80008BDC AE0A001C */  sw    $t2, 0x1c($s0)
.L80008BE0:
/* 0097E0 80008BE0 8E0B0030 */  lw    $t3, 0x30($s0)
/* 0097E4 80008BE4 24010010 */  li    $at, 16
/* 0097E8 80008BE8 316C0014 */  andi  $t4, $t3, 0x14
/* 0097EC 80008BEC 55810010 */  bnel  $t4, $at, .L80008C30
/* 0097F0 80008BF0 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0097F4 80008BF4 8E0D000C */  lw    $t5, 0xc($s0)
/* 0097F8 80008BF8 8E190014 */  lw    $t9, 0x14($s0)
/* 0097FC 80008BFC 8E0E0018 */  lw    $t6, 0x18($s0)
/* 009800 80008C00 8E18001C */  lw    $t8, 0x1c($s0)
/* 009804 80008C04 8E0B0020 */  lw    $t3, 0x20($s0)
/* 009808 80008C08 01B94821 */  addu  $t1, $t5, $t9
/* 00980C 80008C0C 8E030028 */  lw    $v1, 0x28($s0)
/* 009810 80008C10 012E7821 */  addu  $t7, $t1, $t6
/* 009814 80008C14 01F85021 */  addu  $t2, $t7, $t8
/* 009818 80008C18 014B1021 */  addu  $v0, $t2, $t3
/* 00981C 80008C1C 0043082A */  slt   $at, $v0, $v1
/* 009820 80008C20 10200002 */  beqz  $at, .L80008C2C
/* 009824 80008C24 00626023 */   subu  $t4, $v1, $v0
/* 009828 80008C28 AE0C0010 */  sw    $t4, 0x10($s0)
.L80008C2C:
/* 00982C 80008C2C 8FBF001C */  lw    $ra, 0x1c($sp)
.L80008C30:
/* 009830 80008C30 8FB00014 */  lw    $s0, 0x14($sp)
/* 009834 80008C34 8FB10018 */  lw    $s1, 0x18($sp)
/* 009838 80008C38 03E00008 */  jr    $ra
/* 00983C 80008C3C 27BD0020 */   addiu $sp, $sp, 0x20

glabel func_80008C40
/* 009840 80008C40 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 009844 80008C44 AFBF0014 */  sw    $ra, 0x14($sp)
/* 009848 80008C48 AFA40018 */  sw    $a0, 0x18($sp)
/* 00984C 80008C4C 0C0018AC */  jal   func_800062B0
/* 009850 80008C50 AFA5001C */   sw    $a1, 0x1c($sp)
/* 009854 80008C54 10400003 */  beqz  $v0, .L80008C64
/* 009858 80008C58 8FAE001C */   lw    $t6, 0x1c($sp)
/* 00985C 80008C5C 10000006 */  b     .L80008C78
/* 009860 80008C60 2402FFFF */   li    $v0, -1
.L80008C64:
/* 009864 80008C64 8FAF0018 */  lw    $t7, 0x18($sp)
/* 009868 80008C68 3C01A000 */  lui   $at, 0xa000
/* 00986C 80008C6C 00001025 */  move  $v0, $zero
/* 009870 80008C70 01E1C025 */  or    $t8, $t7, $at
/* 009874 80008C74 AF0E0000 */  sw    $t6, ($t8)
.L80008C78:
/* 009878 80008C78 8FBF0014 */  lw    $ra, 0x14($sp)
/* 00987C 80008C7C 27BD0018 */  addiu $sp, $sp, 0x18
/* 009880 80008C80 03E00008 */  jr    $ra
/* 009884 80008C84 00000000 */   nop   
