glabel func_8003C614
/* AB37B4 8003C614 27BDFF48 */  addiu $sp, $sp, -0xb8
/* AB37B8 8003C618 8FAF00C8 */  lw    $t7, 0xc8($sp)
/* AB37BC 8003C61C AFB60058 */  sw    $s6, 0x58($sp)
/* AB37C0 8003C620 8FB600CC */  lw    $s6, 0xcc($sp)
/* AB37C4 8003C624 AFBF0064 */  sw    $ra, 0x64($sp)
/* AB37C8 8003C628 AFBE0060 */  sw    $fp, 0x60($sp)
/* AB37CC 8003C62C AFB7005C */  sw    $s7, 0x5c($sp)
/* AB37D0 8003C630 AFB50054 */  sw    $s5, 0x54($sp)
/* AB37D4 8003C634 AFB40050 */  sw    $s4, 0x50($sp)
/* AB37D8 8003C638 AFB3004C */  sw    $s3, 0x4c($sp)
/* AB37DC 8003C63C AFB20048 */  sw    $s2, 0x48($sp)
/* AB37E0 8003C640 AFB10044 */  sw    $s1, 0x44($sp)
/* AB37E4 8003C644 AFB00040 */  sw    $s0, 0x40($sp)
/* AB37E8 8003C648 F7B80038 */  sdc1  $f24, 0x38($sp)
/* AB37EC 8003C64C F7B60030 */  sdc1  $f22, 0x30($sp)
/* AB37F0 8003C650 F7B40028 */  sdc1  $f20, 0x28($sp)
/* AB37F4 8003C654 AFA400B8 */  sw    $a0, 0xb8($sp)
/* AB37F8 8003C658 AFA600C0 */  sw    $a2, 0xc0($sp)
/* AB37FC 8003C65C AFA700C4 */  sw    $a3, 0xc4($sp)
/* AB3800 8003C660 240E0032 */  li    $t6, 50
/* AB3804 8003C664 ADEE0000 */  sw    $t6, ($t7)
/* AB3808 8003C668 8FB800C4 */  lw    $t8, 0xc4($sp)
/* AB380C 8003C66C 27B200A0 */  addiu $s2, $sp, 0xa0
/* AB3810 8003C670 3C01C6FA */  li    $at, 0xC6FA0000 # 0.000000
/* AB3814 8003C674 AF000000 */  sw    $zero, ($t8)
/* AB3818 8003C678 8EC80000 */  lw    $t0, ($s6)
/* AB381C 8003C67C 8CB50040 */  lw    $s5, 0x40($a1)
/* AB3820 8003C680 4481A000 */  mtc1  $at, $f20
/* AB3824 8003C684 AE480000 */  sw    $t0, ($s2)
/* AB3828 8003C688 8ED90004 */  lw    $t9, 4($s6)
/* AB382C 8003C68C 3C138014 */  lui   $s3, %hi(D_80138950) # $s3, 0x8014
/* AB3830 8003C690 3C148014 */  lui   $s4, %hi(D_80138960) # $s4, 0x8014
/* AB3834 8003C694 AE590004 */  sw    $t9, 4($s2)
/* AB3838 8003C698 8EC80008 */  lw    $t0, 8($s6)
/* AB383C 8003C69C 00A08025 */  move  $s0, $a1
/* AB3840 8003C6A0 30D7FFFF */  andi  $s7, $a2, 0xffff
/* AB3844 8003C6A4 AE480008 */  sw    $t0, 8($s2)
/* AB3848 8003C6A8 8FB100D0 */  lw    $s1, 0xd0($sp)
/* AB384C 8003C6AC 8FBE00D4 */  lw    $fp, 0xd4($sp)
/* AB3850 8003C6B0 C7B800D8 */  lwc1  $f24, 0xd8($sp)
/* AB3854 8003C6B4 26948960 */  addiu $s4, %lo(D_80138960) # addiu $s4, $s4, -0x76a0
/* AB3858 8003C6B8 26738950 */  addiu $s3, %lo(D_80138950) # addiu $s3, $s3, -0x76b0
/* AB385C 8003C6BC 4600A586 */  mov.s $f22, $f20
.L8003C6C0:
/* AB3860 8003C6C0 C7A400A4 */  lwc1  $f4, 0xa4($sp)
/* AB3864 8003C6C4 C6060008 */  lwc1  $f6, 8($s0)
/* AB3868 8003C6C8 02402025 */  move  $a0, $s2
/* AB386C 8003C6CC 02602825 */  move  $a1, $s3
/* AB3870 8003C6D0 4606203C */  c.lt.s $f4, $f6
/* AB3874 8003C6D4 00000000 */  nop   
/* AB3878 8003C6D8 45030026 */  bc1tl .L8003C774
/* AB387C 8003C6DC 8FA900B8 */   lw    $t1, 0xb8($sp)
/* AB3880 8003C6E0 0C00E180 */  jal   func_80038600
/* AB3884 8003C6E4 2406113A */   li    $a2, 4410
/* AB3888 8003C6E8 50400006 */  beql  $v0, $zero, .L8003C704
/* AB388C 8003C6EC 02002025 */   move  $a0, $s0
/* AB3890 8003C6F0 12200003 */  beqz  $s1, .L8003C700
/* AB3894 8003C6F4 02802025 */   move  $a0, $s4
/* AB3898 8003C6F8 0C00084C */  jal   osSyncPrintf
/* AB389C 8003C6FC 86250000 */   lh    $a1, ($s1)
.L8003C700:
/* AB38A0 8003C700 02002025 */  move  $a0, $s0
.L8003C704:
/* AB38A4 8003C704 02A02825 */  move  $a1, $s5
/* AB38A8 8003C708 0C00EB40 */  jal   func_8003AD00
/* AB38AC 8003C70C 02403025 */   move  $a2, $s2
/* AB38B0 8003C710 14400006 */  bnez  $v0, .L8003C72C
/* AB38B4 8003C714 00402025 */   move  $a0, $v0
/* AB38B8 8003C718 C7A800A4 */  lwc1  $f8, 0xa4($sp)
/* AB38BC 8003C71C C60A002C */  lwc1  $f10, 0x2c($s0)
/* AB38C0 8003C720 460A4401 */  sub.s $f16, $f8, $f10
/* AB38C4 8003C724 1000FFE6 */  b     .L8003C6C0
/* AB38C8 8003C728 E7B000A4 */   swc1  $f16, 0xa4($sp)
.L8003C72C:
/* AB38CC 8003C72C 02002825 */  move  $a1, $s0
/* AB38D0 8003C730 32E6FFFF */  andi  $a2, $s7, 0xffff
/* AB38D4 8003C734 8FA700C4 */  lw    $a3, 0xc4($sp)
/* AB38D8 8003C738 AFB60010 */  sw    $s6, 0x10($sp)
/* AB38DC 8003C73C AFBE0014 */  sw    $fp, 0x14($sp)
/* AB38E0 8003C740 E7B80018 */  swc1  $f24, 0x18($sp)
/* AB38E4 8003C744 0C00E64B */  jal   func_8003992C
/* AB38E8 8003C748 E7B4001C */   swc1  $f20, 0x1c($sp)
/* AB38EC 8003C74C 4600A03C */  c.lt.s $f20, $f0
/* AB38F0 8003C750 46000586 */  mov.s $f22, $f0
/* AB38F4 8003C754 C7B200A4 */  lwc1  $f18, 0xa4($sp)
/* AB38F8 8003C758 45030006 */  bc1tl .L8003C774
/* AB38FC 8003C75C 8FA900B8 */   lw    $t1, 0xb8($sp)
/* AB3900 8003C760 C604002C */  lwc1  $f4, 0x2c($s0)
/* AB3904 8003C764 46049181 */  sub.s $f6, $f18, $f4
/* AB3908 8003C768 1000FFD5 */  b     .L8003C6C0
/* AB390C 8003C76C E7A600A4 */   swc1  $f6, 0xa4($sp)
/* AB3910 8003C770 8FA900B8 */  lw    $t1, 0xb8($sp)
.L8003C774:
/* AB3914 8003C774 8FAA00C4 */  lw    $t2, 0xc4($sp)
/* AB3918 8003C778 8FAB00C8 */  lw    $t3, 0xc8($sp)
/* AB391C 8003C77C AFB00070 */  sw    $s0, 0x70($sp)
/* AB3920 8003C780 A7B70074 */  sh    $s7, 0x74($sp)
/* AB3924 8003C784 E7B6007C */  swc1  $f22, 0x7c($sp)
/* AB3928 8003C788 AFB60080 */  sw    $s6, 0x80($sp)
/* AB392C 8003C78C AFB10088 */  sw    $s1, 0x88($sp)
/* AB3930 8003C790 AFBE008C */  sw    $fp, 0x8c($sp)
/* AB3934 8003C794 E7B80090 */  swc1  $f24, 0x90($sp)
/* AB3938 8003C798 27A4006C */  addiu $a0, $sp, 0x6c
/* AB393C 8003C79C AFA9006C */  sw    $t1, 0x6c($sp)
/* AB3940 8003C7A0 AFAA0078 */  sw    $t2, 0x78($sp)
/* AB3944 8003C7A4 0C00FF77 */  jal   func_8003FDDC
/* AB3948 8003C7A8 AFAB0084 */   sw    $t3, 0x84($sp)
/* AB394C 8003C7AC 4600B03C */  c.lt.s $f22, $f0
/* AB3950 8003C7B0 8FAC00C4 */  lw    $t4, 0xc4($sp)
/* AB3954 8003C7B4 8FAD00C8 */  lw    $t5, 0xc8($sp)
/* AB3958 8003C7B8 45020003 */  bc1fl .L8003C7C8
/* AB395C 8003C7BC 4614B032 */   c.eq.s $f22, $f20
/* AB3960 8003C7C0 46000586 */  mov.s $f22, $f0
/* AB3964 8003C7C4 4614B032 */  c.eq.s $f22, $f20
.L8003C7C8:
/* AB3968 8003C7C8 02002025 */  move  $a0, $s0
/* AB396C 8003C7CC 4503000A */  bc1tl .L8003C7F8
/* AB3970 8003C7D0 8FBF0064 */   lw    $ra, 0x64($sp)
/* AB3974 8003C7D4 8D850000 */  lw    $a1, ($t4)
/* AB3978 8003C7D8 0C0107B2 */  jal   func_80041EC8
/* AB397C 8003C7DC 8DA60000 */   lw    $a2, ($t5)
/* AB3980 8003C7E0 10400004 */  beqz  $v0, .L8003C7F4
/* AB3984 8003C7E4 3C013F80 */   li    $at, 0x3F800000 # 0.000000
/* AB3988 8003C7E8 44814000 */  mtc1  $at, $f8
/* AB398C 8003C7EC 00000000 */  nop   
/* AB3990 8003C7F0 4608B581 */  sub.s $f22, $f22, $f8
.L8003C7F4:
/* AB3994 8003C7F4 8FBF0064 */  lw    $ra, 0x64($sp)
.L8003C7F8:
/* AB3998 8003C7F8 4600B006 */  mov.s $f0, $f22
/* AB399C 8003C7FC D7B60030 */  ldc1  $f22, 0x30($sp)
/* AB39A0 8003C800 D7B40028 */  ldc1  $f20, 0x28($sp)
/* AB39A4 8003C804 D7B80038 */  ldc1  $f24, 0x38($sp)
/* AB39A8 8003C808 8FB00040 */  lw    $s0, 0x40($sp)
/* AB39AC 8003C80C 8FB10044 */  lw    $s1, 0x44($sp)
/* AB39B0 8003C810 8FB20048 */  lw    $s2, 0x48($sp)
/* AB39B4 8003C814 8FB3004C */  lw    $s3, 0x4c($sp)
/* AB39B8 8003C818 8FB40050 */  lw    $s4, 0x50($sp)
/* AB39BC 8003C81C 8FB50054 */  lw    $s5, 0x54($sp)
/* AB39C0 8003C820 8FB60058 */  lw    $s6, 0x58($sp)
/* AB39C4 8003C824 8FB7005C */  lw    $s7, 0x5c($sp)
/* AB39C8 8003C828 8FBE0060 */  lw    $fp, 0x60($sp)
/* AB39CC 8003C82C 03E00008 */  jr    $ra
/* AB39D0 8003C830 27BD00B8 */   addiu $sp, $sp, 0xb8

