glabel func_80000694
/* 001294 80000694 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 001298 80000698 AFA40020 */  sw    $a0, 0x20($sp)
/* 00129C 8000069C AFBF001C */  sw    $ra, 0x1c($sp)
/* 0012A0 800006A0 3C048001 */  lui   $a0, %hi(D_8000B068) # $a0, 0x8001
/* 0012A4 800006A4 0C00084C */  jal   osSyncPrintf
/* 0012A8 800006A8 2484B068 */   addiu $a0, %lo(D_8000B068) # addiu $a0, $a0, -0x4f98
/* 0012AC 800006AC 3C048001 */  lui   $a0, %hi(D_8000B08C) # $a0, 0x8001
/* 0012B0 800006B0 3C058001 */  lui   $a1, %hi(D_80012340) # $a1, 0x8001
/* 0012B4 800006B4 24A52340 */  addiu $a1, %lo(D_80012340) # addiu $a1, $a1, 0x2340
/* 0012B8 800006B8 0C00084C */  jal   osSyncPrintf
/* 0012BC 800006BC 2484B08C */   addiu $a0, %lo(D_8000B08C) # addiu $a0, $a0, -0x4f74
/* 0012C0 800006C0 3C048001 */  lui   $a0, %hi(D_8000B09C) # $a0, 0x8001
/* 0012C4 800006C4 3C058001 */  lui   $a1, %hi(D_80012350) # $a1, 0x8001
/* 0012C8 800006C8 24A52350 */  addiu $a1, %lo(D_80012350) # addiu $a1, $a1, 0x2350
/* 0012CC 800006CC 0C00084C */  jal   osSyncPrintf
/* 0012D0 800006D0 2484B09C */   addiu $a0, %lo(D_8000B09C) # addiu $a0, $a0, -0x4f64
/* 0012D4 800006D4 3C048001 */  lui   $a0, %hi(D_8000B0AC) # $a0, 0x8001
/* 0012D8 800006D8 3C058001 */  lui   $a1, %hi(D_80012364) # $a1, 0x8001
/* 0012DC 800006DC 24A52364 */  addiu $a1, %lo(D_80012364) # addiu $a1, $a1, 0x2364
/* 0012E0 800006E0 0C00084C */  jal   osSyncPrintf
/* 0012E4 800006E4 2484B0AC */   addiu $a0, %lo(D_8000B0AC) # addiu $a0, $a0, -0x4f54
/* 0012E8 800006E8 3C048001 */  lui   $a0, %hi(D_8000B0BC) # $a0, 0x8001
/* 0012EC 800006EC 0C00084C */  jal   osSyncPrintf
/* 0012F0 800006F0 2484B0BC */   addiu $a0, %lo(D_8000B0BC) # addiu $a0, $a0, -0x4f44
/* 0012F4 800006F4 3C058000 */  lui   $a1, %hi(D_80000318) # $a1, 0x8000
/* 0012F8 800006F8 8CA50318 */  lw    $a1, %lo(D_80000318)($a1)
/* 0012FC 800006FC 3C048001 */  lui   $a0, %hi(D_8000B0C4) # $a0, 0x8001
/* 001300 80000700 2484B0C4 */  addiu $a0, %lo(D_8000B0C4) # addiu $a0, $a0, -0x4f3c
/* 001304 80000704 04A10002 */  bgez  $a1, .L80000710
/* 001308 80000708 00A00821 */   addu  $at, $a1, $zero
/* 00130C 8000070C 24A103FF */  addiu $at, $a1, 0x3ff
.L80000710:
/* 001310 80000710 00012A83 */  sra   $a1, $at, 0xa
/* 001314 80000714 0C00084C */  jal   osSyncPrintf
/* 001318 80000718 00000000 */   nop   
/* 00131C 8000071C 3C048001 */  lui   $a0, %hi(D_8000B100) # $a0, 0x8001
/* 001320 80000720 3C058001 */  lui   $a1, %hi(_dmadataSegmentStart) # $a1, 0x8001
/* 001324 80000724 24A56DA0 */  addiu $a1, %lo(_dmadataSegmentStart) # addiu $a1, $a1, 0x6da0
/* 001328 80000728 0C00084C */  jal   osSyncPrintf
/* 00132C 8000072C 2484B100 */   addiu $a0, %lo(D_8000B100) # addiu $a0, $a0, -0x4f00
/* 001330 80000730 3C048001 */  lui   $a0, %hi(D_8000B140) # $a0, 0x8001
/* 001334 80000734 2484B140 */  addiu $a0, %lo(D_8000B140) # addiu $a0, $a0, -0x4ec0
/* 001338 80000738 0C00084C */  jal   osSyncPrintf
/* 00133C 8000073C 24050096 */   li    $a1, 150
/* 001340 80000740 3C048001 */  lui   $a0, %hi(D_8000B168) # $a0, 0x8001
/* 001344 80000744 2484B168 */  addiu $a0, %lo(D_8000B168) # addiu $a0, $a0, -0x4e98
/* 001348 80000748 0C00084C */  jal   osSyncPrintf
/* 00134C 8000074C 24050092 */   li    $a1, 146
/* 001350 80000750 3C048001 */  lui   $a0, %hi(D_8000B19C) # $a0, 0x8001
/* 001354 80000754 2484B19C */  addiu $a0, %lo(D_8000B19C) # addiu $a0, $a0, -0x4e64
/* 001358 80000758 0C00084C */  jal   osSyncPrintf
/* 00135C 8000075C 24050060 */   li    $a1, 96
/* 001360 80000760 3C048001 */  lui   $a0, %hi(D_8000B1CC) # $a0, 0x8001
/* 001364 80000764 2484B1CC */  addiu $a0, %lo(D_8000B1CC) # addiu $a0, $a0, -0x4e34
/* 001368 80000768 0C00084C */  jal   osSyncPrintf
/* 00136C 8000076C 24050003 */   li    $a1, 3
/* 001370 80000770 3C0E8021 */  lui   $t6, %hi(D_802109E0) # $t6, 0x8021
/* 001374 80000774 3C0F801E */  lui   $t7, %hi(D_801D89E0) # $t7, 0x801e
/* 001378 80000778 25EF89E0 */  addiu $t7, %lo(D_801D89E0) # addiu $t7, $t7, -0x7620
/* 00137C 8000077C 25CE09E0 */  addiu $t6, %lo(D_802109E0) # addiu $t6, $t6, 0x9e0
/* 001380 80000780 01CF2823 */  subu  $a1, $t6, $t7
/* 001384 80000784 3C048001 */  lui   $a0, %hi(D_8000B1FC) # $a0, 0x8001
/* 001388 80000788 2484B1FC */  addiu $a0, %lo(D_8000B1FC) # addiu $a0, $a0, -0x4e04
/* 00138C 8000078C 04A10002 */  bgez  $a1, .L80000798
/* 001390 80000790 00A00821 */   addu  $at, $a1, $zero
/* 001394 80000794 24A103FF */  addiu $at, $a1, 0x3ff
.L80000798:
/* 001398 80000798 00012A83 */  sra   $a1, $at, 0xa
/* 00139C 8000079C 0C00084C */  jal   osSyncPrintf
/* 0013A0 800007A0 00000000 */   nop   
/* 0013A4 800007A4 3C048001 */  lui   $a0, %hi(D_8000B22C) # $a0, 0x8001
/* 0013A8 800007A8 0C00084C */  jal   osSyncPrintf
/* 0013AC 800007AC 2484B22C */   addiu $a0, %lo(D_8000B22C) # addiu $a0, $a0, -0x4dd4
/* 0013B0 800007B0 0C002328 */  jal   func_80008CA0
/* 0013B4 800007B4 240400FE */   li    $a0, 254
/* 0013B8 800007B8 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* 0013BC 800007BC 44810000 */  mtc1  $at, $f0
/* 0013C0 800007C0 3C018001 */  lui   $at, %hi(D_8000943C) # $at, 0x8001
/* 0013C4 800007C4 24180042 */  li    $t8, 66
/* 0013C8 800007C8 AC38943C */  sw    $t8, %lo(D_8000943C)($at)
/* 0013CC 800007CC 3C038001 */  lui   $v1, %hi(D_80009444) # $v1, 0x8001
/* 0013D0 800007D0 3C018001 */  lui   $at, %hi(D_80009440)
/* 0013D4 800007D4 24639444 */  addiu $v1, %lo(D_80009444) # addiu $v1, $v1, -0x6bbc
/* 0013D8 800007D8 E4209440 */  swc1  $f0, %lo(D_80009440)($at)
/* 0013DC 800007DC 3C028000 */  lui   $v0, %hi(D_80000300) # $v0, 0x8000
/* 0013E0 800007E0 E4600000 */  swc1  $f0, ($v1)
/* 0013E4 800007E4 8C420300 */  lw    $v0, %lo(D_80000300)($v0)
/* 0013E8 800007E8 3C048001 */  lui   $a0, %hi(D_80013910) # $a0, 0x8001
/* 0013EC 800007EC 2409002C */  li    $t1, 44
/* 0013F0 800007F0 10400033 */  beqz  $v0, .L800008C0
/* 0013F4 800007F4 24843910 */   addiu $a0, %lo(D_80013910) # addiu $a0, $a0, 0x3910
/* 0013F8 800007F8 24010001 */  li    $at, 1
/* 0013FC 800007FC 10410006 */  beq   $v0, $at, .L80000818
/* 001400 80000800 24190002 */   li    $t9, 2
/* 001404 80000804 24010002 */  li    $at, 2
/* 001408 80000808 10410018 */  beq   $v0, $at, .L8000086C
/* 00140C 8000080C 240D001E */   li    $t5, 30
/* 001410 80000810 10000043 */  b     .L80000920
/* 001414 80000814 240F0001 */   li    $t7, 1
.L80000818:
/* 001418 80000818 3C098001 */  lui   $t1, %hi(D_8000AE00) # $t1, 0x8001
/* 00141C 8000081C 3C018001 */  lui   $at, %hi(D_80013960) # $at, 0x8001
/* 001420 80000820 2529AE00 */  addiu $t1, %lo(D_8000AE00) # addiu $t1, $t1, -0x5200
/* 001424 80000824 3C088001 */  lui   $t0, %hi(D_80013910) # $t0, 0x8001
/* 001428 80000828 A0393960 */  sb    $t9, %lo(D_80013960)($at)
/* 00142C 8000082C 25083910 */  addiu $t0, %lo(D_80013910) # addiu $t0, $t0, 0x3910
/* 001430 80000830 252C0048 */  addiu $t4, $t1, 0x48
.L80000834:
/* 001434 80000834 8D2B0000 */  lw    $t3, ($t1)
/* 001438 80000838 2529000C */  addiu $t1, $t1, 0xc
/* 00143C 8000083C 2508000C */  addiu $t0, $t0, 0xc
/* 001440 80000840 AD0BFFF4 */  sw    $t3, -0xc($t0)
/* 001444 80000844 8D2AFFF8 */  lw    $t2, -8($t1)
/* 001448 80000848 AD0AFFF8 */  sw    $t2, -8($t0)
/* 00144C 8000084C 8D2BFFFC */  lw    $t3, -4($t1)
/* 001450 80000850 152CFFF8 */  bne   $t1, $t4, .L80000834
/* 001454 80000854 AD0BFFFC */   sw    $t3, -4($t0)
/* 001458 80000858 8D2B0000 */  lw    $t3, ($t1)
/* 00145C 8000085C 8D2A0004 */  lw    $t2, 4($t1)
/* 001460 80000860 AD0B0000 */  sw    $t3, ($t0)
/* 001464 80000864 1000002D */  b     .L8000091C
/* 001468 80000868 AD0A0004 */   sw    $t2, 4($t0)
.L8000086C:
/* 00146C 8000086C 3C0F8001 */  lui   $t7, %hi(D_8000AE50) # $t7, 0x8001
/* 001470 80000870 3C018001 */  lui   $at, %hi(D_80013960) # $at, 0x8001
/* 001474 80000874 25EFAE50 */  addiu $t7, %lo(D_8000AE50) # addiu $t7, $t7, -0x51b0
/* 001478 80000878 3C0E8001 */  lui   $t6, %hi(D_80013910) # $t6, 0x8001
/* 00147C 8000087C A02D3960 */  sb    $t5, %lo(D_80013960)($at)
/* 001480 80000880 25CE3910 */  addiu $t6, %lo(D_80013910) # addiu $t6, $t6, 0x3910
/* 001484 80000884 25EC0048 */  addiu $t4, $t7, 0x48
.L80000888:
/* 001488 80000888 8DF90000 */  lw    $t9, ($t7)
/* 00148C 8000088C 25EF000C */  addiu $t7, $t7, 0xc
/* 001490 80000890 25CE000C */  addiu $t6, $t6, 0xc
/* 001494 80000894 ADD9FFF4 */  sw    $t9, -0xc($t6)
/* 001498 80000898 8DF8FFF8 */  lw    $t8, -8($t7)
/* 00149C 8000089C ADD8FFF8 */  sw    $t8, -8($t6)
/* 0014A0 800008A0 8DF9FFFC */  lw    $t9, -4($t7)
/* 0014A4 800008A4 15ECFFF8 */  bne   $t7, $t4, .L80000888
/* 0014A8 800008A8 ADD9FFFC */   sw    $t9, -4($t6)
/* 0014AC 800008AC 8DF90000 */  lw    $t9, ($t7)
/* 0014B0 800008B0 8DF80004 */  lw    $t8, 4($t7)
/* 0014B4 800008B4 ADD90000 */  sw    $t9, ($t6)
/* 0014B8 800008B8 10000018 */  b     .L8000091C
/* 0014BC 800008BC ADD80004 */   sw    $t8, 4($t6)
.L800008C0:
/* 0014C0 800008C0 3C0A8001 */  lui   $t2, %hi(D_8000AF20) # $t2, 0x8001
/* 0014C4 800008C4 3C018001 */  lui   $at, %hi(D_80013960) # $at, 0x8001
/* 0014C8 800008C8 254AAF20 */  addiu $t2, %lo(D_8000AF20) # addiu $t2, $t2, -0x50e0
/* 0014CC 800008CC 3C088001 */  lui   $t0, %hi(D_80013910) # $t0, 0x8001
/* 0014D0 800008D0 A0293960 */  sb    $t1, %lo(D_80013960)($at)
/* 0014D4 800008D4 25083910 */  addiu $t0, %lo(D_80013910) # addiu $t0, $t0, 0x3910
/* 0014D8 800008D8 254C0048 */  addiu $t4, $t2, 0x48
.L800008DC:
/* 0014DC 800008DC 8D4D0000 */  lw    $t5, ($t2)
/* 0014E0 800008E0 254A000C */  addiu $t2, $t2, 0xc
/* 0014E4 800008E4 2508000C */  addiu $t0, $t0, 0xc
/* 0014E8 800008E8 AD0DFFF4 */  sw    $t5, -0xc($t0)
/* 0014EC 800008EC 8D4BFFF8 */  lw    $t3, -8($t2)
/* 0014F0 800008F0 AD0BFFF8 */  sw    $t3, -8($t0)
/* 0014F4 800008F4 8D4DFFFC */  lw    $t5, -4($t2)
/* 0014F8 800008F8 154CFFF8 */  bne   $t2, $t4, .L800008DC
/* 0014FC 800008FC AD0DFFFC */   sw    $t5, -4($t0)
/* 001500 80000900 8D4D0000 */  lw    $t5, ($t2)
/* 001504 80000904 8D4B0004 */  lw    $t3, 4($t2)
/* 001508 80000908 3C018001 */  lui   $at, %hi(D_8000B238)
/* 00150C 8000090C AD0D0000 */  sw    $t5, ($t0)
/* 001510 80000910 AD0B0004 */  sw    $t3, 4($t0)
/* 001514 80000914 C424B238 */  lwc1  $f4, %lo(D_8000B238)($at)
/* 001518 80000918 E4640000 */  swc1  $f4, ($v1)
.L8000091C:
/* 00151C 8000091C 240F0001 */  li    $t7, 1
.L80000920:
/* 001520 80000920 3C018001 */  lui   $at, %hi(D_80009430) # $at, 0x8001
/* 001524 80000924 0C0013F8 */  jal   osViSetMode
/* 001528 80000928 A02F9430 */   sb    $t7, %lo(D_80009430)($at)
/* 00152C 8000092C 0C000284 */  jal   func_80000A10
/* 001530 80000930 24040001 */   li    $a0, 1
/* 001534 80000934 0C001398 */  jal   osViBlack
/* 001538 80000938 24040001 */   li    $a0, 1
/* 00153C 8000093C 3C040803 */  lui   $a0, (0x0803DA80 >> 16) # lui $a0, 0x803
/* 001540 80000940 0C0019A4 */  jal   osViSwapBuffer
/* 001544 80000944 3484DA80 */   ori   $a0, (0x0803DA80 & 0xFFFF) # ori $a0, $a0, 0xda80
/* 001548 80000948 3C058001 */  lui   $a1, %hi(D_800138F8) # $a1, 0x8001
/* 00154C 8000094C 3C068001 */  lui   $a2, %hi(D_80013830) # $a2, 0x8001
/* 001550 80000950 24C63830 */  addiu $a2, %lo(D_80013830) # addiu $a2, $a2, 0x3830
/* 001554 80000954 24A538F8 */  addiu $a1, %lo(D_800138F8) # addiu $a1, $a1, 0x38f8
/* 001558 80000958 24040096 */  li    $a0, 150
/* 00155C 8000095C 0C0011E0 */  jal   func_80004780
/* 001560 80000960 24070032 */   li    $a3, 50
/* 001564 80000964 3C188001 */  lui   $t8, %hi(D_8000B230) # $t8, 0x8001
/* 001568 80000968 2718B230 */  addiu $t8, %lo(D_8000B230) # addiu $t8, $t8, -0x4dd0
/* 00156C 8000096C 3C048001 */  lui   $a0, %hi(D_80013810) # $a0, 0x8001
/* 001570 80000970 3C058001 */  lui   $a1, %hi(D_80012F10) # $a1, 0x8001
/* 001574 80000974 3C068001 */  lui   $a2, %hi(D_80013810) # $a2, 0x8001
/* 001578 80000978 240E0400 */  li    $t6, 1024
/* 00157C 8000097C AFAE0010 */  sw    $t6, 0x10($sp)
/* 001580 80000980 24C63810 */  addiu $a2, %lo(D_80013810) # addiu $a2, $a2, 0x3810
/* 001584 80000984 24A52F10 */  addiu $a1, %lo(D_80012F10) # addiu $a1, $a1, 0x2f10
/* 001588 80000988 24843810 */  addiu $a0, %lo(D_80013810) # addiu $a0, $a0, 0x3810
/* 00158C 8000098C AFB80014 */  sw    $t8, 0x14($sp)
/* 001590 80000990 0C000998 */  jal   func_80002660
/* 001594 80000994 00003825 */   move  $a3, $zero
/* 001598 80000998 3C198001 */  lui   $t9, %hi(D_80013810) # $t9, 0x8001
/* 00159C 8000099C 27393810 */  addiu $t9, %lo(D_80013810) # addiu $t9, $t9, 0x3810
/* 0015A0 800009A0 3C048001 */  lui   $a0, %hi(D_80012D60) # $a0, 0x8001
/* 0015A4 800009A4 3C068000 */  lui   $a2, %hi(func_800005A0) # $a2, 0x8000
/* 0015A8 800009A8 2409000A */  li    $t1, 10
/* 0015AC 800009AC AFA90014 */  sw    $t1, 0x14($sp)
/* 0015B0 800009B0 24C605A0 */  addiu $a2, %lo(func_800005A0) # addiu $a2, $a2, 0x5a0
/* 0015B4 800009B4 24842D60 */  addiu $a0, %lo(D_80012D60) # addiu $a0, $a0, 0x2d60
/* 0015B8 800009B8 AFB90010 */  sw    $t9, 0x10($sp)
/* 0015BC 800009BC 24050003 */  li    $a1, 3
/* 0015C0 800009C0 0C001154 */  jal   osCreateThread
/* 0015C4 800009C4 8FA70020 */   lw    $a3, 0x20($sp)
/* 0015C8 800009C8 3C048001 */  lui   $a0, %hi(D_80012D60) # $a0, 0x8001
/* 0015CC 800009CC 0C0023F0 */  jal   osStartThread
/* 0015D0 800009D0 24842D60 */   addiu $a0, %lo(D_80012D60) # addiu $a0, $a0, 0x2d60
/* 0015D4 800009D4 00002025 */  move  $a0, $zero
/* 0015D8 800009D8 0C00190C */  jal   osSetThreadPri
/* 0015DC 800009DC 00002825 */   move  $a1, $zero
.L800009E0:
/* 0015E0 800009E0 1000FFFF */  b     .L800009E0
/* 0015E4 800009E4 00000000 */   nop   
/* 0015E8 800009E8 00000000 */  nop   
/* 0015EC 800009EC 00000000 */  nop   
/* 0015F0 800009F0 00000000 */  nop   
/* 0015F4 800009F4 00000000 */  nop   
/* 0015F8 800009F8 00000000 */  nop   
/* 0015FC 800009FC 00000000 */  nop   
/* 001600 80000A00 8FBF001C */  lw    $ra, 0x1c($sp)
/* 001604 80000A04 27BD0020 */  addiu $sp, $sp, 0x20
/* 001608 80000A08 03E00008 */  jr    $ra
/* 00160C 80000A0C 00000000 */   nop   

