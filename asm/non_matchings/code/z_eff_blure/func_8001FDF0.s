glabel func_8001FDF0
/* A96F90 8001FDF0 27BDFE80 */  addiu $sp, $sp, -0x180
/* A96F94 8001FDF4 AFB30028 */  sw    $s3, 0x28($sp)
/* A96F98 8001FDF8 AFB20024 */  sw    $s2, 0x24($sp)
/* A96F9C 8001FDFC AFB10020 */  sw    $s1, 0x20($sp)
/* A96FA0 8001FE00 00808825 */  move  $s1, $a0
/* A96FA4 8001FE04 00A09025 */  move  $s2, $a1
/* A96FA8 8001FE08 00C09825 */  move  $s3, $a2
/* A96FAC 8001FE0C AFBF002C */  sw    $ra, 0x2c($sp)
/* A96FB0 8001FE10 108000BC */  beqz  $a0, .L80020104
/* A96FB4 8001FE14 AFB0001C */   sw    $s0, 0x1c($sp)
/* A96FB8 8001FE18 9085019E */  lbu   $a1, 0x19e($a0)
/* A96FBC 8001FE1C 3C048013 */  lui   $a0, %hi(D_80135130)
/* A96FC0 8001FE20 240F0001 */  li    $t7, 1
/* A96FC4 8001FE24 28A10010 */  slti  $at, $a1, 0x10
/* A96FC8 8001FE28 14200005 */  bnez  $at, .L8001FE40
/* A96FCC 8001FE2C 00057080 */   sll   $t6, $a1, 2
/* A96FD0 8001FE30 0C00084C */  jal   osSyncPrintf
/* A96FD4 8001FE34 24845130 */   addiu $a0, %lo(D_80135130) # addiu $a0, $a0, 0x5130
/* A96FD8 8001FE38 100000B3 */  b     .L80020108
/* A96FDC 8001FE3C 8FBF002C */   lw    $ra, 0x2c($sp)
.L8001FE40:
/* A96FE0 8001FE40 01C57023 */  subu  $t6, $t6, $a1
/* A96FE4 8001FE44 000E70C0 */  sll   $t6, $t6, 3
/* A96FE8 8001FE48 022E8021 */  addu  $s0, $s1, $t6
/* A96FEC 8001FE4C AE0F0000 */  sw    $t7, ($s0)
/* A96FF0 8001FE50 96380188 */  lhu   $t8, 0x188($s1)
/* A96FF4 8001FE54 33190002 */  andi  $t9, $t8, 2
/* A96FF8 8001FE58 57200020 */  bnezl $t9, .L8001FEDC
/* A96FFC 8001FE5C 860AFFF6 */   lh    $t2, -0xa($s0)
/* A97000 8001FE60 C6440000 */  lwc1  $f4, ($s2)
/* A97004 8001FE64 4600218D */  trunc.w.s $f6, $f4
/* A97008 8001FE68 44093000 */  mfc1  $t1, $f6
/* A9700C 8001FE6C 00000000 */  nop   
/* A97010 8001FE70 A6090008 */  sh    $t1, 8($s0)
/* A97014 8001FE74 C6480004 */  lwc1  $f8, 4($s2)
/* A97018 8001FE78 4600428D */  trunc.w.s $f10, $f8
/* A9701C 8001FE7C 440B5000 */  mfc1  $t3, $f10
/* A97020 8001FE80 00000000 */  nop   
/* A97024 8001FE84 A60B000A */  sh    $t3, 0xa($s0)
/* A97028 8001FE88 C6500008 */  lwc1  $f16, 8($s2)
/* A9702C 8001FE8C 4600848D */  trunc.w.s $f18, $f16
/* A97030 8001FE90 440D9000 */  mfc1  $t5, $f18
/* A97034 8001FE94 00000000 */  nop   
/* A97038 8001FE98 A60D000C */  sh    $t5, 0xc($s0)
/* A9703C 8001FE9C C6640000 */  lwc1  $f4, ($s3)
/* A97040 8001FEA0 4600218D */  trunc.w.s $f6, $f4
/* A97044 8001FEA4 440F3000 */  mfc1  $t7, $f6
/* A97048 8001FEA8 00000000 */  nop   
/* A9704C 8001FEAC A60F000E */  sh    $t7, 0xe($s0)
/* A97050 8001FEB0 C6680004 */  lwc1  $f8, 4($s3)
/* A97054 8001FEB4 4600428D */  trunc.w.s $f10, $f8
/* A97058 8001FEB8 44195000 */  mfc1  $t9, $f10
/* A9705C 8001FEBC 00000000 */  nop   
/* A97060 8001FEC0 A6190010 */  sh    $t9, 0x10($s0)
/* A97064 8001FEC4 C6700008 */  lwc1  $f16, 8($s3)
/* A97068 8001FEC8 4600848D */  trunc.w.s $f18, $f16
/* A9706C 8001FECC 44099000 */  mfc1  $t1, $f18
/* A97070 8001FED0 10000087 */  b     .L800200F0
/* A97074 8001FED4 A6090012 */   sh    $t1, 0x12($s0)
/* A97078 8001FED8 860AFFF6 */  lh    $t2, -0xa($s0)
.L8001FEDC:
/* A9707C 8001FEDC 860BFFF0 */  lh    $t3, -0x10($s0)
/* A97080 8001FEE0 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* A97084 8001FEE4 448A2000 */  mtc1  $t2, $f4
/* A97088 8001FEE8 448B4000 */  mtc1  $t3, $f8
/* A9708C 8001FEEC 44810000 */  mtc1  $at, $f0
/* A97090 8001FEF0 468021A0 */  cvt.s.w $f6, $f4
/* A97094 8001FEF4 27A40160 */  addiu $a0, $sp, 0x160
/* A97098 8001FEF8 27A5016C */  addiu $a1, $sp, 0x16c
/* A9709C 8001FEFC 27A60154 */  addiu $a2, $sp, 0x154
/* A970A0 8001FF00 468042A0 */  cvt.s.w $f10, $f8
/* A970A4 8001FF04 460A3400 */  add.s $f16, $f6, $f10
/* A970A8 8001FF08 46008482 */  mul.s $f18, $f16, $f0
/* A970AC 8001FF0C E7B2016C */  swc1  $f18, 0x16c($sp)
/* A970B0 8001FF10 860DFFF2 */  lh    $t5, -0xe($s0)
/* A970B4 8001FF14 860CFFF8 */  lh    $t4, -8($s0)
/* A970B8 8001FF18 448D3000 */  mtc1  $t5, $f6
/* A970BC 8001FF1C 448C2000 */  mtc1  $t4, $f4
/* A970C0 8001FF20 468032A0 */  cvt.s.w $f10, $f6
/* A970C4 8001FF24 46802220 */  cvt.s.w $f8, $f4
/* A970C8 8001FF28 460A4400 */  add.s $f16, $f8, $f10
/* A970CC 8001FF2C 46008482 */  mul.s $f18, $f16, $f0
/* A970D0 8001FF30 E7B20170 */  swc1  $f18, 0x170($sp)
/* A970D4 8001FF34 860FFFF4 */  lh    $t7, -0xc($s0)
/* A970D8 8001FF38 860EFFFA */  lh    $t6, -6($s0)
/* A970DC 8001FF3C 448F4000 */  mtc1  $t7, $f8
/* A970E0 8001FF40 448E2000 */  mtc1  $t6, $f4
/* A970E4 8001FF44 468042A0 */  cvt.s.w $f10, $f8
/* A970E8 8001FF48 468021A0 */  cvt.s.w $f6, $f4
/* A970EC 8001FF4C 460A3400 */  add.s $f16, $f6, $f10
/* A970F0 8001FF50 46008482 */  mul.s $f18, $f16, $f0
/* A970F4 8001FF54 E7B20174 */  swc1  $f18, 0x174($sp)
/* A970F8 8001FF58 C6680000 */  lwc1  $f8, ($s3)
/* A970FC 8001FF5C C6440000 */  lwc1  $f4, ($s2)
/* A97100 8001FF60 46082180 */  add.s $f6, $f4, $f8
/* A97104 8001FF64 46003282 */  mul.s $f10, $f6, $f0
/* A97108 8001FF68 E7AA0160 */  swc1  $f10, 0x160($sp)
/* A9710C 8001FF6C C6720004 */  lwc1  $f18, 4($s3)
/* A97110 8001FF70 C6500004 */  lwc1  $f16, 4($s2)
/* A97114 8001FF74 46128100 */  add.s $f4, $f16, $f18
/* A97118 8001FF78 46002202 */  mul.s $f8, $f4, $f0
/* A9711C 8001FF7C E7A80164 */  swc1  $f8, 0x164($sp)
/* A97120 8001FF80 C66A0008 */  lwc1  $f10, 8($s3)
/* A97124 8001FF84 C6460008 */  lwc1  $f6, 8($s2)
/* A97128 8001FF88 460A3400 */  add.s $f16, $f6, $f10
/* A9712C 8001FF8C 46008482 */  mul.s $f18, $f16, $f0
/* A97130 8001FF90 0C01DFB4 */  jal   Math_Vec3f_Diff
/* A97134 8001FF94 E7B20168 */   swc1  $f18, 0x168($sp)
/* A97138 8001FF98 0C032D8A */  jal   func_800CB628
/* A9713C 8001FF9C 27A40154 */   addiu $a0, $sp, 0x154
/* A97140 8001FFA0 3C018013 */  lui   $at, %hi(D_8013542C)
/* A97144 8001FFA4 C424542C */  lwc1  $f4, %lo(D_8013542C)($at)
/* A97148 8001FFA8 46000086 */  mov.s $f2, $f0
/* A9714C 8001FFAC 46000005 */  abs.s $f0, $f0
/* A97150 8001FFB0 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* A97154 8001FFB4 4604003C */  c.lt.s $f0, $f4
/* A97158 8001FFB8 00000000 */  nop   
/* A9715C 8001FFBC 4503004D */  bc1tl .L800200F4
/* A97160 8001FFC0 24080001 */   li    $t0, 1
/* A97164 8001FFC4 44814000 */  mtc1  $at, $f8
/* A97168 8001FFC8 27A40154 */  addiu $a0, $sp, 0x154
/* A9716C 8001FFCC 46024083 */  div.s $f2, $f8, $f2
/* A97170 8001FFD0 44051000 */  mfc1  $a1, $f2
/* A97174 8001FFD4 0C01DFD7 */  jal   Math_Vec3f_Scale
/* A97178 8001FFD8 00000000 */   nop   
/* A9717C 8001FFDC 27A40110 */  addiu $a0, $sp, 0x110
/* A97180 8001FFE0 8FA50160 */  lw    $a1, 0x160($sp)
/* A97184 8001FFE4 8FA60164 */  lw    $a2, 0x164($sp)
/* A97188 8001FFE8 0C029E89 */  jal   func_800A7A24
/* A9718C 8001FFEC 8FA70168 */   lw    $a3, 0x168($sp)
/* A97190 8001FFF0 C7A6015C */  lwc1  $f6, 0x15c($sp)
/* A97194 8001FFF4 8625018C */  lh    $a1, 0x18c($s1)
/* A97198 8001FFF8 27A400D0 */  addiu $a0, $sp, 0xd0
/* A9719C 8001FFFC 8FA60154 */  lw    $a2, 0x154($sp)
/* A971A0 80020000 8FA70158 */  lw    $a3, 0x158($sp)
/* A971A4 80020004 0C029FB0 */  jal   func_800A7EC0
/* A971A8 80020008 E7A60010 */   swc1  $f6, 0x10($sp)
/* A971AC 8002000C 27A40110 */  addiu $a0, $sp, 0x110
/* A971B0 80020010 27A500D0 */  addiu $a1, $sp, 0xd0
/* A971B4 80020014 0C029BE8 */  jal   func_800A6FA0
/* A971B8 80020018 27A60090 */   addiu $a2, $sp, 0x90
/* A971BC 8002001C C7AA0160 */  lwc1  $f10, 0x160($sp)
/* A971C0 80020020 C7B20164 */  lwc1  $f18, 0x164($sp)
/* A971C4 80020024 C7A80168 */  lwc1  $f8, 0x168($sp)
/* A971C8 80020028 46005407 */  neg.s $f16, $f10
/* A971CC 8002002C 46009107 */  neg.s $f4, $f18
/* A971D0 80020030 46004187 */  neg.s $f6, $f8
/* A971D4 80020034 44062000 */  mfc1  $a2, $f4
/* A971D8 80020038 44073000 */  mfc1  $a3, $f6
/* A971DC 8002003C 44058000 */  mfc1  $a1, $f16
/* A971E0 80020040 0C029E89 */  jal   func_800A7A24
/* A971E4 80020044 27A40110 */   addiu $a0, $sp, 0x110
/* A971E8 80020048 27A40090 */  addiu $a0, $sp, 0x90
/* A971EC 8002004C 27A50110 */  addiu $a1, $sp, 0x110
/* A971F0 80020050 0C029BE8 */  jal   func_800A6FA0
/* A971F4 80020054 27A60050 */   addiu $a2, $sp, 0x50
/* A971F8 80020058 27A40050 */  addiu $a0, $sp, 0x50
/* A971FC 8002005C 02402825 */  move  $a1, $s2
/* A97200 80020060 0C029BBD */  jal   func_800A6EF4
/* A97204 80020064 27A60038 */   addiu $a2, $sp, 0x38
/* A97208 80020068 27A40050 */  addiu $a0, $sp, 0x50
/* A9720C 8002006C 02602825 */  move  $a1, $s3
/* A97210 80020070 0C029BBD */  jal   func_800A6EF4
/* A97214 80020074 27A60044 */   addiu $a2, $sp, 0x44
/* A97218 80020078 C7AA0038 */  lwc1  $f10, 0x38($sp)
/* A9721C 8002007C 4600540D */  trunc.w.s $f16, $f10
/* A97220 80020080 44198000 */  mfc1  $t9, $f16
/* A97224 80020084 00000000 */  nop   
/* A97228 80020088 A6190008 */  sh    $t9, 8($s0)
/* A9722C 8002008C C7B2003C */  lwc1  $f18, 0x3c($sp)
/* A97230 80020090 4600910D */  trunc.w.s $f4, $f18
/* A97234 80020094 44092000 */  mfc1  $t1, $f4
/* A97238 80020098 00000000 */  nop   
/* A9723C 8002009C A609000A */  sh    $t1, 0xa($s0)
/* A97240 800200A0 C7A80040 */  lwc1  $f8, 0x40($sp)
/* A97244 800200A4 4600418D */  trunc.w.s $f6, $f8
/* A97248 800200A8 440B3000 */  mfc1  $t3, $f6
/* A9724C 800200AC 00000000 */  nop   
/* A97250 800200B0 A60B000C */  sh    $t3, 0xc($s0)
/* A97254 800200B4 C7AA0044 */  lwc1  $f10, 0x44($sp)
/* A97258 800200B8 4600540D */  trunc.w.s $f16, $f10
/* A9725C 800200BC 440D8000 */  mfc1  $t5, $f16
/* A97260 800200C0 00000000 */  nop   
/* A97264 800200C4 A60D000E */  sh    $t5, 0xe($s0)
/* A97268 800200C8 C7B20048 */  lwc1  $f18, 0x48($sp)
/* A9726C 800200CC 4600910D */  trunc.w.s $f4, $f18
/* A97270 800200D0 440F2000 */  mfc1  $t7, $f4
/* A97274 800200D4 00000000 */  nop   
/* A97278 800200D8 A60F0010 */  sh    $t7, 0x10($s0)
/* A9727C 800200DC C7A8004C */  lwc1  $f8, 0x4c($sp)
/* A97280 800200E0 4600418D */  trunc.w.s $f6, $f8
/* A97284 800200E4 44193000 */  mfc1  $t9, $f6
/* A97288 800200E8 00000000 */  nop   
/* A9728C 800200EC A6190012 */  sh    $t9, 0x12($s0)
.L800200F0:
/* A97290 800200F0 24080001 */  li    $t0, 1
.L800200F4:
/* A97294 800200F4 AE080004 */  sw    $t0, 4($s0)
/* A97298 800200F8 9229019E */  lbu   $t1, 0x19e($s1)
/* A9729C 800200FC 252A0001 */  addiu $t2, $t1, 1
/* A972A0 80020100 A22A019E */  sb    $t2, 0x19e($s1)
.L80020104:
/* A972A4 80020104 8FBF002C */  lw    $ra, 0x2c($sp)
.L80020108:
/* A972A8 80020108 8FB0001C */  lw    $s0, 0x1c($sp)
/* A972AC 8002010C 8FB10020 */  lw    $s1, 0x20($sp)
/* A972B0 80020110 8FB20024 */  lw    $s2, 0x24($sp)
/* A972B4 80020114 8FB30028 */  lw    $s3, 0x28($sp)
/* A972B8 80020118 03E00008 */  jr    $ra
/* A972BC 8002011C 27BD0180 */   addiu $sp, $sp, 0x180

