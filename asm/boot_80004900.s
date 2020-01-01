.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

/* 0054F0 800048F0 00000000 */  nop   
/* 0054F4 800048F4 00000000 */  nop   
/* 0054F8 800048F8 00000000 */  nop   
/* 0054FC 800048FC 00000000 */  nop  
 
glabel func_80004900
/* 005500 80004900 27BDFF88 */  addiu $sp, $sp, -0x78
/* 005504 80004904 AFB3002C */  sw    $s3, 0x2c($sp)
/* 005508 80004908 AFBE0040 */  sw    $fp, 0x40($sp)
/* 00550C 8000490C AFB7003C */  sw    $s7, 0x3c($sp)
/* 005510 80004910 AFB60038 */  sw    $s6, 0x38($sp)
/* 005514 80004914 AFB50034 */  sw    $s5, 0x34($sp)
/* 005518 80004918 AFB40030 */  sw    $s4, 0x30($sp)
/* 00551C 8000491C 3C130500 */  lui   $s3, (0x05000510 >> 16) # lui $s3, 0x500
/* 005520 80004920 0080A025 */  move  $s4, $a0
/* 005524 80004924 AFBF0044 */  sw    $ra, 0x44($sp)
/* 005528 80004928 AFB20028 */  sw    $s2, 0x28($sp)
/* 00552C 8000492C AFB10024 */  sw    $s1, 0x24($sp)
/* 005530 80004930 AFB00020 */  sw    $s0, 0x20($sp)
/* 005534 80004934 AFA00074 */  sw    $zero, 0x74($sp)
/* 005538 80004938 36730510 */  ori   $s3, (0x05000510 & 0xFFFF) # ori $s3, $s3, 0x510
/* 00553C 8000493C 24150024 */  li    $s5, 36
/* 005540 80004940 27B60070 */  addiu $s6, $sp, 0x70
/* 005544 80004944 24170001 */  li    $s7, 1
/* 005548 80004948 241E001D */  li    $fp, 29
.L8000494C:
/* 00554C 8000494C 8E840008 */  lw    $a0, 8($s4)
.L80004950:
/* 005550 80004950 27A50074 */  addiu $a1, $sp, 0x74
/* 005554 80004954 0C000CA0 */  jal   osRecvMesg
/* 005558 80004958 02E03025 */   move  $a2, $s7
/* 00555C 8000495C 8FAE0074 */  lw    $t6, 0x74($sp)
/* 005560 80004960 8FA80074 */  lw    $t0, 0x74($sp)
/* 005564 80004964 8DC40014 */  lw    $a0, 0x14($t6)
/* 005568 80004968 50800081 */  beql  $a0, $zero, .L80004B70
/* 00556C 8000496C 95090000 */   lhu   $t1, ($t0)
/* 005570 80004970 908F0004 */  lbu   $t7, 4($a0)
/* 005574 80004974 24010002 */  li    $at, 2
/* 005578 80004978 55E1007D */  bnel  $t7, $at, .L80004B70
/* 00557C 8000497C 95090000 */   lhu   $t1, ($t0)
/* 005580 80004980 8C820014 */  lw    $v0, 0x14($a0)
/* 005584 80004984 24010001 */  li    $at, 1
/* 005588 80004988 24900014 */  addiu $s0, $a0, 0x14
/* 00558C 8000498C 10400003 */  beqz  $v0, .L8000499C
/* 005590 80004990 27A5006C */   addiu $a1, $sp, 0x6c
/* 005594 80004994 54410076 */  bnel  $v0, $at, .L80004B70
/* 005598 80004998 95090000 */   lhu   $t1, ($t0)
.L8000499C:
/* 00559C 8000499C 96180006 */  lhu   $t8, 6($s0)
/* 0055A0 800049A0 96020004 */  lhu   $v0, 4($s0)
/* 0055A4 800049A4 2408FFFF */  li    $t0, -1
/* 0055A8 800049A8 03150019 */  multu $t8, $s5
/* 0055AC 800049AC 24010003 */  li    $at, 3
/* 0055B0 800049B0 AE080008 */  sw    $t0, 8($s0)
/* 0055B4 800049B4 00009025 */  move  $s2, $zero
/* 0055B8 800049B8 02E03025 */  move  $a2, $s7
/* 0055BC 800049BC 0000C812 */  mflo  $t9
/* 0055C0 800049C0 02198821 */  addu  $s1, $s0, $t9
/* 0055C4 800049C4 10410006 */  beq   $v0, $at, .L800049E0
/* 0055C8 800049C8 26310018 */   addiu $s1, $s1, 0x18
/* 0055CC 800049CC 8E290004 */  lw    $t1, 4($s1)
/* 0055D0 800049D0 8E2A000C */  lw    $t2, 0xc($s1)
/* 0055D4 800049D4 012A5823 */  subu  $t3, $t1, $t2
/* 0055D8 800049D8 AE2B0004 */  sw    $t3, 4($s1)
/* 0055DC 800049DC 96020004 */  lhu   $v0, 4($s0)
.L800049E0:
/* 0055E0 800049E0 24010002 */  li    $at, 2
/* 0055E4 800049E4 14410007 */  bne   $v0, $at, .L80004A04
/* 0055E8 800049E8 8FAC0074 */   lw    $t4, 0x74($sp)
/* 0055EC 800049EC 8D8D0014 */  lw    $t5, 0x14($t4)
/* 0055F0 800049F0 8DAE0014 */  lw    $t6, 0x14($t5)
/* 0055F4 800049F4 15C00003 */  bnez  $t6, .L80004A04
/* 0055F8 800049F8 00000000 */   nop   
/* 0055FC 800049FC 10000001 */  b     .L80004A04
/* 005600 80004A00 02E09025 */   move  $s2, $s7
.L80004A04:
/* 005604 80004A04 0C000CA0 */  jal   osRecvMesg
/* 005608 80004A08 8E840010 */   lw    $a0, 0x10($s4)
/* 00560C 80004A0C 3C040010 */  lui   $a0, (0x00100401 >> 16) # lui $a0, 0x10
/* 005610 80004A10 0C001C88 */  jal   __osResetGlobalIntMask
/* 005614 80004A14 34840401 */   ori   $a0, (0x00100401 & 0xFFFF) # ori $a0, $a0, 0x401
/* 005618 80004A18 8E060010 */  lw    $a2, 0x10($s0)
/* 00561C 80004A1C 8FAF0074 */  lw    $t7, 0x74($sp)
/* 005620 80004A20 3C018000 */  lui   $at, 0x8000
/* 005624 80004A24 00C1C025 */  or    $t8, $a2, $at
/* 005628 80004A28 03003025 */  move  $a2, $t8
/* 00562C 80004A2C 02602825 */  move  $a1, $s3
/* 005630 80004A30 0C001EE8 */  jal   func_80007BA0
/* 005634 80004A34 8DE40014 */   lw    $a0, 0x14($t7)
.L80004A38:
/* 005638 80004A38 8E84000C */  lw    $a0, 0xc($s4)
/* 00563C 80004A3C 02C02825 */  move  $a1, $s6
/* 005640 80004A40 0C000CA0 */  jal   osRecvMesg
/* 005644 80004A44 02E03025 */   move  $a2, $s7
/* 005648 80004A48 8FB90074 */  lw    $t9, 0x74($sp)
/* 00564C 80004A4C 8F240014 */  lw    $a0, 0x14($t9)
/* 005650 80004A50 24900014 */  addiu $s0, $a0, 0x14
/* 005654 80004A54 96080006 */  lhu   $t0, 6($s0)
/* 005658 80004A58 01150019 */  multu $t0, $s5
/* 00565C 80004A5C 00004812 */  mflo  $t1
/* 005660 80004A60 02098821 */  addu  $s1, $s0, $t1
/* 005664 80004A64 8E2A0018 */  lw    $t2, 0x18($s1)
/* 005668 80004A68 26310018 */  addiu $s1, $s1, 0x18
/* 00566C 80004A6C 57CA0027 */  bnel  $fp, $t2, .L80004B0C
/* 005670 80004A70 8FA50074 */   lw    $a1, 0x74($sp)
/* 005674 80004A74 8E060010 */  lw    $a2, 0x10($s0)
/* 005678 80004A78 3C011000 */  lui   $at, 0x1000
/* 00567C 80004A7C 02602825 */  move  $a1, $s3
/* 005680 80004A80 00C15825 */  or    $t3, $a2, $at
/* 005684 80004A84 0C001EE8 */  jal   func_80007BA0
/* 005688 80004A88 01603025 */   move  $a2, $t3
/* 00568C 80004A8C 8FAC0074 */  lw    $t4, 0x74($sp)
/* 005690 80004A90 02602825 */  move  $a1, $s3
/* 005694 80004A94 8E060010 */  lw    $a2, 0x10($s0)
/* 005698 80004A98 0C001EE8 */  jal   func_80007BA0
/* 00569C 80004A9C 8D840014 */   lw    $a0, 0x14($t4)
/* 0056A0 80004AA0 8FAD0074 */  lw    $t5, 0x74($sp)
/* 0056A4 80004AA4 3C050500 */  lui   $a1, (0x05000508 >> 16) # lui $a1, 0x500
/* 0056A8 80004AA8 34A50508 */  ori   $a1, (0x05000508 & 0xFFFF) # ori $a1, $a1, 0x508
/* 0056AC 80004AAC 27A60054 */  addiu $a2, $sp, 0x54
/* 0056B0 80004AB0 0C00194C */  jal   func_80006530
/* 0056B4 80004AB4 8DA40014 */   lw    $a0, 0x14($t5)
/* 0056B8 80004AB8 8FAE0054 */  lw    $t6, 0x54($sp)
/* 0056BC 80004ABC 8FB80074 */  lw    $t8, 0x74($sp)
/* 0056C0 80004AC0 02602825 */  move  $a1, $s3
/* 0056C4 80004AC4 000E7980 */  sll   $t7, $t6, 6
/* 0056C8 80004AC8 05E30008 */  bgezl $t7, .L80004AEC
/* 0056CC 80004ACC 24080004 */   li    $t0, 4
/* 0056D0 80004AD0 8E060010 */  lw    $a2, 0x10($s0)
/* 0056D4 80004AD4 3C010100 */  lui   $at, 0x100
/* 0056D8 80004AD8 8F040014 */  lw    $a0, 0x14($t8)
/* 0056DC 80004ADC 00C1C825 */  or    $t9, $a2, $at
/* 0056E0 80004AE0 0C001EE8 */  jal   func_80007BA0
/* 0056E4 80004AE4 03203025 */   move  $a2, $t9
/* 0056E8 80004AE8 24080004 */  li    $t0, 4
.L80004AEC:
/* 0056EC 80004AEC AE280000 */  sw    $t0, ($s1)
/* 0056F0 80004AF0 24090002 */  li    $t1, 2
/* 0056F4 80004AF4 3C0AA460 */  lui   $t2, %hi(D_A4600010) # $t2, 0xa460
/* 0056F8 80004AF8 3C040010 */  lui   $a0, (0x00100C01 >> 16) # lui $a0, 0x10
/* 0056FC 80004AFC AD490010 */  sw    $t1, %lo(D_A4600010)($t2)
/* 005700 80004B00 0C001BAC */  jal   __osSetGlobalIntMask
/* 005704 80004B04 34840C01 */   ori   $a0, (0x00100C01 & 0xFFFF) # ori $a0, $a0, 0xc01
/* 005708 80004B08 8FA50074 */  lw    $a1, 0x74($sp)
.L80004B0C:
/* 00570C 80004B0C 00003025 */  move  $a2, $zero
/* 005710 80004B10 0C000C18 */  jal   osSendMesg
/* 005714 80004B14 8CA40004 */   lw    $a0, 4($a1)
/* 005718 80004B18 16570007 */  bne   $s2, $s7, .L80004B38
/* 00571C 80004B1C 8FAC0074 */   lw    $t4, 0x74($sp)
/* 005720 80004B20 8D8D0014 */  lw    $t5, 0x14($t4)
/* 005724 80004B24 8DAE002C */  lw    $t6, 0x2c($t5)
/* 005728 80004B28 55C00004 */  bnezl $t6, .L80004B3C
/* 00572C 80004B2C 8E840010 */   lw    $a0, 0x10($s4)
/* 005730 80004B30 1000FFC1 */  b     .L80004A38
/* 005734 80004B34 00009025 */   move  $s2, $zero
.L80004B38:
/* 005738 80004B38 8E840010 */  lw    $a0, 0x10($s4)
.L80004B3C:
/* 00573C 80004B3C 00002825 */  move  $a1, $zero
/* 005740 80004B40 0C000C18 */  jal   osSendMesg
/* 005744 80004B44 00003025 */   move  $a2, $zero
/* 005748 80004B48 8FAF0074 */  lw    $t7, 0x74($sp)
/* 00574C 80004B4C 8DF80014 */  lw    $t8, 0x14($t7)
/* 005750 80004B50 9719001A */  lhu   $t9, 0x1a($t8)
/* 005754 80004B54 56F9FF7E */  bnel  $s7, $t9, .L80004950
/* 005758 80004B58 8E840008 */   lw    $a0, 8($s4)
/* 00575C 80004B5C 0C001ED0 */  jal   osYieldThread
/* 005760 80004B60 00000000 */   nop   
/* 005764 80004B64 1000FF7A */  b     .L80004950
/* 005768 80004B68 8E840008 */   lw    $a0, 8($s4)
/* 00576C 80004B6C 95090000 */  lhu   $t1, ($t0)
.L80004B70:
/* 005770 80004B70 252AFFF6 */  addiu $t2, $t1, -0xa
/* 005774 80004B74 2D410007 */  sltiu $at, $t2, 7
/* 005778 80004B78 10200047 */  beqz  $at, .L80004C98
/* 00577C 80004B7C 000A5080 */   sll   $t2, $t2, 2
/* 005780 80004B80 3C018001 */  lui   $at, %hi(jtbl_80012140)
/* 005784 80004B84 002A0821 */  addu  $at, $at, $t2
/* 005788 80004B88 8C2A2140 */  lw    $t2, %lo(jtbl_80012140)($at)
/* 00578C 80004B8C 01400008 */  jr    $t2
/* 005790 80004B90 00000000 */   nop   
/* 005794 80004B94 8E840010 */  lw    $a0, 0x10($s4)
/* 005798 80004B98 27A5006C */  addiu $a1, $sp, 0x6c
/* 00579C 80004B9C 0C000CA0 */  jal   osRecvMesg
/* 0057A0 80004BA0 02E03025 */   move  $a2, $s7
/* 0057A4 80004BA4 8FAB0074 */  lw    $t3, 0x74($sp)
/* 0057A8 80004BA8 8E990014 */  lw    $t9, 0x14($s4)
/* 0057AC 80004BAC 00002025 */  move  $a0, $zero
/* 0057B0 80004BB0 8D65000C */  lw    $a1, 0xc($t3)
/* 0057B4 80004BB4 8D660008 */  lw    $a2, 8($t3)
/* 0057B8 80004BB8 0320F809 */  jalr  $t9
/* 0057BC 80004BBC 8D670010 */  lw    $a3, 0x10($t3)
/* 0057C0 80004BC0 10000036 */  b     .L80004C9C
/* 0057C4 80004BC4 00408025 */   move  $s0, $v0
/* 0057C8 80004BC8 8E840010 */  lw    $a0, 0x10($s4)
/* 0057CC 80004BCC 27A5006C */  addiu $a1, $sp, 0x6c
/* 0057D0 80004BD0 0C000CA0 */  jal   osRecvMesg
/* 0057D4 80004BD4 02E03025 */   move  $a2, $s7
/* 0057D8 80004BD8 8FAC0074 */  lw    $t4, 0x74($sp)
/* 0057DC 80004BDC 8E990014 */  lw    $t9, 0x14($s4)
/* 0057E0 80004BE0 02E02025 */  move  $a0, $s7
/* 0057E4 80004BE4 8D85000C */  lw    $a1, 0xc($t4)
/* 0057E8 80004BE8 8D860008 */  lw    $a2, 8($t4)
/* 0057EC 80004BEC 0320F809 */  jalr  $t9
/* 0057F0 80004BF0 8D870010 */  lw    $a3, 0x10($t4)
/* 0057F4 80004BF4 10000029 */  b     .L80004C9C
/* 0057F8 80004BF8 00408025 */   move  $s0, $v0
/* 0057FC 80004BFC 8E840010 */  lw    $a0, 0x10($s4)
/* 005800 80004C00 27A5006C */  addiu $a1, $sp, 0x6c
/* 005804 80004C04 0C000CA0 */  jal   osRecvMesg
/* 005808 80004C08 02E03025 */   move  $a2, $s7
/* 00580C 80004C0C 8FAD0074 */  lw    $t5, 0x74($sp)
/* 005810 80004C10 00002825 */  move  $a1, $zero
/* 005814 80004C14 8DAE0010 */  lw    $t6, 0x10($t5)
/* 005818 80004C18 8DA40014 */  lw    $a0, 0x14($t5)
/* 00581C 80004C1C 8DA6000C */  lw    $a2, 0xc($t5)
/* 005820 80004C20 8DA70008 */  lw    $a3, 8($t5)
/* 005824 80004C24 AFAE0010 */  sw    $t6, 0x10($sp)
/* 005828 80004C28 8E990018 */  lw    $t9, 0x18($s4)
/* 00582C 80004C2C 0320F809 */  jalr  $t9
/* 005830 80004C30 00000000 */  nop   
/* 005834 80004C34 10000019 */  b     .L80004C9C
/* 005838 80004C38 00408025 */   move  $s0, $v0
/* 00583C 80004C3C 8E840010 */  lw    $a0, 0x10($s4)
/* 005840 80004C40 27A5006C */  addiu $a1, $sp, 0x6c
/* 005844 80004C44 0C000CA0 */  jal   osRecvMesg
/* 005848 80004C48 02E03025 */   move  $a2, $s7
/* 00584C 80004C4C 8FAF0074 */  lw    $t7, 0x74($sp)
/* 005850 80004C50 02E02825 */  move  $a1, $s7
/* 005854 80004C54 8DF80010 */  lw    $t8, 0x10($t7)
/* 005858 80004C58 8DE40014 */  lw    $a0, 0x14($t7)
/* 00585C 80004C5C 8DE6000C */  lw    $a2, 0xc($t7)
/* 005860 80004C60 8DE70008 */  lw    $a3, 8($t7)
/* 005864 80004C64 AFB80010 */  sw    $t8, 0x10($sp)
/* 005868 80004C68 8E990018 */  lw    $t9, 0x18($s4)
/* 00586C 80004C6C 0320F809 */  jalr  $t9
/* 005870 80004C70 00000000 */  nop   
/* 005874 80004C74 10000009 */  b     .L80004C9C
/* 005878 80004C78 00408025 */   move  $s0, $v0
/* 00587C 80004C7C 8FA50074 */  lw    $a1, 0x74($sp)
/* 005880 80004C80 00003025 */  move  $a2, $zero
/* 005884 80004C84 2410FFFF */  li    $s0, -1
/* 005888 80004C88 0C000C18 */  jal   osSendMesg
/* 00588C 80004C8C 8CA40004 */   lw    $a0, 4($a1)
/* 005890 80004C90 10000002 */  b     .L80004C9C
/* 005894 80004C94 00000000 */   nop   
.L80004C98:
/* 005898 80004C98 2410FFFF */  li    $s0, -1
.L80004C9C:
/* 00589C 80004C9C 1600FF2B */  bnez  $s0, .L8000494C
/* 0058A0 80004CA0 02C02825 */   move  $a1, $s6
/* 0058A4 80004CA4 8E84000C */  lw    $a0, 0xc($s4)
/* 0058A8 80004CA8 0C000CA0 */  jal   osRecvMesg
/* 0058AC 80004CAC 02E03025 */   move  $a2, $s7
/* 0058B0 80004CB0 8FA50074 */  lw    $a1, 0x74($sp)
/* 0058B4 80004CB4 00003025 */  move  $a2, $zero
/* 0058B8 80004CB8 0C000C18 */  jal   osSendMesg
/* 0058BC 80004CBC 8CA40004 */   lw    $a0, 4($a1)
/* 0058C0 80004CC0 8E840010 */  lw    $a0, 0x10($s4)
/* 0058C4 80004CC4 00002825 */  move  $a1, $zero
/* 0058C8 80004CC8 0C000C18 */  jal   osSendMesg
/* 0058CC 80004CCC 00003025 */   move  $a2, $zero
/* 0058D0 80004CD0 1000FF1F */  b     .L80004950
/* 0058D4 80004CD4 8E840008 */   lw    $a0, 8($s4)
