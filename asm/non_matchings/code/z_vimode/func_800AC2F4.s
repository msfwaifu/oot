glabel func_800AC2F4
/* B23494 800AC2F4 2CE80001 */  sltiu $t0, $a3, 1
/* B23498 800AC2F8 27BDFFA0 */  addiu $sp, $sp, -0x60
/* B2349C 800AC2FC 0008102B */  sltu  $v0, $zero, $t0
/* B234A0 800AC300 AFA50064 */  sw    $a1, 0x64($sp)
/* B234A4 800AC304 10400004 */  beqz  $v0, .L800AC318
/* B234A8 800AC308 AFA60068 */   sw    $a2, 0x68($sp)
/* B234AC 800AC30C 8FA30074 */  lw    $v1, 0x74($sp)
/* B234B0 800AC310 2C620001 */  sltiu $v0, $v1, 1
/* B234B4 800AC314 0002102B */  sltu  $v0, $zero, $v0
.L800AC318:
/* B234B8 800AC318 8FA30074 */  lw    $v1, 0x74($sp)
/* B234BC 800AC31C 00405025 */  move  $t2, $v0
/* B234C0 800AC320 0008102B */  sltu  $v0, $zero, $t0
/* B234C4 800AC324 AFA20014 */  sw    $v0, 0x14($sp)
/* B234C8 800AC328 10400002 */  beqz  $v0, .L800AC334
/* B234CC 800AC32C 2C660001 */   sltiu $a2, $v1, 1
/* B234D0 800AC330 0003102B */  sltu  $v0, $zero, $v1
.L800AC334:
/* B234D4 800AC334 AFA20048 */  sw    $v0, 0x48($sp)
/* B234D8 800AC338 0007282B */  sltu  $a1, $zero, $a3
/* B234DC 800AC33C 10A00002 */  beqz  $a1, .L800AC348
/* B234E0 800AC340 00A01025 */   move  $v0, $a1
/* B234E4 800AC344 0003102B */  sltu  $v0, $zero, $v1
.L800AC348:
/* B234E8 800AC348 AFA20044 */  sw    $v0, 0x44($sp)
/* B234EC 800AC34C 10A00002 */  beqz  $a1, .L800AC358
/* B234F0 800AC350 00A01025 */   move  $v0, $a1
/* B234F4 800AC354 0006102B */  sltu  $v0, $zero, $a2
.L800AC358:
/* B234F8 800AC358 00404825 */  move  $t1, $v0
/* B234FC 800AC35C 10A0000B */  beqz  $a1, .L800AC38C
/* B23500 800AC360 00A01025 */   move  $v0, $a1
/* B23504 800AC364 8FAB0070 */  lw    $t3, 0x70($sp)
/* B23508 800AC368 2D670001 */  sltiu $a3, $t3, 1
/* B2350C 800AC36C 0007102B */  sltu  $v0, $zero, $a3
/* B23510 800AC370 50400007 */  beql  $v0, $zero, .L800AC390
/* B23514 800AC374 8FAD0078 */   lw    $t5, 0x78($sp)
/* B23518 800AC378 0003102B */  sltu  $v0, $zero, $v1
/* B2351C 800AC37C 10400003 */  beqz  $v0, .L800AC38C
/* B23520 800AC380 AFA20014 */   sw    $v0, 0x14($sp)
/* B23524 800AC384 8FAD0078 */  lw    $t5, 0x78($sp)
/* B23528 800AC388 000D102B */  sltu  $v0, $zero, $t5
.L800AC38C:
/* B2352C 800AC38C 8FAD0078 */  lw    $t5, 0x78($sp)
.L800AC390:
/* B23530 800AC390 8FAB0070 */  lw    $t3, 0x70($sp)
/* B23534 800AC394 AFA2003C */  sw    $v0, 0x3c($sp)
/* B23538 800AC398 000D702B */  sltu  $t6, $zero, $t5
/* B2353C 800AC39C AFAE0004 */  sw    $t6, 4($sp)
/* B23540 800AC3A0 00A01025 */  move  $v0, $a1
/* B23544 800AC3A4 10A00009 */  beqz  $a1, .L800AC3CC
/* B23548 800AC3A8 2D6C0001 */   sltiu $t4, $t3, 1
/* B2354C 800AC3AC 000B102B */  sltu  $v0, $zero, $t3
/* B23550 800AC3B0 10400006 */  beqz  $v0, .L800AC3CC
/* B23554 800AC3B4 AFA2000C */   sw    $v0, 0xc($sp)
/* B23558 800AC3B8 0003102B */  sltu  $v0, $zero, $v1
/* B2355C 800AC3BC 10400003 */  beqz  $v0, .L800AC3CC
/* B23560 800AC3C0 AFA2000C */   sw    $v0, 0xc($sp)
/* B23564 800AC3C4 2DA20001 */  sltiu $v0, $t5, 1
/* B23568 800AC3C8 0002102B */  sltu  $v0, $zero, $v0
.L800AC3CC:
/* B2356C 800AC3CC AFA20038 */  sw    $v0, 0x38($sp)
/* B23570 800AC3D0 0008102B */  sltu  $v0, $zero, $t0
/* B23574 800AC3D4 AFA20000 */  sw    $v0, ($sp)
/* B23578 800AC3D8 10400008 */  beqz  $v0, .L800AC3FC
/* B2357C 800AC3DC 2DA70001 */   sltiu $a3, $t5, 1
/* B23580 800AC3E0 000B102B */  sltu  $v0, $zero, $t3
/* B23584 800AC3E4 10400005 */  beqz  $v0, .L800AC3FC
/* B23588 800AC3E8 AFA20018 */   sw    $v0, 0x18($sp)
/* B2358C 800AC3EC 0003102B */  sltu  $v0, $zero, $v1
/* B23590 800AC3F0 10400002 */  beqz  $v0, .L800AC3FC
/* B23594 800AC3F4 AFA20018 */   sw    $v0, 0x18($sp)
/* B23598 800AC3F8 0007102B */  sltu  $v0, $zero, $a3
.L800AC3FC:
/* B2359C 800AC3FC 8FB9008C */  lw    $t9, 0x8c($sp)
/* B235A0 800AC400 8FAF0090 */  lw    $t7, 0x90($sp)
/* B235A4 800AC404 2403FFFE */  li    $v1, -2
/* B235A8 800AC408 03237024 */  and   $t6, $t9, $v1
/* B235AC 800AC40C 01E3C024 */  and   $t8, $t7, $v1
/* B235B0 800AC410 00406825 */  move  $t5, $v0
/* B235B4 800AC414 AFAE008C */  sw    $t6, 0x8c($sp)
/* B235B8 800AC418 11400004 */  beqz  $t2, .L800AC42C
/* B235BC 800AC41C AFB80090 */   sw    $t8, 0x90($sp)
/* B235C0 800AC420 8FA80068 */  lw    $t0, 0x68($sp)
/* B235C4 800AC424 10000003 */  b     .L800AC434
/* B235C8 800AC428 24030002 */   li    $v1, 2
.L800AC42C:
/* B235CC 800AC42C 8FA80068 */  lw    $t0, 0x68($sp)
/* B235D0 800AC430 24030001 */  li    $v1, 1
.L800AC434:
/* B235D4 800AC434 10A00003 */  beqz  $a1, .L800AC444
/* B235D8 800AC438 8FB90090 */   lw    $t9, 0x90($sp)
/* B235DC 800AC43C 10000002 */  b     .L800AC448
/* B235E0 800AC440 24020001 */   li    $v0, 1
.L800AC444:
/* B235E4 800AC444 24020002 */  li    $v0, 2
.L800AC448:
/* B235E8 800AC448 8FAE008C */  lw    $t6, 0x8c($sp)
/* B235EC 800AC44C 032E7823 */  subu  $t7, $t9, $t6
/* B235F0 800AC450 8FB90080 */  lw    $t9, 0x80($sp)
/* B235F4 800AC454 25F801E0 */  addiu $t8, $t7, 0x1e0
/* B235F8 800AC458 001972C0 */  sll   $t6, $t9, 0xb
/* B235FC 800AC45C 01D8001A */  div   $zero, $t6, $t8
/* B23600 800AC460 00007812 */  mflo  $t7
/* B23604 800AC464 17000002 */  bnez  $t8, .L800AC470
/* B23608 800AC468 00000000 */   nop   
/* B2360C 800AC46C 0007000D */  break 7
.L800AC470:
/* B23610 800AC470 2401FFFF */  li    $at, -1
/* B23614 800AC474 17010004 */  bne   $t8, $at, .L800AC488
/* B23618 800AC478 3C018000 */   lui   $at, 0x8000
/* B2361C 800AC47C 15C10002 */  bne   $t6, $at, .L800AC488
/* B23620 800AC480 00000000 */   nop   
/* B23624 800AC484 0006000D */  break 6
.L800AC488:
/* B23628 800AC488 01E2001A */  div   $zero, $t7, $v0
/* B2362C 800AC48C 0000C812 */  mflo  $t9
/* B23630 800AC490 8FB80064 */  lw    $t8, 0x64($sp)
/* B23634 800AC494 14400002 */  bnez  $v0, .L800AC4A0
/* B23638 800AC498 00000000 */   nop   
/* B2363C 800AC49C 0007000D */  break 7
.L800AC4A0:
/* B23640 800AC4A0 2401FFFF */  li    $at, -1
/* B23644 800AC4A4 14410004 */  bne   $v0, $at, .L800AC4B8
/* B23648 800AC4A8 3C018000 */   lui   $at, 0x8000
/* B2364C 800AC4AC 15E10002 */  bne   $t7, $at, .L800AC4B8
/* B23650 800AC4B0 00000000 */   nop   
/* B23654 800AC4B4 0006000D */  break 6
.L800AC4B8:
/* B23658 800AC4B8 03230019 */  multu $t9, $v1
/* B2365C 800AC4BC 00007012 */  mflo  $t6
/* B23660 800AC4C0 AFAE0030 */  sw    $t6, 0x30($sp)
/* B23664 800AC4C4 50C00008 */  beql  $a2, $zero, .L800AC4E8
/* B23668 800AC4C8 00005025 */   move  $t2, $zero
/* B2366C 800AC4CC 11200003 */  beqz  $t1, .L800AC4DC
/* B23670 800AC4D0 3C020200 */   lui   $v0, 0x200
/* B23674 800AC4D4 10000004 */  b     .L800AC4E8
/* B23678 800AC4D8 3C0A0100 */   lui   $t2, 0x100
.L800AC4DC:
/* B2367C 800AC4DC 10000002 */  b     .L800AC4E8
/* B23680 800AC4E0 00405025 */   move  $t2, $v0
/* B23684 800AC4E4 00005025 */  move  $t2, $zero
.L800AC4E8:
/* B23688 800AC4E8 50C00008 */  beql  $a2, $zero, .L800AC50C
/* B2368C 800AC4EC 00004825 */   move  $t1, $zero
/* B23690 800AC4F0 11200003 */  beqz  $t1, .L800AC500
/* B23694 800AC4F4 3C020200 */   lui   $v0, 0x200
/* B23698 800AC4F8 10000004 */  b     .L800AC50C
/* B2369C 800AC4FC 3C090300 */   lui   $t1, 0x300
.L800AC500:
/* B236A0 800AC500 10000002 */  b     .L800AC50C
/* B236A4 800AC504 00404825 */   move  $t1, $v0
/* B236A8 800AC508 00004825 */  move  $t1, $zero
.L800AC50C:
/* B236AC 800AC50C 11800003 */  beqz  $t4, .L800AC51C
/* B236B0 800AC510 A0980000 */   sb    $t8, ($a0)
/* B236B4 800AC514 10000002 */  b     .L800AC520
/* B236B8 800AC518 24060010 */   li    $a2, 16
.L800AC51C:
/* B236BC 800AC51C 00003025 */  move  $a2, $zero
.L800AC520:
/* B236C0 800AC520 8FAF0044 */  lw    $t7, 0x44($sp)
/* B236C4 800AC524 00001825 */  move  $v1, $zero
/* B236C8 800AC528 15E00003 */  bnez  $t7, .L800AC538
/* B236CC 800AC52C 00000000 */   nop   
/* B236D0 800AC530 10000001 */  b     .L800AC538
/* B236D4 800AC534 24030040 */   li    $v1, 64
.L800AC538:
/* B236D8 800AC538 10E00003 */  beqz  $a3, .L800AC548
/* B236DC 800AC53C 24020002 */   li    $v0, 2
/* B236E0 800AC540 10000001 */  b     .L800AC548
/* B236E4 800AC544 24020003 */   li    $v0, 3
.L800AC548:
/* B236E8 800AC548 3459300C */  ori   $t9, $v0, 0x300c
/* B236EC 800AC54C 03237025 */  or    $t6, $t9, $v1
/* B236F0 800AC550 01C6C025 */  or    $t8, $t6, $a2
/* B236F4 800AC554 AC980004 */  sw    $t8, 4($a0)
/* B236F8 800AC558 8FAF003C */  lw    $t7, 0x3c($sp)
/* B236FC 800AC55C 370E0100 */  ori   $t6, $t8, 0x100
/* B23700 800AC560 24020001 */  li    $v0, 1
/* B23704 800AC564 51E00004 */  beql  $t7, $zero, .L800AC578
/* B23708 800AC568 8FB80038 */   lw    $t8, 0x38($sp)
/* B2370C 800AC56C 10000011 */  b     .L800AC5B4
/* B23710 800AC570 AC8E0004 */   sw    $t6, 4($a0)
/* B23714 800AC574 8FB80038 */  lw    $t8, 0x38($sp)
.L800AC578:
/* B23718 800AC578 030D7825 */  or    $t7, $t8, $t5
/* B2371C 800AC57C 11E00005 */  beqz  $t7, .L800AC594
/* B23720 800AC580 00000000 */   nop   
/* B23724 800AC584 8C990004 */  lw    $t9, 4($a0)
/* B23728 800AC588 372E0300 */  ori   $t6, $t9, 0x300
/* B2372C 800AC58C 10000009 */  b     .L800AC5B4
/* B23730 800AC590 AC8E0004 */   sw    $t6, 4($a0)
.L800AC594:
/* B23734 800AC594 51600006 */  beql  $t3, $zero, .L800AC5B0
/* B23738 800AC598 8C990004 */   lw    $t9, 4($a0)
/* B2373C 800AC59C 8C980004 */  lw    $t8, 4($a0)
/* B23740 800AC5A0 370F0200 */  ori   $t7, $t8, 0x200
/* B23744 800AC5A4 10000003 */  b     .L800AC5B4
/* B23748 800AC5A8 AC8F0004 */   sw    $t7, 4($a0)
/* B2374C 800AC5AC 8C990004 */  lw    $t9, 4($a0)
.L800AC5B0:
/* B23750 800AC5B0 AC990004 */  sw    $t9, 4($a0)
.L800AC5B4:
/* B23754 800AC5B4 8FAE0048 */  lw    $t6, 0x48($sp)
/* B23758 800AC5B8 3C0F03E5 */  lui   $t7, (0x03E52239 >> 16) # lui $t7, 0x3e5
/* B2375C 800AC5BC 8FA6007C */  lw    $a2, 0x7c($sp)
/* B23760 800AC5C0 11C00003 */  beqz  $t6, .L800AC5D0
/* B23764 800AC5C4 35EF2239 */   ori   $t7, (0x03E52239 & 0xFFFF) # ori $t7, $t7, 0x2239
/* B23768 800AC5C8 10000001 */  b     .L800AC5D0
/* B2376C 800AC5CC 24020002 */   li    $v0, 2
.L800AC5D0:
/* B23770 800AC5D0 00460019 */  multu $v0, $a2
/* B23774 800AC5D4 24010001 */  li    $at, 1
/* B23778 800AC5D8 2419020C */  li    $t9, 524
/* B2377C 800AC5DC 240E0C15 */  li    $t6, 3093
/* B23780 800AC5E0 24020002 */  li    $v0, 2
/* B23784 800AC5E4 0000C012 */  mflo  $t8
/* B23788 800AC5E8 AC980008 */  sw    $t8, 8($a0)
/* B2378C 800AC5EC 15010010 */  bne   $t0, $at, .L800AC630
/* B23790 800AC5F0 3C180C15 */   lui   $t8, (0x0C150C15 >> 16) # lui $t8, 0xc15
/* B23794 800AC5F4 AC8F000C */  sw    $t7, 0xc($a0)
/* B23798 800AC5F8 AC990010 */  sw    $t9, 0x10($a0)
/* B2379C 800AC5FC AC8E0014 */  sw    $t6, 0x14($a0)
/* B237A0 800AC600 3C0F006C */  lui   $t7, (0x006C02EC >> 16) # lui $t7, 0x6c
/* B237A4 800AC604 3C190025 */  lui   $t9, (0x002501FF >> 16) # lui $t9, 0x25
/* B237A8 800AC608 3C0E000E */  lui   $t6, (0x000E0204 >> 16) # lui $t6, 0xe
/* B237AC 800AC60C 37180C15 */  ori   $t8, (0x0C150C15 & 0xFFFF) # ori $t8, $t8, 0xc15
/* B237B0 800AC610 35EF02EC */  ori   $t7, (0x006C02EC & 0xFFFF) # ori $t7, $t7, 0x2ec
/* B237B4 800AC614 373901FF */  ori   $t9, (0x002501FF & 0xFFFF) # ori $t9, $t9, 0x1ff
/* B237B8 800AC618 35CE0204 */  ori   $t6, (0x000E0204 & 0xFFFF) # ori $t6, $t6, 0x204
/* B237BC 800AC61C AC980018 */  sw    $t8, 0x18($a0)
/* B237C0 800AC620 AC8F001C */  sw    $t7, 0x1c($a0)
/* B237C4 800AC624 AC990030 */  sw    $t9, 0x30($a0)
/* B237C8 800AC628 1000002D */  b     .L800AC6E0
/* B237CC 800AC62C AC8E0034 */   sw    $t6, 0x34($a0)
.L800AC630:
/* B237D0 800AC630 15000017 */  bnez  $t0, .L800AC690
/* B237D4 800AC634 24020002 */   li    $v0, 2
/* B237D8 800AC638 3C180404 */  lui   $t8, (0x0404233A >> 16) # lui $t8, 0x404
/* B237DC 800AC63C 3C190015 */  lui   $t9, (0x00150C69 >> 16) # lui $t9, 0x15
/* B237E0 800AC640 3718233A */  ori   $t8, (0x0404233A & 0xFFFF) # ori $t8, $t8, 0x233a
/* B237E4 800AC644 240F0270 */  li    $t7, 624
/* B237E8 800AC648 37390C69 */  ori   $t9, (0x00150C69 & 0xFFFF) # ori $t9, $t9, 0xc69
/* B237EC 800AC64C AC98000C */  sw    $t8, 0xc($a0)
/* B237F0 800AC650 AC8F0010 */  sw    $t7, 0x10($a0)
/* B237F4 800AC654 AC990014 */  sw    $t9, 0x14($a0)
/* B237F8 800AC658 3C0E0C6F */  lui   $t6, (0x0C6F0C6E >> 16) # lui $t6, 0xc6f
/* B237FC 800AC65C 3C180080 */  lui   $t8, (0x00800300 >> 16) # lui $t8, 0x80
/* B23800 800AC660 3C0F005F */  lui   $t7, (0x005F0239 >> 16) # lui $t7, 0x5f
/* B23804 800AC664 3C190009 */  lui   $t9, (0x0009026B >> 16) # lui $t9, 9
/* B23808 800AC668 35CE0C6E */  ori   $t6, (0x0C6F0C6E & 0xFFFF) # ori $t6, $t6, 0xc6e
/* B2380C 800AC66C 37180300 */  ori   $t8, (0x00800300 & 0xFFFF) # ori $t8, $t8, 0x300
/* B23810 800AC670 35EF0239 */  ori   $t7, (0x005F0239 & 0xFFFF) # ori $t7, $t7, 0x239
/* B23814 800AC674 3739026B */  ori   $t9, (0x0009026B & 0xFFFF) # ori $t9, $t9, 0x26b
/* B23818 800AC678 AC8E0018 */  sw    $t6, 0x18($a0)
/* B2381C 800AC67C AC98001C */  sw    $t8, 0x1c($a0)
/* B23820 800AC680 AC8F0030 */  sw    $t7, 0x30($a0)
/* B23824 800AC684 AC990034 */  sw    $t9, 0x34($a0)
/* B23828 800AC688 10000015 */  b     .L800AC6E0
/* B2382C 800AC68C 24020002 */   li    $v0, 2
.L800AC690:
/* B23830 800AC690 15020013 */  bne   $t0, $v0, .L800AC6E0
/* B23834 800AC694 3C0E0465 */   lui   $t6, (0x04651E39 >> 16) # lui $t6, 0x465
/* B23838 800AC698 35CE1E39 */  ori   $t6, (0x04651E39 & 0xFFFF) # ori $t6, $t6, 0x1e39
/* B2383C 800AC69C 2418020C */  li    $t8, 524
/* B23840 800AC6A0 240F0C10 */  li    $t7, 3088
/* B23844 800AC6A4 AC8E000C */  sw    $t6, 0xc($a0)
/* B23848 800AC6A8 AC980010 */  sw    $t8, 0x10($a0)
/* B2384C 800AC6AC AC8F0014 */  sw    $t7, 0x14($a0)
/* B23850 800AC6B0 3C190C1C */  lui   $t9, (0x0C1C0C1C >> 16) # lui $t9, 0xc1c
/* B23854 800AC6B4 3C0E006C */  lui   $t6, (0x006C02EC >> 16) # lui $t6, 0x6c
/* B23858 800AC6B8 3C180025 */  lui   $t8, (0x002501FF >> 16) # lui $t8, 0x25
/* B2385C 800AC6BC 3C0F000E */  lui   $t7, (0x000E0204 >> 16) # lui $t7, 0xe
/* B23860 800AC6C0 37390C1C */  ori   $t9, (0x0C1C0C1C & 0xFFFF) # ori $t9, $t9, 0xc1c
/* B23864 800AC6C4 35CE02EC */  ori   $t6, (0x006C02EC & 0xFFFF) # ori $t6, $t6, 0x2ec
/* B23868 800AC6C8 371801FF */  ori   $t8, (0x002501FF & 0xFFFF) # ori $t8, $t8, 0x1ff
/* B2386C 800AC6CC 35EF0204 */  ori   $t7, (0x000E0204 & 0xFFFF) # ori $t7, $t7, 0x204
/* B23870 800AC6D0 AC990018 */  sw    $t9, 0x18($a0)
/* B23874 800AC6D4 AC8E001C */  sw    $t6, 0x1c($a0)
/* B23878 800AC6D8 AC980030 */  sw    $t8, 0x30($a0)
/* B2387C 800AC6DC AC8F0034 */  sw    $t7, 0x34($a0)
.L800AC6E0:
/* B23880 800AC6E0 8FAB0088 */  lw    $t3, 0x88($sp)
/* B23884 800AC6E4 8FA70084 */  lw    $a3, 0x84($sp)
/* B23888 800AC6E8 8C830030 */  lw    $v1, 0x30($a0)
/* B2388C 800AC6EC 000B7400 */  sll   $t6, $t3, 0x10
/* B23890 800AC6F0 000EC403 */  sra   $t8, $t6, 0x10
/* B23894 800AC6F4 8C8E001C */  lw    $t6, 0x1c($a0)
/* B23898 800AC6F8 0007CC00 */  sll   $t9, $a3, 0x10
/* B2389C 800AC6FC 03387821 */  addu  $t7, $t9, $t8
/* B238A0 800AC700 01CFC821 */  addu  $t9, $t6, $t7
/* B238A4 800AC704 AC99001C */  sw    $t9, 0x1c($a0)
/* B238A8 800AC708 AC830044 */  sw    $v1, 0x44($a0)
/* B238AC 800AC70C 8FB8008C */  lw    $t8, 0x8c($sp)
/* B238B0 800AC710 87AF0092 */  lh    $t7, 0x92($sp)
/* B238B4 800AC714 00187400 */  sll   $t6, $t8, 0x10
/* B238B8 800AC718 01CF6021 */  addu  $t4, $t6, $t7
/* B238BC 800AC71C 8C8F0034 */  lw    $t7, 0x34($a0)
/* B238C0 800AC720 006CC821 */  addu  $t9, $v1, $t4
/* B238C4 800AC724 006C7021 */  addu  $t6, $v1, $t4
/* B238C8 800AC728 AC990030 */  sw    $t9, 0x30($a0)
/* B238CC 800AC72C AC8E0044 */  sw    $t6, 0x44($a0)
/* B238D0 800AC730 AC8F0048 */  sw    $t7, 0x48($a0)
/* B238D4 800AC734 8FB90044 */  lw    $t9, 0x44($sp)
/* B238D8 800AC738 53200013 */  beql  $t9, $zero, .L800AC788
/* B238DC 800AC73C 8C8F0030 */   lw    $t7, 0x30($a0)
/* B238E0 800AC740 8C980010 */  lw    $t8, 0x10($a0)
/* B238E4 800AC744 270E0001 */  addiu $t6, $t8, 1
/* B238E8 800AC748 15020006 */  bne   $t0, $v0, .L800AC764
/* B238EC 800AC74C AC8E0010 */   sw    $t6, 0x10($a0)
/* B238F0 800AC750 8C8F0014 */  lw    $t7, 0x14($a0)
/* B238F4 800AC754 3C010004 */  lui   $at, (0x00040001 >> 16) # lui $at, 4
/* B238F8 800AC758 34210001 */  ori   $at, (0x00040001 & 0xFFFF) # ori $at, $at, 1
/* B238FC 800AC75C 01E1C821 */  addu  $t9, $t7, $at
/* B23900 800AC760 AC990014 */  sw    $t9, 0x14($a0)
.L800AC764:
/* B23904 800AC764 5502001A */  bnel  $t0, $v0, .L800AC7D0
/* B23908 800AC768 01677023 */   subu  $t6, $t3, $a3
/* B2390C 800AC76C 8C980018 */  lw    $t8, 0x18($a0)
/* B23910 800AC770 3C01FFFC */  lui   $at, (0xFFFCFFFE >> 16) # lui $at, 0xfffc
/* B23914 800AC774 3421FFFE */  ori   $at, (0xFFFCFFFE & 0xFFFF) # ori $at, $at, 0xfffe
/* B23918 800AC778 03017021 */  addu  $t6, $t8, $at
/* B2391C 800AC77C 10000013 */  b     .L800AC7CC
/* B23920 800AC780 AC8E0018 */   sw    $t6, 0x18($a0)
/* B23924 800AC784 8C8F0030 */  lw    $t7, 0x30($a0)
.L800AC788:
/* B23928 800AC788 3C01FFFD */  lui   $at, (0xFFFDFFFE >> 16) # lui $at, 0xfffd
/* B2392C 800AC78C 3421FFFE */  ori   $at, (0xFFFDFFFE & 0xFFFF) # ori $at, $at, 0xfffe
/* B23930 800AC790 01E1C821 */  addu  $t9, $t7, $at
/* B23934 800AC794 15020006 */  bne   $t0, $v0, .L800AC7B0
/* B23938 800AC798 AC990030 */   sw    $t9, 0x30($a0)
/* B2393C 800AC79C 8C980034 */  lw    $t8, 0x34($a0)
/* B23940 800AC7A0 3C01FFFC */  lui   $at, (0xFFFCFFFE >> 16) # lui $at, 0xfffc
/* B23944 800AC7A4 3421FFFE */  ori   $at, (0xFFFCFFFE & 0xFFFF) # ori $at, $at, 0xfffe
/* B23948 800AC7A8 03017021 */  addu  $t6, $t8, $at
/* B2394C 800AC7AC AC8E0034 */  sw    $t6, 0x34($a0)
.L800AC7B0:
/* B23950 800AC7B0 55000007 */  bnezl $t0, .L800AC7D0
/* B23954 800AC7B4 01677023 */   subu  $t6, $t3, $a3
/* B23958 800AC7B8 8C8F0048 */  lw    $t7, 0x48($a0)
/* B2395C 800AC7BC 3C010002 */  lui   $at, (0x0002FFFE >> 16) # lui $at, 2
/* B23960 800AC7C0 3421FFFE */  ori   $at, (0x0002FFFE & 0xFFFF) # ori $at, $at, 0xfffe
/* B23964 800AC7C4 01E1C821 */  addu  $t9, $t7, $at
/* B23968 800AC7C8 AC990048 */  sw    $t9, 0x48($a0)
.L800AC7CC:
/* B2396C 800AC7CC 01677023 */  subu  $t6, $t3, $a3
.L800AC7D0:
/* B23970 800AC7D0 25CF0280 */  addiu $t7, $t6, 0x280
/* B23974 800AC7D4 0006C280 */  sll   $t8, $a2, 0xa
/* B23978 800AC7D8 030F001A */  div   $zero, $t8, $t7
/* B2397C 800AC7DC 8FA30004 */  lw    $v1, 4($sp)
/* B23980 800AC7E0 15E00002 */  bnez  $t7, .L800AC7EC
/* B23984 800AC7E4 00000000 */   nop   
/* B23988 800AC7E8 0007000D */  break 7
.L800AC7EC:
/* B2398C 800AC7EC 2401FFFF */  li    $at, -1
/* B23990 800AC7F0 15E10004 */  bne   $t7, $at, .L800AC804
/* B23994 800AC7F4 3C018000 */   lui   $at, 0x8000
/* B23998 800AC7F8 17010002 */  bne   $t8, $at, .L800AC804
/* B2399C 800AC7FC 00000000 */   nop   
/* B239A0 800AC800 0006000D */  break 6
.L800AC804:
/* B239A4 800AC804 0000C812 */  mflo  $t9
/* B239A8 800AC808 AC990020 */  sw    $t9, 0x20($a0)
/* B239AC 800AC80C 10600003 */  beqz  $v1, .L800AC81C
/* B239B0 800AC810 AC800024 */   sw    $zero, 0x24($a0)
/* B239B4 800AC814 10000002 */  b     .L800AC820
/* B239B8 800AC818 24020001 */   li    $v0, 1
.L800AC81C:
/* B239BC 800AC81C 24020002 */  li    $v0, 2
.L800AC820:
/* B239C0 800AC820 00460019 */  multu $v0, $a2
/* B239C4 800AC824 24020002 */  li    $v0, 2
/* B239C8 800AC828 00007012 */  mflo  $t6
/* B239CC 800AC82C 000EC040 */  sll   $t8, $t6, 1
/* B239D0 800AC830 10600003 */  beqz  $v1, .L800AC840
/* B239D4 800AC834 AC980028 */   sw    $t8, 0x28($a0)
/* B239D8 800AC838 10000002 */  b     .L800AC844
/* B239DC 800AC83C 24030001 */   li    $v1, 1
.L800AC840:
/* B239E0 800AC840 24030002 */  li    $v1, 2
.L800AC844:
/* B239E4 800AC844 10A00003 */  beqz  $a1, .L800AC854
/* B239E8 800AC848 00000000 */   nop   
/* B239EC 800AC84C 10000001 */  b     .L800AC854
/* B239F0 800AC850 24020001 */   li    $v0, 1
.L800AC854:
/* B239F4 800AC854 00460019 */  multu $v0, $a2
/* B239F8 800AC858 24050002 */  li    $a1, 2
/* B239FC 800AC85C 00007812 */  mflo  $t7
/* B23A00 800AC860 000FC840 */  sll   $t9, $t7, 1
/* B23A04 800AC864 00000000 */  nop   
/* B23A08 800AC868 03230019 */  multu $t9, $v1
/* B23A0C 800AC86C 00007012 */  mflo  $t6
/* B23A10 800AC870 AC8E003C */  sw    $t6, 0x3c($a0)
/* B23A14 800AC874 8FB80030 */  lw    $t8, 0x30($sp)
/* B23A18 800AC878 030A7825 */  or    $t7, $t8, $t2
/* B23A1C 800AC87C AC8F002C */  sw    $t7, 0x2c($a0)
/* B23A20 800AC880 8FB90030 */  lw    $t9, 0x30($sp)
/* B23A24 800AC884 AC850038 */  sw    $a1, 0x38($a0)
/* B23A28 800AC888 AC85004C */  sw    $a1, 0x4c($a0)
/* B23A2C 800AC88C 03297025 */  or    $t6, $t9, $t1
/* B23A30 800AC890 AC8E0040 */  sw    $t6, 0x40($a0)
/* B23A34 800AC894 03E00008 */  jr    $ra
/* B23A38 800AC898 27BD0060 */   addiu $sp, $sp, 0x60