/* A972C0 80020120 27BDFFE8 */  addiu $sp, $sp, -0x18
/* A972C4 80020124 10800013 */  beqz  $a0, .L80020174
/* A972C8 80020128 AFBF0014 */   sw    $ra, 0x14($sp)
/* A972CC 8002012C 9085019E */  lbu   $a1, 0x19e($a0)
/* A972D0 80020130 240F0001 */  li    $t7, 1
/* A972D4 80020134 28A10010 */  slti  $at, $a1, 0x10
/* A972D8 80020138 14200006 */  bnez  $at, .L80020154
/* A972DC 8002013C 00057080 */   sll   $t6, $a1, 2
/* A972E0 80020140 3C048013 */  lui   $a0, %hi(D_80135158) # $a0, 0x8013
/* A972E4 80020144 0C00084C */  jal   osSyncPrintf
/* A972E8 80020148 24845158 */   addiu $a0, %lo(D_80135158) # addiu $a0, $a0, 0x5158
/* A972EC 8002014C 1000000A */  b     .L80020178
/* A972F0 80020150 8FBF0014 */   lw    $ra, 0x14($sp)
.L80020154:
/* A972F4 80020154 01C57023 */  subu  $t6, $t6, $a1
/* A972F8 80020158 000E70C0 */  sll   $t6, $t6, 3
/* A972FC 8002015C 008E1021 */  addu  $v0, $a0, $t6
/* A97300 80020160 AC400000 */  sw    $zero, ($v0)
/* A97304 80020164 AC4F0004 */  sw    $t7, 4($v0)
/* A97308 80020168 9098019E */  lbu   $t8, 0x19e($a0)
/* A9730C 8002016C 27190001 */  addiu $t9, $t8, 1
/* A97310 80020170 A099019E */  sb    $t9, 0x19e($a0)
.L80020174:
/* A97314 80020174 8FBF0014 */  lw    $ra, 0x14($sp)
.L80020178:
/* A97318 80020178 27BD0018 */  addiu $sp, $sp, 0x18
/* A9731C 8002017C 03E00008 */  jr    $ra
/* A97320 80020180 00000000 */   nop   

