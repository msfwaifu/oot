.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_800D05F0
/* B47790 800D05F0 44802000 */  mtc1  $zero, $f4
/* B47794 800D05F4 3C038013 */  lui   $v1, %hi(D_8012D310)
/* B47798 800D05F8 46047032 */  c.eq.s $f14, $f4
/* B4779C 800D05FC 00000000 */  nop   
/* B477A0 800D0600 45020004 */  bc1fl .L800D0614
/* B477A4 800D0604 460E6183 */   div.s $f6, $f12, $f14
/* B477A8 800D0608 03E00008 */  jr    $ra
/* B477AC 800D060C 9462D310 */   lhu   $v0, %lo(D_8012D310)($v1)
/* B477B0 800D0610 460E6183 */  div.s $f6, $f12, $f14
.L800D0614:
/* B477B4 800D0614 3C014480 */  li    $at, 0x44800000 # 0.000000
/* B477B8 800D0618 44814000 */  mtc1  $at, $f8
/* B477BC 800D061C 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* B477C0 800D0620 44818000 */  mtc1  $at, $f16
/* B477C4 800D0624 3C038013 */  lui   $v1, %hi(D_8012D310)
/* B477C8 800D0628 46083282 */  mul.s $f10, $f6, $f8
/* B477CC 800D062C 46105480 */  add.s $f18, $f10, $f16
/* B477D0 800D0630 4600910D */  trunc.w.s $f4, $f18
/* B477D4 800D0634 44022000 */  mfc1  $v0, $f4
/* B477D8 800D0638 00000000 */  nop   
/* B477DC 800D063C 28410401 */  slti  $at, $v0, 0x401
/* B477E0 800D0640 14200004 */  bnez  $at, .L800D0654
/* B477E4 800D0644 00027840 */   sll   $t7, $v0, 1
/* B477E8 800D0648 3C038013 */  lui   $v1, %hi(D_8012D310)
/* B477EC 800D064C 03E00008 */  jr    $ra
/* B477F0 800D0650 9462D310 */   lhu   $v0, %lo(D_8012D310)($v1)
.L800D0654:
/* B477F4 800D0654 006F1821 */  addu  $v1, $v1, $t7
/* B477F8 800D0658 9463D310 */  lhu   $v1, %lo(D_8012D310)($v1)
/* B477FC 800D065C 03E00008 */  jr    $ra
/* B47800 800D0660 00601025 */   move  $v0, $v1

