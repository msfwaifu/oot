glabel func_8006C5A8
/* AE3748 8006C5A8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AE374C 8006C5AC AFBF0024 */  sw    $ra, 0x24($sp)
/* AE3750 8006C5B0 F7B40018 */  sdc1  $f20, 0x18($sp)
/* AE3754 8006C5B4 84AE0002 */  lh    $t6, 2($a1)
/* AE3758 8006C5B8 46006506 */  mov.s $f20, $f12
/* AE375C 8006C5BC 2408000C */  li    $t0, 12
/* AE3760 8006C5C0 448E2000 */  mtc1  $t6, $f4
/* AE3764 8006C5C4 00000000 */  nop   
/* AE3768 8006C5C8 468021A0 */  cvt.s.w $f6, $f4
/* AE376C 8006C5CC 4606603E */  c.le.s $f12, $f6
/* AE3770 8006C5D0 00000000 */  nop   
/* AE3774 8006C5D4 45000003 */  bc1f  .L8006C5E4
/* AE3778 8006C5D8 00000000 */   nop   
/* AE377C 8006C5DC 10000055 */  b     .L8006C734
/* AE3780 8006C5E0 C4A00008 */   lwc1  $f0, 8($a1)
.L8006C5E4:
/* AE3784 8006C5E4 00C80019 */  multu $a2, $t0
/* AE3788 8006C5E8 00001825 */  move  $v1, $zero
/* AE378C 8006C5EC 00007812 */  mflo  $t7
/* AE3790 8006C5F0 00AF1021 */  addu  $v0, $a1, $t7
/* AE3794 8006C5F4 8458FFF6 */  lh    $t8, -0xa($v0)
/* AE3798 8006C5F8 44984000 */  mtc1  $t8, $f8
/* AE379C 8006C5FC 00000000 */  nop   
/* AE37A0 8006C600 468042A0 */  cvt.s.w $f10, $f8
/* AE37A4 8006C604 4614503E */  c.le.s $f10, $f20
/* AE37A8 8006C608 00000000 */  nop   
/* AE37AC 8006C60C 45020004 */  bc1fl .L8006C620
/* AE37B0 8006C610 00A01025 */   move  $v0, $a1
/* AE37B4 8006C614 10000047 */  b     .L8006C734
/* AE37B8 8006C618 C440FFFC */   lwc1  $f0, -4($v0)
/* AE37BC 8006C61C 00A01025 */  move  $v0, $a1
.L8006C620:
/* AE37C0 8006C620 8459000E */  lh    $t9, 0xe($v0)
/* AE37C4 8006C624 44999000 */  mtc1  $t9, $f18
/* AE37C8 8006C628 00000000 */  nop   
/* AE37CC 8006C62C 46809120 */  cvt.s.w $f4, $f18
/* AE37D0 8006C630 4604A03C */  c.lt.s $f20, $f4
/* AE37D4 8006C634 00000000 */  nop   
/* AE37D8 8006C638 4502003C */  bc1fl .L8006C72C
/* AE37DC 8006C63C 24630001 */   addiu $v1, $v1, 1
/* AE37E0 8006C640 94460000 */  lhu   $a2, ($v0)
/* AE37E4 8006C644 30C90001 */  andi  $t1, $a2, 1
/* AE37E8 8006C648 11200003 */  beqz  $t1, .L8006C658
/* AE37EC 8006C64C 30CA0002 */   andi  $t2, $a2, 2
/* AE37F0 8006C650 10000038 */  b     .L8006C734
/* AE37F4 8006C654 C4400008 */   lwc1  $f0, 8($v0)
.L8006C658:
/* AE37F8 8006C658 11400015 */  beqz  $t2, .L8006C6B0
/* AE37FC 8006C65C 24640001 */   addiu $a0, $v1, 1
/* AE3800 8006C660 00880019 */  multu $a0, $t0
/* AE3804 8006C664 844C0002 */  lh    $t4, 2($v0)
/* AE3808 8006C668 C4420008 */  lwc1  $f2, 8($v0)
/* AE380C 8006C66C 448C3000 */  mtc1  $t4, $f6
/* AE3810 8006C670 00000000 */  nop   
/* AE3814 8006C674 46803420 */  cvt.s.w $f16, $f6
/* AE3818 8006C678 00005812 */  mflo  $t3
/* AE381C 8006C67C 00AB1821 */  addu  $v1, $a1, $t3
/* AE3820 8006C680 846D0002 */  lh    $t5, 2($v1)
/* AE3824 8006C684 4610A201 */  sub.s $f8, $f20, $f16
/* AE3828 8006C688 448D5000 */  mtc1  $t5, $f10
/* AE382C 8006C68C 00000000 */  nop   
/* AE3830 8006C690 468054A0 */  cvt.s.w $f18, $f10
/* AE3834 8006C694 C46A0008 */  lwc1  $f10, 8($v1)
/* AE3838 8006C698 46109101 */  sub.s $f4, $f18, $f16
/* AE383C 8006C69C 46025481 */  sub.s $f18, $f10, $f2
/* AE3840 8006C6A0 46044183 */  div.s $f6, $f8, $f4
/* AE3844 8006C6A4 46069202 */  mul.s $f8, $f18, $f6
/* AE3848 8006C6A8 10000022 */  b     .L8006C734
/* AE384C 8006C6AC 46024000 */   add.s $f0, $f8, $f2
.L8006C6B0:
/* AE3850 8006C6B0 00880019 */  multu $a0, $t0
/* AE3854 8006C6B4 844E0002 */  lh    $t6, 2($v0)
/* AE3858 8006C6B8 84590006 */  lh    $t9, 6($v0)
/* AE385C 8006C6BC 8C460008 */  lw    $a2, 8($v0)
/* AE3860 8006C6C0 448E2000 */  mtc1  $t6, $f4
/* AE3864 8006C6C4 3C018014 */  lui   $at, %hi(D_8013B9D0)
/* AE3868 8006C6C8 C428B9D0 */  lwc1  $f8, %lo(D_8013B9D0)($at)
/* AE386C 8006C6CC 46802420 */  cvt.s.w $f16, $f4
/* AE3870 8006C6D0 44992000 */  mtc1  $t9, $f4
/* AE3874 8006C6D4 00007812 */  mflo  $t7
/* AE3878 8006C6D8 00AF1821 */  addu  $v1, $a1, $t7
/* AE387C 8006C6DC 84780002 */  lh    $t8, 2($v1)
/* AE3880 8006C6E0 8C670008 */  lw    $a3, 8($v1)
/* AE3884 8006C6E4 4610A181 */  sub.s $f6, $f20, $f16
/* AE3888 8006C6E8 44985000 */  mtc1  $t8, $f10
/* AE388C 8006C6EC 00000000 */  nop   
/* AE3890 8006C6F0 468054A0 */  cvt.s.w $f18, $f10
/* AE3894 8006C6F4 468022A0 */  cvt.s.w $f10, $f4
/* AE3898 8006C6F8 46109001 */  sub.s $f0, $f18, $f16
/* AE389C 8006C6FC E7AA0010 */  swc1  $f10, 0x10($sp)
/* AE38A0 8006C700 84690004 */  lh    $t1, 4($v1)
/* AE38A4 8006C704 46003303 */  div.s $f12, $f6, $f0
/* AE38A8 8006C708 44899000 */  mtc1  $t1, $f18
/* AE38AC 8006C70C 00000000 */  nop   
/* AE38B0 8006C710 468091A0 */  cvt.s.w $f6, $f18
/* AE38B4 8006C714 46080382 */  mul.s $f14, $f0, $f8
/* AE38B8 8006C718 0C01B144 */  jal   func_8006C510
/* AE38BC 8006C71C E7A60014 */   swc1  $f6, 0x14($sp)
/* AE38C0 8006C720 10000005 */  b     .L8006C738
/* AE38C4 8006C724 8FBF0024 */   lw    $ra, 0x24($sp)
/* AE38C8 8006C728 24630001 */  addiu $v1, $v1, 1
.L8006C72C:
/* AE38CC 8006C72C 1000FFBC */  b     .L8006C620
/* AE38D0 8006C730 2442000C */   addiu $v0, $v0, 0xc
.L8006C734:
/* AE38D4 8006C734 8FBF0024 */  lw    $ra, 0x24($sp)
.L8006C738:
/* AE38D8 8006C738 D7B40018 */  ldc1  $f20, 0x18($sp)
/* AE38DC 8006C73C 27BD0028 */  addiu $sp, $sp, 0x28
/* AE38E0 8006C740 03E00008 */  jr    $ra
/* AE38E4 8006C744 00000000 */   nop   