/* AB39D4 8003C834 27BDFFC8 */  addiu $sp, $sp, -0x38
/* AB39D8 8003C838 AFA60040 */  sw    $a2, 0x40($sp)
/* AB39DC 8003C83C 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AB39E0 8003C840 44812000 */  mtc1  $at, $f4
/* AB39E4 8003C844 8FAF0040 */  lw    $t7, 0x40($sp)
/* AB39E8 8003C848 00A03825 */  move  $a3, $a1
/* AB39EC 8003C84C 00802825 */  move  $a1, $a0
/* AB39F0 8003C850 AFBF002C */  sw    $ra, 0x2c($sp)
/* AB39F4 8003C854 AFA40038 */  sw    $a0, 0x38($sp)
/* AB39F8 8003C858 27AE0034 */  addiu $t6, $sp, 0x34
/* AB39FC 8003C85C 2418001C */  li    $t8, 28
/* AB3A00 8003C860 AFB8001C */  sw    $t8, 0x1c($sp)
/* AB3A04 8003C864 AFAE0010 */  sw    $t6, 0x10($sp)
/* AB3A08 8003C868 00002025 */  move  $a0, $zero
/* AB3A0C 8003C86C 24060001 */  li    $a2, 1
/* AB3A10 8003C870 AFA00018 */  sw    $zero, 0x18($sp)
/* AB3A14 8003C874 AFAF0014 */  sw    $t7, 0x14($sp)
/* AB3A18 8003C878 0C00F185 */  jal   func_8003C614
/* AB3A1C 8003C87C E7A40020 */   swc1  $f4, 0x20($sp)
/* AB3A20 8003C880 8FBF002C */  lw    $ra, 0x2c($sp)
/* AB3A24 8003C884 27BD0038 */  addiu $sp, $sp, 0x38
/* AB3A28 8003C888 03E00008 */  jr    $ra
/* AB3A2C 8003C88C 00000000 */   nop   