glabel atan2s
/* B47804 800D0664 44800000 */  mtc1  $zero, $f0
/* B47808 800D0668 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B4780C 800D066C F7BA0028 */  sdc1  $f26, 0x28($sp)
/* B47810 800D0670 460E003E */  c.le.s $f0, $f14
/* B47814 800D0674 F7B80020 */  sdc1  $f24, 0x20($sp)
/* B47818 800D0678 46006606 */  mov.s $f24, $f12
/* B4781C 800D067C 46007686 */  mov.s $f26, $f14
/* B47820 800D0680 AFBF0034 */  sw    $ra, 0x34($sp)
/* B47824 800D0684 F7B60018 */  sdc1  $f22, 0x18($sp)
/* B47828 800D0688 45000024 */  bc1f  .L800D071C
/* B4782C 800D068C F7B40010 */   sdc1  $f20, 0x10($sp)
/* B47830 800D0690 460C003E */  c.le.s $f0, $f12
/* B47834 800D0694 00000000 */  nop   
/* B47838 800D0698 45020011 */  bc1fl .L800D06E0
/* B4783C 800D069C 4600C507 */   neg.s $f20, $f24
/* B47840 800D06A0 460C703E */  c.le.s $f14, $f12
/* B47844 800D06A4 00000000 */  nop   
/* B47848 800D06A8 45020007 */  bc1fl .L800D06C8
/* B4784C 800D06AC 4600C306 */   mov.s $f12, $f24
/* B47850 800D06B0 46007306 */  mov.s $f12, $f14
/* B47854 800D06B4 0C03417C */  jal   func_800D05F0
/* B47858 800D06B8 4600C386 */   mov.s $f14, $f24
/* B4785C 800D06BC 1000003C */  b     .L800D07B0
/* B47860 800D06C0 00401825 */   move  $v1, $v0
/* B47864 800D06C4 4600C306 */  mov.s $f12, $f24
.L800D06C8:
/* B47868 800D06C8 0C03417C */  jal   func_800D05F0
/* B4786C 800D06CC 4600D386 */   mov.s $f14, $f26
/* B47870 800D06D0 240E4000 */  li    $t6, 16384
/* B47874 800D06D4 10000036 */  b     .L800D07B0
/* B47878 800D06D8 01C21823 */   subu  $v1, $t6, $v0
/* B4787C 800D06DC 4600C507 */  neg.s $f20, $f24
.L800D06E0:
/* B47880 800D06E0 461AA03C */  c.lt.s $f20, $f26
/* B47884 800D06E4 00000000 */  nop   
/* B47888 800D06E8 45020007 */  bc1fl .L800D0708
/* B4788C 800D06EC 4600D306 */   mov.s $f12, $f26
/* B47890 800D06F0 4600A306 */  mov.s $f12, $f20
/* B47894 800D06F4 0C03417C */  jal   func_800D05F0
/* B47898 800D06F8 4600D386 */   mov.s $f14, $f26
/* B4789C 800D06FC 1000002C */  b     .L800D07B0
/* B478A0 800D0700 24434000 */   addiu $v1, $v0, 0x4000
/* B478A4 800D0704 4600D306 */  mov.s $f12, $f26
.L800D0708:
/* B478A8 800D0708 0C03417C */  jal   func_800D05F0
/* B478AC 800D070C 4600A386 */   mov.s $f14, $f20
/* B478B0 800D0710 340F8000 */  li    $t7, 32768
/* B478B4 800D0714 10000026 */  b     .L800D07B0
/* B478B8 800D0718 01E21823 */   subu  $v1, $t7, $v0
.L800D071C:
/* B478BC 800D071C 4600C03C */  c.lt.s $f24, $f0
/* B478C0 800D0720 00000000 */  nop   
/* B478C4 800D0724 45020014 */  bc1fl .L800D0778
/* B478C8 800D0728 4600D587 */   neg.s $f22, $f26
/* B478CC 800D072C 4600C507 */  neg.s $f20, $f24
/* B478D0 800D0730 4600D587 */  neg.s $f22, $f26
/* B478D4 800D0734 4614B03E */  c.le.s $f22, $f20
/* B478D8 800D0738 00000000 */  nop   
/* B478DC 800D073C 45020008 */  bc1fl .L800D0760
/* B478E0 800D0740 4600A306 */   mov.s $f12, $f20
/* B478E4 800D0744 4600B306 */  mov.s $f12, $f22
/* B478E8 800D0748 0C03417C */  jal   func_800D05F0
/* B478EC 800D074C 4600A386 */   mov.s $f14, $f20
/* B478F0 800D0750 34018000 */  li    $at, 32768
/* B478F4 800D0754 10000016 */  b     .L800D07B0
/* B478F8 800D0758 00411821 */   addu  $v1, $v0, $at
/* B478FC 800D075C 4600A306 */  mov.s $f12, $f20
.L800D0760:
/* B47900 800D0760 0C03417C */  jal   func_800D05F0
/* B47904 800D0764 4600B386 */   mov.s $f14, $f22
/* B47908 800D0768 3418C000 */  li    $t8, 49152
/* B4790C 800D076C 10000010 */  b     .L800D07B0
/* B47910 800D0770 03021823 */   subu  $v1, $t8, $v0
/* B47914 800D0774 4600D587 */  neg.s $f22, $f26
.L800D0778:
/* B47918 800D0778 4616C03C */  c.lt.s $f24, $f22
/* B4791C 800D077C 00000000 */  nop   
/* B47920 800D0780 45020008 */  bc1fl .L800D07A4
/* B47924 800D0784 4600B306 */   mov.s $f12, $f22
/* B47928 800D0788 4600C306 */  mov.s $f12, $f24
/* B4792C 800D078C 0C03417C */  jal   func_800D05F0
/* B47930 800D0790 4600B386 */   mov.s $f14, $f22
/* B47934 800D0794 3401C000 */  li    $at, 49152
/* B47938 800D0798 10000005 */  b     .L800D07B0
/* B4793C 800D079C 00411821 */   addu  $v1, $v0, $at
/* B47940 800D07A0 4600B306 */  mov.s $f12, $f22
.L800D07A4:
/* B47944 800D07A4 0C03417C */  jal   func_800D05F0
/* B47948 800D07A8 4600C386 */   mov.s $f14, $f24
/* B4794C 800D07AC 00021823 */  negu  $v1, $v0
.L800D07B0:
/* B47950 800D07B0 8FBF0034 */  lw    $ra, 0x34($sp)
/* B47954 800D07B4 00031400 */  sll   $v0, $v1, 0x10
/* B47958 800D07B8 D7B40010 */  ldc1  $f20, 0x10($sp)
/* B4795C 800D07BC D7B60018 */  ldc1  $f22, 0x18($sp)
/* B47960 800D07C0 D7B80020 */  ldc1  $f24, 0x20($sp)
/* B47964 800D07C4 D7BA0028 */  ldc1  $f26, 0x28($sp)
/* B47968 800D07C8 27BD0038 */  addiu $sp, $sp, 0x38
/* B4796C 800D07CC 03E00008 */  jr    $ra
/* B47970 800D07D0 00021403 */   sra   $v0, $v0, 0x10

glabel atan2f
/* B47974 800D07D4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B47978 800D07D8 AFBF0014 */  sw    $ra, 0x14($sp)
/* B4797C 800D07DC 0C034199 */  jal   atan2s
/* B47980 800D07E0 00000000 */   nop   
/* B47984 800D07E4 44822000 */  mtc1  $v0, $f4
/* B47988 800D07E8 3C018014 */  lui   $at, %hi(D_80146560)
/* B4798C 800D07EC C4286560 */  lwc1  $f8, %lo(D_80146560)($at)
/* B47990 800D07F0 468021A0 */  cvt.s.w $f6, $f4
/* B47994 800D07F4 8FBF0014 */  lw    $ra, 0x14($sp)
/* B47998 800D07F8 27BD0018 */  addiu $sp, $sp, 0x18
/* B4799C 800D07FC 46083002 */  mul.s $f0, $f6, $f8
/* B479A0 800D0800 03E00008 */  jr    $ra
/* B479A4 800D0804 00000000 */   nop   
