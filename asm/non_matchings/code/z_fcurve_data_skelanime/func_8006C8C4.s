glabel func_8006C8C4
/* AE3A64 8006C8C4 27BDFF90 */  addiu $sp, $sp, -0x70
/* AE3A68 8006C8C8 AFBF0054 */  sw    $ra, 0x54($sp)
/* AE3A6C 8006C8CC AFBE0050 */  sw    $fp, 0x50($sp)
/* AE3A70 8006C8D0 AFB7004C */  sw    $s7, 0x4c($sp)
/* AE3A74 8006C8D4 AFB60048 */  sw    $s6, 0x48($sp)
/* AE3A78 8006C8D8 AFB50044 */  sw    $s5, 0x44($sp)
/* AE3A7C 8006C8DC AFB40040 */  sw    $s4, 0x40($sp)
/* AE3A80 8006C8E0 AFB3003C */  sw    $s3, 0x3c($sp)
/* AE3A84 8006C8E4 AFB20038 */  sw    $s2, 0x38($sp)
/* AE3A88 8006C8E8 AFB10034 */  sw    $s1, 0x34($sp)
/* AE3A8C 8006C8EC AFB00030 */  sw    $s0, 0x30($sp)
/* AE3A90 8006C8F0 F7B80028 */  sdc1  $f24, 0x28($sp)
/* AE3A94 8006C8F4 F7B60020 */  sdc1  $f22, 0x20($sp)
/* AE3A98 8006C8F8 F7B40018 */  sdc1  $f20, 0x18($sp)
/* AE3A9C 8006C8FC AFA40070 */  sw    $a0, 0x70($sp)
/* AE3AA0 8006C900 AFA50074 */  sw    $a1, 0x74($sp)
/* AE3AA4 8006C904 AFA00058 */  sw    $zero, 0x58($sp)
/* AE3AA8 8006C908 8CA30008 */  lw    $v1, 8($a1)
/* AE3AAC 8006C90C 3C088016 */  lui   $t0, %hi(D_80166FA8) # $t0, 0x8016
/* AE3AB0 8006C910 25086FA8 */  addiu $t0, %lo(D_80166FA8) # addiu $t0, $t0, 0x6fa8
/* AE3AB4 8006C914 00037900 */  sll   $t7, $v1, 4
/* AE3AB8 8006C918 000FC702 */  srl   $t8, $t7, 0x1c
/* AE3ABC 8006C91C 0018C880 */  sll   $t9, $t8, 2
/* AE3AC0 8006C920 01195821 */  addu  $t3, $t0, $t9
/* AE3AC4 8006C924 8D6C0000 */  lw    $t4, ($t3)
/* AE3AC8 8006C928 3C0900FF */  lui   $t1, (0x00FFFFFF >> 16) # lui $t1, 0xff
/* AE3ACC 8006C92C 3529FFFF */  ori   $t1, (0x00FFFFFF & 0xFFFF) # ori $t1, $t1, 0xffff
/* AE3AD0 8006C930 00696824 */  and   $t5, $v1, $t1
/* AE3AD4 8006C934 3C0A8000 */  li    $t2, 0x80000000 # 0.000000
/* AE3AD8 8006C938 018D7821 */  addu  $t7, $t4, $t5
/* AE3ADC 8006C93C 01EA1021 */  addu  $v0, $t7, $t2
/* AE3AE0 8006C940 8C440000 */  lw    $a0, ($v0)
/* AE3AE4 8006C944 8C460004 */  lw    $a2, 4($v0)
/* AE3AE8 8006C948 8C470008 */  lw    $a3, 8($v0)
/* AE3AEC 8006C94C 0004C100 */  sll   $t8, $a0, 4
/* AE3AF0 8006C950 0018CF02 */  srl   $t9, $t8, 0x1c
/* AE3AF4 8006C954 00195880 */  sll   $t3, $t9, 2
/* AE3AF8 8006C958 010B6021 */  addu  $t4, $t0, $t3
/* AE3AFC 8006C95C 8D8D0000 */  lw    $t5, ($t4)
/* AE3B00 8006C960 0006C900 */  sll   $t9, $a2, 4
/* AE3B04 8006C964 00195F02 */  srl   $t3, $t9, 0x1c
/* AE3B08 8006C968 00897824 */  and   $t7, $a0, $t1
/* AE3B0C 8006C96C 000B6080 */  sll   $t4, $t3, 2
/* AE3B10 8006C970 01AFC021 */  addu  $t8, $t5, $t7
/* AE3B14 8006C974 010C6821 */  addu  $t5, $t0, $t4
/* AE3B18 8006C978 00075900 */  sll   $t3, $a3, 4
/* AE3B1C 8006C97C 8DAF0000 */  lw    $t7, ($t5)
/* AE3B20 8006C980 000B6702 */  srl   $t4, $t3, 0x1c
/* AE3B24 8006C984 000C6880 */  sll   $t5, $t4, 2
/* AE3B28 8006C988 030A9821 */  addu  $s3, $t8, $t2
/* AE3B2C 8006C98C 3C0C8016 */  lui   $t4, %hi(gGameInfo)
/* AE3B30 8006C990 8D8CFA90 */  lw    $t4, %lo(gGameInfo)($t4)
/* AE3B34 8006C994 00C9C024 */  and   $t8, $a2, $t1
/* AE3B38 8006C998 01F8C821 */  addu  $t9, $t7, $t8
/* AE3B3C 8006C99C 010D7821 */  addu  $t7, $t0, $t5
/* AE3B40 8006C9A0 858D0110 */  lh    $t5, 0x110($t4)
/* AE3B44 8006C9A4 C4A20014 */  lwc1  $f2, 0x14($a1)
/* AE3B48 8006C9A8 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AE3B4C 8006C9AC 448D2000 */  mtc1  $t5, $f4
/* AE3B50 8006C9B0 44815000 */  mtc1  $at, $f10
/* AE3B54 8006C9B4 44806000 */  mtc1  $zero, $f12
/* AE3B58 8006C9B8 468021A0 */  cvt.s.w $f6, $f4
/* AE3B5C 8006C9BC C4B20018 */  lwc1  $f18, 0x18($a1)
/* AE3B60 8006C9C0 8DF80000 */  lw    $t8, ($t7)
/* AE3B64 8006C9C4 032AA021 */  addu  $s4, $t9, $t2
/* AE3B68 8006C9C8 00E9C824 */  and   $t9, $a3, $t1
/* AE3B6C 8006C9CC 4602603E */  c.le.s $f12, $f2
/* AE3B70 8006C9D0 46061202 */  mul.s $f8, $f2, $f6
/* AE3B74 8006C9D4 03195821 */  addu  $t3, $t8, $t9
/* AE3B78 8006C9D8 016AA821 */  addu  $s5, $t3, $t2
/* AE3B7C 8006C9DC 8CB0001C */  lw    $s0, 0x1c($a1)
/* AE3B80 8006C9E0 3C0142C8 */  li    $at, 0x42C80000 # 0.000000
/* AE3B84 8006C9E4 2417000C */  li    $s7, 12
/* AE3B88 8006C9E8 241E0001 */  li    $fp, 1
/* AE3B8C 8006C9EC 460A4402 */  mul.s $f16, $f8, $f10
/* AE3B90 8006C9F0 46109100 */  add.s $f4, $f18, $f16
/* AE3B94 8006C9F4 45000008 */  bc1f  .L8006CA18
/* AE3B98 8006C9F8 E4A40018 */   swc1  $f4, 0x18($a1)
/* AE3B9C 8006C9FC 8FAF0074 */  lw    $t7, 0x74($sp)
/* AE3BA0 8006CA00 C5E00010 */  lwc1  $f0, 0x10($t7)
/* AE3BA4 8006CA04 C5E60018 */  lwc1  $f6, 0x18($t7)
/* AE3BA8 8006CA08 4606003C */  c.lt.s $f0, $f6
/* AE3BAC 8006CA0C 00000000 */  nop   
/* AE3BB0 8006CA10 4503000C */  bc1tl .L8006CA44
/* AE3BB4 8006CA14 8FB90074 */   lw    $t9, 0x74($sp)
.L8006CA18:
/* AE3BB8 8006CA18 460C103C */  c.lt.s $f2, $f12
/* AE3BBC 8006CA1C 8FB80074 */  lw    $t8, 0x74($sp)
/* AE3BC0 8006CA20 4502000C */  bc1fl .L8006CA54
/* AE3BC4 8006CA24 8FAC0074 */   lw    $t4, 0x74($sp)
/* AE3BC8 8006CA28 C7000010 */  lwc1  $f0, 0x10($t8)
/* AE3BCC 8006CA2C C7080018 */  lwc1  $f8, 0x18($t8)
/* AE3BD0 8006CA30 4600403C */  c.lt.s $f8, $f0
/* AE3BD4 8006CA34 00000000 */  nop   
/* AE3BD8 8006CA38 45020006 */  bc1fl .L8006CA54
/* AE3BDC 8006CA3C 8FAC0074 */   lw    $t4, 0x74($sp)
/* AE3BE0 8006CA40 8FB90074 */  lw    $t9, 0x74($sp)
.L8006CA44:
/* AE3BE4 8006CA44 240B0001 */  li    $t3, 1
/* AE3BE8 8006CA48 E7200018 */  swc1  $f0, 0x18($t9)
/* AE3BEC 8006CA4C AFAB0058 */  sw    $t3, 0x58($sp)
/* AE3BF0 8006CA50 8FAC0074 */  lw    $t4, 0x74($sp)
.L8006CA54:
/* AE3BF4 8006CA54 AFA0005C */  sw    $zero, 0x5c($sp)
/* AE3BF8 8006CA58 918D0000 */  lbu   $t5, ($t4)
/* AE3BFC 8006CA5C 59A00044 */  blezl $t5, .L8006CB70
/* AE3C00 8006CA60 8FBF0054 */   lw    $ra, 0x54($sp)
/* AE3C04 8006CA64 4481C000 */  mtc1  $at, $f24
/* AE3C08 8006CA68 3C018014 */  lui   $at, %hi(D_8013BB1C)
/* AE3C0C 8006CA6C C436BB1C */  lwc1  $f22, %lo(D_8013BB1C)($at)
/* AE3C10 8006CA70 3C014480 */  li    $at, 0x44800000 # 0.000000
/* AE3C14 8006CA74 4481A000 */  mtc1  $at, $f20
/* AE3C18 8006CA78 24160003 */  li    $s6, 3
/* AE3C1C 8006CA7C 00009025 */  move  $s2, $zero
.L8006CA80:
/* AE3C20 8006CA80 00008825 */  move  $s1, $zero
.L8006CA84:
/* AE3C24 8006CA84 92660000 */  lbu   $a2, ($s3)
/* AE3C28 8006CA88 8FB90074 */  lw    $t9, 0x74($sp)
/* AE3C2C 8006CA8C 02802825 */  move  $a1, $s4
/* AE3C30 8006CA90 14C0000E */  bnez  $a2, .L8006CACC
/* AE3C34 8006CA94 00000000 */   nop   
/* AE3C38 8006CA98 96AE0000 */  lhu   $t6, ($s5)
/* AE3C3C 8006CA9C 3C014F80 */  li    $at, 0x4F800000 # 0.000000
/* AE3C40 8006CAA0 448E5000 */  mtc1  $t6, $f10
/* AE3C44 8006CAA4 05C10004 */  bgez  $t6, .L8006CAB8
/* AE3C48 8006CAA8 46805020 */   cvt.s.w $f0, $f10
/* AE3C4C 8006CAAC 44819000 */  mtc1  $at, $f18
/* AE3C50 8006CAB0 00000000 */  nop   
/* AE3C54 8006CAB4 46120000 */  add.s $f0, $f0, $f18
.L8006CAB8:
/* AE3C58 8006CAB8 4600040D */  trunc.w.s $f16, $f0
/* AE3C5C 8006CABC 26B50002 */  addiu $s5, $s5, 2
/* AE3C60 8006CAC0 44188000 */  mfc1  $t8, $f16
/* AE3C64 8006CAC4 1000001A */  b     .L8006CB30
/* AE3C68 8006CAC8 A6180000 */   sh    $t8, ($s0)
.L8006CACC:
/* AE3C6C 8006CACC 0C01B16A */  jal   func_8006C5A8
/* AE3C70 8006CAD0 C72C0018 */   lwc1  $f12, 0x18($t9)
/* AE3C74 8006CAD4 926B0000 */  lbu   $t3, ($s3)
/* AE3C78 8006CAD8 01770019 */  multu $t3, $s7
/* AE3C7C 8006CADC 00006012 */  mflo  $t4
/* AE3C80 8006CAE0 028CA021 */  addu  $s4, $s4, $t4
/* AE3C84 8006CAE4 16400006 */  bnez  $s2, .L8006CB00
/* AE3C88 8006CAE8 00000000 */   nop   
/* AE3C8C 8006CAEC 46140102 */  mul.s $f4, $f0, $f20
/* AE3C90 8006CAF0 4600218D */  trunc.w.s $f6, $f4
/* AE3C94 8006CAF4 440E3000 */  mfc1  $t6, $f6
/* AE3C98 8006CAF8 1000000D */  b     .L8006CB30
/* AE3C9C 8006CAFC A60E0000 */   sh    $t6, ($s0)
.L8006CB00:
/* AE3CA0 8006CB00 165E0006 */  bne   $s2, $fp, .L8006CB1C
/* AE3CA4 8006CB04 00000000 */   nop   
/* AE3CA8 8006CB08 46160202 */  mul.s $f8, $f0, $f22
/* AE3CAC 8006CB0C 4600428D */  trunc.w.s $f10, $f8
/* AE3CB0 8006CB10 44185000 */  mfc1  $t8, $f10
/* AE3CB4 8006CB14 10000006 */  b     .L8006CB30
/* AE3CB8 8006CB18 A6180000 */   sh    $t8, ($s0)
.L8006CB1C:
/* AE3CBC 8006CB1C 46180482 */  mul.s $f18, $f0, $f24
/* AE3CC0 8006CB20 4600940D */  trunc.w.s $f16, $f18
/* AE3CC4 8006CB24 440B8000 */  mfc1  $t3, $f16
/* AE3CC8 8006CB28 00000000 */  nop   
/* AE3CCC 8006CB2C A60B0000 */  sh    $t3, ($s0)
.L8006CB30:
/* AE3CD0 8006CB30 26310001 */  addiu $s1, $s1, 1
/* AE3CD4 8006CB34 26730001 */  addiu $s3, $s3, 1
/* AE3CD8 8006CB38 1636FFD2 */  bne   $s1, $s6, .L8006CA84
/* AE3CDC 8006CB3C 26100002 */   addiu $s0, $s0, 2
/* AE3CE0 8006CB40 26520001 */  addiu $s2, $s2, 1
/* AE3CE4 8006CB44 5656FFCF */  bnel  $s2, $s6, .L8006CA84
/* AE3CE8 8006CB48 00008825 */   move  $s1, $zero
/* AE3CEC 8006CB4C 8FAC005C */  lw    $t4, 0x5c($sp)
/* AE3CF0 8006CB50 8FAE0074 */  lw    $t6, 0x74($sp)
/* AE3CF4 8006CB54 258D0001 */  addiu $t5, $t4, 1
/* AE3CF8 8006CB58 AFAD005C */  sw    $t5, 0x5c($sp)
/* AE3CFC 8006CB5C 91CF0000 */  lbu   $t7, ($t6)
/* AE3D00 8006CB60 01AF082A */  slt   $at, $t5, $t7
/* AE3D04 8006CB64 5420FFC6 */  bnezl $at, .L8006CA80
/* AE3D08 8006CB68 00009025 */   move  $s2, $zero
/* AE3D0C 8006CB6C 8FBF0054 */  lw    $ra, 0x54($sp)
.L8006CB70:
/* AE3D10 8006CB70 8FA20058 */  lw    $v0, 0x58($sp)
/* AE3D14 8006CB74 D7B40018 */  ldc1  $f20, 0x18($sp)
/* AE3D18 8006CB78 D7B60020 */  ldc1  $f22, 0x20($sp)
/* AE3D1C 8006CB7C D7B80028 */  ldc1  $f24, 0x28($sp)
/* AE3D20 8006CB80 8FB00030 */  lw    $s0, 0x30($sp)
/* AE3D24 8006CB84 8FB10034 */  lw    $s1, 0x34($sp)
/* AE3D28 8006CB88 8FB20038 */  lw    $s2, 0x38($sp)
/* AE3D2C 8006CB8C 8FB3003C */  lw    $s3, 0x3c($sp)
/* AE3D30 8006CB90 8FB40040 */  lw    $s4, 0x40($sp)
/* AE3D34 8006CB94 8FB50044 */  lw    $s5, 0x44($sp)
/* AE3D38 8006CB98 8FB60048 */  lw    $s6, 0x48($sp)
/* AE3D3C 8006CB9C 8FB7004C */  lw    $s7, 0x4c($sp)
/* AE3D40 8006CBA0 8FBE0050 */  lw    $fp, 0x50($sp)
/* AE3D44 8006CBA4 03E00008 */  jr    $ra
/* AE3D48 8006CBA8 27BD0070 */   addiu $sp, $sp, 0x70