/* AB3A30 8003C890 27BDFFC8 */  addiu $sp, $sp, -0x38
/* AB3A34 8003C894 AFA60040 */  sw    $a2, 0x40($sp)
/* AB3A38 8003C898 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AB3A3C 8003C89C 44812000 */  mtc1  $at, $f4
/* AB3A40 8003C8A0 8FAF0040 */  lw    $t7, 0x40($sp)
/* AB3A44 8003C8A4 00A03825 */  move  $a3, $a1
/* AB3A48 8003C8A8 00802825 */  move  $a1, $a0
/* AB3A4C 8003C8AC AFBF002C */  sw    $ra, 0x2c($sp)
/* AB3A50 8003C8B0 AFA40038 */  sw    $a0, 0x38($sp)
/* AB3A54 8003C8B4 27AE0034 */  addiu $t6, $sp, 0x34
/* AB3A58 8003C8B8 2418001C */  li    $t8, 28
/* AB3A5C 8003C8BC AFB8001C */  sw    $t8, 0x1c($sp)
/* AB3A60 8003C8C0 AFAE0010 */  sw    $t6, 0x10($sp)
/* AB3A64 8003C8C4 00002025 */  move  $a0, $zero
/* AB3A68 8003C8C8 24060002 */  li    $a2, 2
/* AB3A6C 8003C8CC AFA00018 */  sw    $zero, 0x18($sp)
/* AB3A70 8003C8D0 AFAF0014 */  sw    $t7, 0x14($sp)
/* AB3A74 8003C8D4 0C00F185 */  jal   func_8003C614
/* AB3A78 8003C8D8 E7A40020 */   swc1  $f4, 0x20($sp)
/* AB3A7C 8003C8DC 8FBF002C */  lw    $ra, 0x2c($sp)
/* AB3A80 8003C8E0 27BD0038 */  addiu $sp, $sp, 0x38
/* AB3A84 8003C8E4 03E00008 */  jr    $ra
/* AB3A88 8003C8E8 00000000 */   nop   

