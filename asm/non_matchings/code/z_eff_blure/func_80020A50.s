glabel func_80020A50
/* A97BF0 80020A50 27BDFFC8 */  addiu $sp, $sp, -0x38
/* A97BF4 80020A54 AFBF002C */  sw    $ra, 0x2c($sp)
/* A97BF8 80020A58 AFB20028 */  sw    $s2, 0x28($sp)
/* A97BFC 80020A5C AFB10024 */  sw    $s1, 0x24($sp)
/* A97C00 80020A60 AFB00020 */  sw    $s0, 0x20($sp)
/* A97C04 80020A64 F7B40018 */  sdc1  $f20, 0x18($sp)
/* A97C08 80020A68 AFA5003C */  sw    $a1, 0x3c($sp)
/* A97C0C 80020A6C 8C8E0180 */  lw    $t6, 0x180($a0)
/* A97C10 80020A70 4486A000 */  mtc1  $a2, $f20
/* A97C14 80020A74 00E08825 */  move  $s1, $a3
/* A97C18 80020A78 2DC10005 */  sltiu $at, $t6, 5
/* A97C1C 80020A7C 102000E3 */  beqz  $at, .L80020E0C
/* A97C20 80020A80 00809025 */   move  $s2, $a0
/* A97C24 80020A84 000E7080 */  sll   $t6, $t6, 2
/* A97C28 80020A88 3C018013 */  lui   $at, %hi(jtbl_80135434)
/* A97C2C 80020A8C 002E0821 */  addu  $at, $at, $t6
/* A97C30 80020A90 8C2E5434 */  lw    $t6, %lo(jtbl_80135434)($at)
/* A97C34 80020A94 01C00008 */  jr    $t6
/* A97C38 80020A98 00000000 */   nop   
/* A97C3C 80020A9C 8FAF003C */  lw    $t7, 0x3c($sp)
/* A97C40 80020AA0 4406A000 */  mfc1  $a2, $f20
/* A97C44 80020AA4 000FC080 */  sll   $t8, $t7, 2
/* A97C48 80020AA8 030FC023 */  subu  $t8, $t8, $t7
/* A97C4C 80020AAC 0018C0C0 */  sll   $t8, $t8, 3
/* A97C50 80020AB0 02588021 */  addu  $s0, $s2, $t8
/* A97C54 80020AB4 86040008 */  lh    $a0, 8($s0)
/* A97C58 80020AB8 0C009F8D */  jal   func_80027E34
/* A97C5C 80020ABC 8605000E */   lh    $a1, 0xe($s0)
/* A97C60 80020AC0 A6220000 */  sh    $v0, ($s1)
/* A97C64 80020AC4 4406A000 */  mfc1  $a2, $f20
/* A97C68 80020AC8 86050010 */  lh    $a1, 0x10($s0)
/* A97C6C 80020ACC 0C009F8D */  jal   func_80027E34
/* A97C70 80020AD0 8604000A */   lh    $a0, 0xa($s0)
/* A97C74 80020AD4 A6220002 */  sh    $v0, 2($s1)
/* A97C78 80020AD8 4406A000 */  mfc1  $a2, $f20
/* A97C7C 80020ADC 86050012 */  lh    $a1, 0x12($s0)
/* A97C80 80020AE0 0C009F8D */  jal   func_80027E34
/* A97C84 80020AE4 8604000C */   lh    $a0, 0xc($s0)
/* A97C88 80020AE8 8FA30048 */  lw    $v1, 0x48($sp)
/* A97C8C 80020AEC A6220004 */  sh    $v0, 4($s1)
/* A97C90 80020AF0 8619000E */  lh    $t9, 0xe($s0)
/* A97C94 80020AF4 A4790000 */  sh    $t9, ($v1)
/* A97C98 80020AF8 86080010 */  lh    $t0, 0x10($s0)
/* A97C9C 80020AFC A4680002 */  sh    $t0, 2($v1)
/* A97CA0 80020B00 86090012 */  lh    $t1, 0x12($s0)
/* A97CA4 80020B04 100000D3 */  b     .L80020E54
/* A97CA8 80020B08 A4690004 */   sh    $t1, 4($v1)
/* A97CAC 80020B0C 8FAA003C */  lw    $t2, 0x3c($sp)
/* A97CB0 80020B10 4406A000 */  mfc1  $a2, $f20
/* A97CB4 80020B14 000A5880 */  sll   $t3, $t2, 2
/* A97CB8 80020B18 016A5823 */  subu  $t3, $t3, $t2
/* A97CBC 80020B1C 000B58C0 */  sll   $t3, $t3, 3
/* A97CC0 80020B20 024B8021 */  addu  $s0, $s2, $t3
/* A97CC4 80020B24 860C0008 */  lh    $t4, 8($s0)
/* A97CC8 80020B28 A62C0000 */  sh    $t4, ($s1)
/* A97CCC 80020B2C 860D000A */  lh    $t5, 0xa($s0)
/* A97CD0 80020B30 A62D0002 */  sh    $t5, 2($s1)
/* A97CD4 80020B34 860E000C */  lh    $t6, 0xc($s0)
/* A97CD8 80020B38 A62E0004 */  sh    $t6, 4($s1)
/* A97CDC 80020B3C 86050008 */  lh    $a1, 8($s0)
/* A97CE0 80020B40 0C009F8D */  jal   func_80027E34
/* A97CE4 80020B44 8604000E */   lh    $a0, 0xe($s0)
/* A97CE8 80020B48 8FA30048 */  lw    $v1, 0x48($sp)
/* A97CEC 80020B4C 4406A000 */  mfc1  $a2, $f20
/* A97CF0 80020B50 A4620000 */  sh    $v0, ($v1)
/* A97CF4 80020B54 8605000A */  lh    $a1, 0xa($s0)
/* A97CF8 80020B58 0C009F8D */  jal   func_80027E34
/* A97CFC 80020B5C 86040010 */   lh    $a0, 0x10($s0)
/* A97D00 80020B60 8FA30048 */  lw    $v1, 0x48($sp)
/* A97D04 80020B64 4406A000 */  mfc1  $a2, $f20
/* A97D08 80020B68 A4620002 */  sh    $v0, 2($v1)
/* A97D0C 80020B6C 8605000C */  lh    $a1, 0xc($s0)
/* A97D10 80020B70 0C009F8D */  jal   func_80027E34
/* A97D14 80020B74 86040012 */   lh    $a0, 0x12($s0)
/* A97D18 80020B78 8FA30048 */  lw    $v1, 0x48($sp)
/* A97D1C 80020B7C 100000B5 */  b     .L80020E54
/* A97D20 80020B80 A4620004 */   sh    $v0, 4($v1)
/* A97D24 80020B84 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* A97D28 80020B88 44811000 */  mtc1  $at, $f2
/* A97D2C 80020B8C 8FAF003C */  lw    $t7, 0x3c($sp)
/* A97D30 80020B90 4602A502 */  mul.s $f20, $f20, $f2
/* A97D34 80020B94 000FC080 */  sll   $t8, $t7, 2
/* A97D38 80020B98 030FC023 */  subu  $t8, $t8, $t7
/* A97D3C 80020B9C 0018C0C0 */  sll   $t8, $t8, 3
/* A97D40 80020BA0 02588021 */  addu  $s0, $s2, $t8
/* A97D44 80020BA4 86040008 */  lh    $a0, 8($s0)
/* A97D48 80020BA8 8605000E */  lh    $a1, 0xe($s0)
/* A97D4C 80020BAC 4406A000 */  mfc1  $a2, $f20
/* A97D50 80020BB0 0C009F8D */  jal   func_80027E34
/* A97D54 80020BB4 00000000 */   nop   
/* A97D58 80020BB8 A6220000 */  sh    $v0, ($s1)
/* A97D5C 80020BBC 4406A000 */  mfc1  $a2, $f20
/* A97D60 80020BC0 86050010 */  lh    $a1, 0x10($s0)
/* A97D64 80020BC4 0C009F8D */  jal   func_80027E34
/* A97D68 80020BC8 8604000A */   lh    $a0, 0xa($s0)
/* A97D6C 80020BCC A6220002 */  sh    $v0, 2($s1)
/* A97D70 80020BD0 4406A000 */  mfc1  $a2, $f20
/* A97D74 80020BD4 86050012 */  lh    $a1, 0x12($s0)
/* A97D78 80020BD8 0C009F8D */  jal   func_80027E34
/* A97D7C 80020BDC 8604000C */   lh    $a0, 0xc($s0)
/* A97D80 80020BE0 A6220004 */  sh    $v0, 4($s1)
/* A97D84 80020BE4 4406A000 */  mfc1  $a2, $f20
/* A97D88 80020BE8 86050008 */  lh    $a1, 8($s0)
/* A97D8C 80020BEC 0C009F8D */  jal   func_80027E34
/* A97D90 80020BF0 8604000E */   lh    $a0, 0xe($s0)
/* A97D94 80020BF4 8FA30048 */  lw    $v1, 0x48($sp)
/* A97D98 80020BF8 4406A000 */  mfc1  $a2, $f20
/* A97D9C 80020BFC A4620000 */  sh    $v0, ($v1)
/* A97DA0 80020C00 8605000A */  lh    $a1, 0xa($s0)
/* A97DA4 80020C04 0C009F8D */  jal   func_80027E34
/* A97DA8 80020C08 86040010 */   lh    $a0, 0x10($s0)
/* A97DAC 80020C0C 8FA30048 */  lw    $v1, 0x48($sp)
/* A97DB0 80020C10 4406A000 */  mfc1  $a2, $f20
/* A97DB4 80020C14 A4620002 */  sh    $v0, 2($v1)
/* A97DB8 80020C18 8605000C */  lh    $a1, 0xc($s0)
/* A97DBC 80020C1C 0C009F8D */  jal   func_80027E34
/* A97DC0 80020C20 86040012 */   lh    $a0, 0x12($s0)
/* A97DC4 80020C24 8FA30048 */  lw    $v1, 0x48($sp)
/* A97DC8 80020C28 4614A500 */  add.s $f20, $f20, $f20
/* A97DCC 80020C2C 10000089 */  b     .L80020E54
/* A97DD0 80020C30 A4620004 */   sh    $v0, 4($v1)
/* A97DD4 80020C34 8FB9003C */  lw    $t9, 0x3c($sp)
/* A97DD8 80020C38 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* A97DDC 80020C3C 44811000 */  mtc1  $at, $f2
/* A97DE0 80020C40 00194080 */  sll   $t0, $t9, 2
/* A97DE4 80020C44 01194023 */  subu  $t0, $t0, $t9
/* A97DE8 80020C48 000840C0 */  sll   $t0, $t0, 3
/* A97DEC 80020C4C 02488021 */  addu  $s0, $s2, $t0
/* A97DF0 80020C50 86090008 */  lh    $t1, 8($s0)
/* A97DF4 80020C54 860A000E */  lh    $t2, 0xe($s0)
/* A97DF8 80020C58 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* A97DFC 80020C5C 44813000 */  mtc1  $at, $f6
/* A97E00 80020C60 012A5823 */  subu  $t3, $t1, $t2
/* A97E04 80020C64 A7AB0030 */  sh    $t3, 0x30($sp)
/* A97E08 80020C68 87A80030 */  lh    $t0, 0x30($sp)
/* A97E0C 80020C6C 860D0010 */  lh    $t5, 0x10($s0)
/* A97E10 80020C70 860C000A */  lh    $t4, 0xa($s0)
/* A97E14 80020C74 44884000 */  mtc1  $t0, $f8
/* A97E18 80020C78 018D7023 */  subu  $t6, $t4, $t5
/* A97E1C 80020C7C A7AE0032 */  sh    $t6, 0x32($sp)
/* A97E20 80020C80 468042A0 */  cvt.s.w $f10, $f8
/* A97E24 80020C84 86180012 */  lh    $t8, 0x12($s0)
/* A97E28 80020C88 860F000C */  lh    $t7, 0xc($s0)
/* A97E2C 80020C8C 01F8C823 */  subu  $t9, $t7, $t8
/* A97E30 80020C90 A7B90034 */  sh    $t9, 0x34($sp)
/* A97E34 80020C94 46025402 */  mul.s $f16, $f10, $f2
/* A97E38 80020C98 C6440184 */  lwc1  $f4, 0x184($s2)
/* A97E3C 80020C9C 86090008 */  lh    $t1, 8($s0)
/* A97E40 80020CA0 46062001 */  sub.s $f0, $f4, $f6
/* A97E44 80020CA4 44893000 */  mtc1  $t1, $f6
/* A97E48 80020CA8 46008482 */  mul.s $f18, $f16, $f0
/* A97E4C 80020CAC 46803220 */  cvt.s.w $f8, $f6
/* A97E50 80020CB0 46149102 */  mul.s $f4, $f18, $f20
/* A97E54 80020CB4 46082280 */  add.s $f10, $f4, $f8
/* A97E58 80020CB8 4600540D */  trunc.w.s $f16, $f10
/* A97E5C 80020CBC 440B8000 */  mfc1  $t3, $f16
/* A97E60 80020CC0 00000000 */  nop   
/* A97E64 80020CC4 A62B0000 */  sh    $t3, ($s1)
/* A97E68 80020CC8 87AC0032 */  lh    $t4, 0x32($sp)
/* A97E6C 80020CCC 860D000A */  lh    $t5, 0xa($s0)
/* A97E70 80020CD0 448C9000 */  mtc1  $t4, $f18
/* A97E74 80020CD4 448D8000 */  mtc1  $t5, $f16
/* A97E78 80020CD8 468091A0 */  cvt.s.w $f6, $f18
/* A97E7C 80020CDC 468084A0 */  cvt.s.w $f18, $f16
/* A97E80 80020CE0 46023102 */  mul.s $f4, $f6, $f2
/* A97E84 80020CE4 00000000 */  nop   
/* A97E88 80020CE8 46002202 */  mul.s $f8, $f4, $f0
/* A97E8C 80020CEC 00000000 */  nop   
/* A97E90 80020CF0 46144282 */  mul.s $f10, $f8, $f20
/* A97E94 80020CF4 46125180 */  add.s $f6, $f10, $f18
/* A97E98 80020CF8 4600310D */  trunc.w.s $f4, $f6
/* A97E9C 80020CFC 440F2000 */  mfc1  $t7, $f4
/* A97EA0 80020D00 00000000 */  nop   
/* A97EA4 80020D04 A62F0002 */  sh    $t7, 2($s1)
/* A97EA8 80020D08 87B80034 */  lh    $t8, 0x34($sp)
/* A97EAC 80020D0C 8619000C */  lh    $t9, 0xc($s0)
/* A97EB0 80020D10 8FA30048 */  lw    $v1, 0x48($sp)
/* A97EB4 80020D14 44984000 */  mtc1  $t8, $f8
/* A97EB8 80020D18 44992000 */  mtc1  $t9, $f4
/* A97EBC 80020D1C 46804420 */  cvt.s.w $f16, $f8
/* A97EC0 80020D20 46802220 */  cvt.s.w $f8, $f4
/* A97EC4 80020D24 46028282 */  mul.s $f10, $f16, $f2
/* A97EC8 80020D28 00000000 */  nop   
/* A97ECC 80020D2C 46005482 */  mul.s $f18, $f10, $f0
/* A97ED0 80020D30 00000000 */  nop   
/* A97ED4 80020D34 46149182 */  mul.s $f6, $f18, $f20
/* A97ED8 80020D38 46083400 */  add.s $f16, $f6, $f8
/* A97EDC 80020D3C 4600828D */  trunc.w.s $f10, $f16
/* A97EE0 80020D40 44095000 */  mfc1  $t1, $f10
/* A97EE4 80020D44 00000000 */  nop   
/* A97EE8 80020D48 A6290004 */  sh    $t1, 4($s1)
/* A97EEC 80020D4C 87AB0030 */  lh    $t3, 0x30($sp)
/* A97EF0 80020D50 860A000E */  lh    $t2, 0xe($s0)
/* A97EF4 80020D54 448B3000 */  mtc1  $t3, $f6
/* A97EF8 80020D58 448A9000 */  mtc1  $t2, $f18
/* A97EFC 80020D5C 46803220 */  cvt.s.w $f8, $f6
/* A97F00 80020D60 46809120 */  cvt.s.w $f4, $f18
/* A97F04 80020D64 46024402 */  mul.s $f16, $f8, $f2
/* A97F08 80020D68 00000000 */  nop   
/* A97F0C 80020D6C 46008282 */  mul.s $f10, $f16, $f0
/* A97F10 80020D70 00000000 */  nop   
/* A97F14 80020D74 46145482 */  mul.s $f18, $f10, $f20
/* A97F18 80020D78 46122181 */  sub.s $f6, $f4, $f18
/* A97F1C 80020D7C 4600320D */  trunc.w.s $f8, $f6
/* A97F20 80020D80 440D4000 */  mfc1  $t5, $f8
/* A97F24 80020D84 00000000 */  nop   
/* A97F28 80020D88 A46D0000 */  sh    $t5, ($v1)
/* A97F2C 80020D8C 87AF0032 */  lh    $t7, 0x32($sp)
/* A97F30 80020D90 860E0010 */  lh    $t6, 0x10($s0)
/* A97F34 80020D94 448F2000 */  mtc1  $t7, $f4
/* A97F38 80020D98 448E8000 */  mtc1  $t6, $f16
/* A97F3C 80020D9C 468024A0 */  cvt.s.w $f18, $f4
/* A97F40 80020DA0 468082A0 */  cvt.s.w $f10, $f16
/* A97F44 80020DA4 46029182 */  mul.s $f6, $f18, $f2
/* A97F48 80020DA8 00000000 */  nop   
/* A97F4C 80020DAC 46003202 */  mul.s $f8, $f6, $f0
/* A97F50 80020DB0 00000000 */  nop   
/* A97F54 80020DB4 46144402 */  mul.s $f16, $f8, $f20
/* A97F58 80020DB8 46105101 */  sub.s $f4, $f10, $f16
/* A97F5C 80020DBC 4600248D */  trunc.w.s $f18, $f4
/* A97F60 80020DC0 44199000 */  mfc1  $t9, $f18
/* A97F64 80020DC4 00000000 */  nop   
/* A97F68 80020DC8 A4790002 */  sh    $t9, 2($v1)
/* A97F6C 80020DCC 87A90034 */  lh    $t1, 0x34($sp)
/* A97F70 80020DD0 86080012 */  lh    $t0, 0x12($s0)
/* A97F74 80020DD4 44895000 */  mtc1  $t1, $f10
/* A97F78 80020DD8 44883000 */  mtc1  $t0, $f6
/* A97F7C 80020DDC 46805420 */  cvt.s.w $f16, $f10
/* A97F80 80020DE0 46803220 */  cvt.s.w $f8, $f6
/* A97F84 80020DE4 46028102 */  mul.s $f4, $f16, $f2
/* A97F88 80020DE8 00000000 */  nop   
/* A97F8C 80020DEC 46002482 */  mul.s $f18, $f4, $f0
/* A97F90 80020DF0 00000000 */  nop   
/* A97F94 80020DF4 46149182 */  mul.s $f6, $f18, $f20
/* A97F98 80020DF8 46064281 */  sub.s $f10, $f8, $f6
/* A97F9C 80020DFC 4600540D */  trunc.w.s $f16, $f10
/* A97FA0 80020E00 440B8000 */  mfc1  $t3, $f16
/* A97FA4 80020E04 10000013 */  b     .L80020E54
/* A97FA8 80020E08 A46B0004 */   sh    $t3, 4($v1)
.L80020E0C:
/* A97FAC 80020E0C 8FAC003C */  lw    $t4, 0x3c($sp)
/* A97FB0 80020E10 8FA30048 */  lw    $v1, 0x48($sp)
/* A97FB4 80020E14 000C6880 */  sll   $t5, $t4, 2
/* A97FB8 80020E18 01AC6823 */  subu  $t5, $t5, $t4
/* A97FBC 80020E1C 000D68C0 */  sll   $t5, $t5, 3
/* A97FC0 80020E20 024D8021 */  addu  $s0, $s2, $t5
/* A97FC4 80020E24 860E0008 */  lh    $t6, 8($s0)
/* A97FC8 80020E28 A62E0000 */  sh    $t6, ($s1)
/* A97FCC 80020E2C 860F000A */  lh    $t7, 0xa($s0)
/* A97FD0 80020E30 A62F0002 */  sh    $t7, 2($s1)
/* A97FD4 80020E34 8618000C */  lh    $t8, 0xc($s0)
/* A97FD8 80020E38 A6380004 */  sh    $t8, 4($s1)
/* A97FDC 80020E3C 8619000E */  lh    $t9, 0xe($s0)
/* A97FE0 80020E40 A4790000 */  sh    $t9, ($v1)
/* A97FE4 80020E44 86080010 */  lh    $t0, 0x10($s0)
/* A97FE8 80020E48 A4680002 */  sh    $t0, 2($v1)
/* A97FEC 80020E4C 86090012 */  lh    $t1, 0x12($s0)
/* A97FF0 80020E50 A4690004 */  sh    $t1, 4($v1)
.L80020E54:
/* A97FF4 80020E54 964A0188 */  lhu   $t2, 0x188($s2)
/* A97FF8 80020E58 8FA30050 */  lw    $v1, 0x50($sp)
/* A97FFC 80020E5C 8FB0004C */  lw    $s0, 0x4c($sp)
/* A98000 80020E60 314B0010 */  andi  $t3, $t2, 0x10
/* A98004 80020E64 1160000A */  beqz  $t3, .L80020E90
/* A98008 80020E68 240200FF */   li    $v0, 255
/* A9800C 80020E6C A2020003 */  sb    $v0, 3($s0)
/* A98010 80020E70 A2020002 */  sb    $v0, 2($s0)
/* A98014 80020E74 A2020001 */  sb    $v0, 1($s0)
/* A98018 80020E78 A2020000 */  sb    $v0, ($s0)
/* A9801C 80020E7C A0620000 */  sb    $v0, ($v1)
/* A98020 80020E80 A0620001 */  sb    $v0, 1($v1)
/* A98024 80020E84 A0620002 */  sb    $v0, 2($v1)
/* A98028 80020E88 1000002E */  b     .L80020F44
/* A9802C 80020E8C A0620003 */   sb    $v0, 3($v1)
.L80020E90:
/* A98030 80020E90 4406A000 */  mfc1  $a2, $f20
/* A98034 80020E94 9244018E */  lbu   $a0, 0x18e($s2)
/* A98038 80020E98 0C009FA1 */  jal   func_80027E84
/* A9803C 80020E9C 92450196 */   lbu   $a1, 0x196($s2)
/* A98040 80020EA0 8FB0004C */  lw    $s0, 0x4c($sp)
/* A98044 80020EA4 4406A000 */  mfc1  $a2, $f20
/* A98048 80020EA8 A2020000 */  sb    $v0, ($s0)
/* A9804C 80020EAC 92450197 */  lbu   $a1, 0x197($s2)
/* A98050 80020EB0 0C009FA1 */  jal   func_80027E84
/* A98054 80020EB4 9244018F */   lbu   $a0, 0x18f($s2)
/* A98058 80020EB8 A2020001 */  sb    $v0, 1($s0)
/* A9805C 80020EBC 4406A000 */  mfc1  $a2, $f20
/* A98060 80020EC0 92450198 */  lbu   $a1, 0x198($s2)
/* A98064 80020EC4 0C009FA1 */  jal   func_80027E84
/* A98068 80020EC8 92440190 */   lbu   $a0, 0x190($s2)
/* A9806C 80020ECC A2020002 */  sb    $v0, 2($s0)
/* A98070 80020ED0 4406A000 */  mfc1  $a2, $f20
/* A98074 80020ED4 92450199 */  lbu   $a1, 0x199($s2)
/* A98078 80020ED8 0C009FA1 */  jal   func_80027E84
/* A9807C 80020EDC 92440191 */   lbu   $a0, 0x191($s2)
/* A98080 80020EE0 A2020003 */  sb    $v0, 3($s0)
/* A98084 80020EE4 4406A000 */  mfc1  $a2, $f20
/* A98088 80020EE8 9245019A */  lbu   $a1, 0x19a($s2)
/* A9808C 80020EEC 0C009FA1 */  jal   func_80027E84
/* A98090 80020EF0 92440192 */   lbu   $a0, 0x192($s2)
/* A98094 80020EF4 8FA30050 */  lw    $v1, 0x50($sp)
/* A98098 80020EF8 4406A000 */  mfc1  $a2, $f20
/* A9809C 80020EFC A0620000 */  sb    $v0, ($v1)
/* A980A0 80020F00 9245019B */  lbu   $a1, 0x19b($s2)
/* A980A4 80020F04 0C009FA1 */  jal   func_80027E84
/* A980A8 80020F08 92440193 */   lbu   $a0, 0x193($s2)
/* A980AC 80020F0C 8FA30050 */  lw    $v1, 0x50($sp)
/* A980B0 80020F10 4406A000 */  mfc1  $a2, $f20
/* A980B4 80020F14 A0620001 */  sb    $v0, 1($v1)
/* A980B8 80020F18 9245019C */  lbu   $a1, 0x19c($s2)
/* A980BC 80020F1C 0C009FA1 */  jal   func_80027E84
/* A980C0 80020F20 92440194 */   lbu   $a0, 0x194($s2)
/* A980C4 80020F24 8FA30050 */  lw    $v1, 0x50($sp)
/* A980C8 80020F28 4406A000 */  mfc1  $a2, $f20
/* A980CC 80020F2C A0620002 */  sb    $v0, 2($v1)
/* A980D0 80020F30 9245019D */  lbu   $a1, 0x19d($s2)
/* A980D4 80020F34 0C009FA1 */  jal   func_80027E84
/* A980D8 80020F38 92440195 */   lbu   $a0, 0x195($s2)
/* A980DC 80020F3C 8FA30050 */  lw    $v1, 0x50($sp)
/* A980E0 80020F40 A0620003 */  sb    $v0, 3($v1)
.L80020F44:
/* A980E4 80020F44 8FBF002C */  lw    $ra, 0x2c($sp)
/* A980E8 80020F48 D7B40018 */  ldc1  $f20, 0x18($sp)
/* A980EC 80020F4C 8FB00020 */  lw    $s0, 0x20($sp)
/* A980F0 80020F50 8FB10024 */  lw    $s1, 0x24($sp)
/* A980F4 80020F54 8FB20028 */  lw    $s2, 0x28($sp)
/* A980F8 80020F58 03E00008 */  jr    $ra
/* A980FC 80020F5C 27BD0038 */   addiu $sp, $sp, 0x38

