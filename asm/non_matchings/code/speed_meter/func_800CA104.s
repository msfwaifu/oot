glabel func_800CA104
/* B412A4 800CA104 27BDFF68 */  addiu $sp, $sp, -0x98
/* B412A8 800CA108 3C0E8016 */  lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* B412AC 800CA10C 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* B412B0 800CA110 AFBF003C */  sw    $ra, 0x3c($sp)
/* B412B4 800CA114 AFB20038 */  sw    $s2, 0x38($sp)
/* B412B8 800CA118 AFB10034 */  sw    $s1, 0x34($sp)
/* B412BC 800CA11C AFB00030 */  sw    $s0, 0x30($sp)
/* B412C0 800CA120 AFA40098 */  sw    $a0, 0x98($sp)
/* B412C4 800CA124 AFA600A0 */  sw    $a2, 0xa0($sp)
/* B412C8 800CA128 85CF00D4 */  lh    $t7, 0xd4($t6)
/* B412CC 800CA12C 00A09025 */  move  $s2, $a1
/* B412D0 800CA130 241000D4 */  li    $s0, 212
/* B412D4 800CA134 29E10003 */  slti  $at, $t7, 3
/* B412D8 800CA138 1420001E */  bnez  $at, .L800CA1B4
/* B412DC 800CA13C 00000000 */   nop   
/* B412E0 800CA140 0C01EC9A */  jal   func_8007B268
/* B412E4 800CA144 00000000 */   nop   
/* B412E8 800CA148 1040001A */  beqz  $v0, .L800CA1B4
/* B412EC 800CA14C 27A4005C */   addiu $a0, $sp, 0x5c
/* B412F0 800CA150 27A50058 */  addiu $a1, $sp, 0x58
/* B412F4 800CA154 0C01EC6A */  jal   func_8007B1A8
/* B412F8 800CA158 27A60054 */   addiu $a2, $sp, 0x54
/* B412FC 800CA15C 8FA60054 */  lw    $a2, 0x54($sp)
/* B41300 800CA160 8FB80058 */  lw    $t8, 0x58($sp)
/* B41304 800CA164 27B1006C */  addiu $s1, $sp, 0x6c
/* B41308 800CA168 3419FFFF */  li    $t9, 65535
/* B4130C 800CA16C 2408001E */  li    $t0, 30
/* B41310 800CA170 24090122 */  li    $t1, 290
/* B41314 800CA174 240A00D4 */  li    $t2, 212
/* B41318 800CA178 240B00D5 */  li    $t3, 213
/* B4131C 800CA17C AFAB0020 */  sw    $t3, 0x20($sp)
/* B41320 800CA180 AFAA001C */  sw    $t2, 0x1c($sp)
/* B41324 800CA184 AFA90018 */  sw    $t1, 0x18($sp)
/* B41328 800CA188 AFA80014 */  sw    $t0, 0x14($sp)
/* B4132C 800CA18C AFB90010 */  sw    $t9, 0x10($sp)
/* B41330 800CA190 02202025 */  move  $a0, $s1
/* B41334 800CA194 2407003F */  li    $a3, 63
/* B41338 800CA198 0C032782 */  jal   func_800C9E08
/* B4133C 800CA19C 03062821 */   addu  $a1, $t8, $a2
/* B41340 800CA1A0 02202025 */  move  $a0, $s1
/* B41344 800CA1A4 0C032791 */  jal   func_800C9E44
/* B41348 800CA1A8 02402825 */   move  $a1, $s2
/* B4134C 800CA1AC 00008025 */  move  $s0, $zero
/* B41350 800CA1B0 261000D6 */  addiu $s0, $s0, 0xd6
.L800CA1B4:
/* B41354 800CA1B4 3C0C8016 */  lui   $t4, %hi(gGameInfo) # $t4, 0x8016
/* B41358 800CA1B8 8D8CFA90 */  lw    $t4, %lo(gGameInfo)($t4)
/* B4135C 800CA1BC 27B1006C */  addiu $s1, $sp, 0x6c
/* B41360 800CA1C0 858D00D4 */  lh    $t5, 0xd4($t4)
/* B41364 800CA1C4 29A10002 */  slti  $at, $t5, 2
/* B41368 800CA1C8 1420001A */  bnez  $at, .L800CA234
/* B4136C 800CA1CC 27A40050 */   addiu $a0, $sp, 0x50
/* B41370 800CA1D0 27A5004C */  addiu $a1, $sp, 0x4c
/* B41374 800CA1D4 0C03F622 */  jal   func_800FD888
/* B41378 800CA1D8 27A60048 */   addiu $a2, $sp, 0x48
/* B4137C 800CA1DC 8FAE00A0 */  lw    $t6, 0xa0($sp)
/* B41380 800CA1E0 8FAF004C */  lw    $t7, 0x4c($sp)
/* B41384 800CA1E4 8FB80048 */  lw    $t8, 0x48($sp)
/* B41388 800CA1E8 8DC20074 */  lw    $v0, 0x74($t6)
/* B4138C 800CA1EC 3409FC21 */  li    $t1, 64545
/* B41390 800CA1F0 240A001E */  li    $t2, 30
/* B41394 800CA1F4 240B0122 */  li    $t3, 290
/* B41398 800CA1F8 01F8C821 */  addu  $t9, $t7, $t8
/* B4139C 800CA1FC AFAB0018 */  sw    $t3, 0x18($sp)
/* B413A0 800CA200 AFAA0014 */  sw    $t2, 0x14($sp)
/* B413A4 800CA204 AFA90010 */  sw    $t1, 0x10($sp)
/* B413A8 800CA208 AFB00020 */  sw    $s0, 0x20($sp)
/* B413AC 800CA20C AFB0001C */  sw    $s0, 0x1c($sp)
/* B413B0 800CA210 02202025 */  move  $a0, $s1
/* B413B4 800CA214 2407003F */  li    $a3, 63
/* B413B8 800CA218 03222823 */  subu  $a1, $t9, $v0
/* B413BC 800CA21C 0C032782 */  jal   func_800C9E08
/* B413C0 800CA220 03023023 */   subu  $a2, $t8, $v0
/* B413C4 800CA224 02202025 */  move  $a0, $s1
/* B413C8 800CA228 0C032791 */  jal   func_800C9E44
/* B413CC 800CA22C 02402825 */   move  $a1, $s2
/* B413D0 800CA230 26100001 */  addiu $s0, $s0, 1
.L800CA234:
/* B413D4 800CA234 8FA400A0 */  lw    $a0, 0xa0($sp)
/* B413D8 800CA238 24840074 */  addiu $a0, $a0, 0x74
/* B413DC 800CA23C 0C030EE2 */  jal   func_800C3B88
/* B413E0 800CA240 AFA40040 */   sw    $a0, 0x40($sp)
/* B413E4 800CA244 8FAC0040 */  lw    $t4, 0x40($sp)
/* B413E8 800CA248 240D07C1 */  li    $t5, 1985
/* B413EC 800CA24C 240E001E */  li    $t6, 30
/* B413F0 800CA250 8D850000 */  lw    $a1, ($t4)
/* B413F4 800CA254 240F0122 */  li    $t7, 290
/* B413F8 800CA258 AFAF0018 */  sw    $t7, 0x18($sp)
/* B413FC 800CA25C AFB00020 */  sw    $s0, 0x20($sp)
/* B41400 800CA260 AFB0001C */  sw    $s0, 0x1c($sp)
/* B41404 800CA264 AFAE0014 */  sw    $t6, 0x14($sp)
/* B41408 800CA268 AFAD0010 */  sw    $t5, 0x10($sp)
/* B4140C 800CA26C 02202025 */  move  $a0, $s1
/* B41410 800CA270 2407003F */  li    $a3, 63
/* B41414 800CA274 0C032782 */  jal   func_800C9E08
/* B41418 800CA278 00A23023 */   subu  $a2, $a1, $v0
/* B4141C 800CA27C 02202025 */  move  $a0, $s1
/* B41420 800CA280 0C032791 */  jal   func_800C9E44
/* B41424 800CA284 02402825 */   move  $a1, $s2
/* B41428 800CA288 264402B8 */  addiu $a0, $s2, 0x2b8
/* B4142C 800CA28C 26100001 */  addiu $s0, $s0, 1
/* B41430 800CA290 0C030E40 */  jal   func_800C3900
/* B41434 800CA294 AFA40040 */   sw    $a0, 0x40($sp)
/* B41438 800CA298 8FB80040 */  lw    $t8, 0x40($sp)
/* B4143C 800CA29C 3419F83F */  li    $t9, 63551
/* B41440 800CA2A0 2408001E */  li    $t0, 30
/* B41444 800CA2A4 8F050000 */  lw    $a1, ($t8)
/* B41448 800CA2A8 24090122 */  li    $t1, 290
/* B4144C 800CA2AC AFA90018 */  sw    $t1, 0x18($sp)
/* B41450 800CA2B0 AFB00020 */  sw    $s0, 0x20($sp)
/* B41454 800CA2B4 AFB0001C */  sw    $s0, 0x1c($sp)
/* B41458 800CA2B8 AFA80014 */  sw    $t0, 0x14($sp)
/* B4145C 800CA2BC AFB90010 */  sw    $t9, 0x10($sp)
/* B41460 800CA2C0 02202025 */  move  $a0, $s1
/* B41464 800CA2C4 2407003F */  li    $a3, 63
/* B41468 800CA2C8 0C032782 */  jal   func_800C9E08
/* B4146C 800CA2CC 00A23023 */   subu  $a2, $a1, $v0
/* B41470 800CA2D0 02202025 */  move  $a0, $s1
/* B41474 800CA2D4 0C032791 */  jal   func_800C9E44
/* B41478 800CA2D8 02402825 */   move  $a1, $s2
/* B4147C 800CA2DC 264402C8 */  addiu $a0, $s2, 0x2c8
/* B41480 800CA2E0 26100001 */  addiu $s0, $s0, 1
/* B41484 800CA2E4 0C030E40 */  jal   func_800C3900
/* B41488 800CA2E8 AFA40040 */   sw    $a0, 0x40($sp)
/* B4148C 800CA2EC 8FAA0040 */  lw    $t2, 0x40($sp)
/* B41490 800CA2F0 340BFFC1 */  li    $t3, 65473
/* B41494 800CA2F4 240C001E */  li    $t4, 30
/* B41498 800CA2F8 8D450000 */  lw    $a1, ($t2)
/* B4149C 800CA2FC 240D0122 */  li    $t5, 290
/* B414A0 800CA300 AFAD0018 */  sw    $t5, 0x18($sp)
/* B414A4 800CA304 AFB00020 */  sw    $s0, 0x20($sp)
/* B414A8 800CA308 AFB0001C */  sw    $s0, 0x1c($sp)
/* B414AC 800CA30C AFAC0014 */  sw    $t4, 0x14($sp)
/* B414B0 800CA310 AFAB0010 */  sw    $t3, 0x10($sp)
/* B414B4 800CA314 02202025 */  move  $a0, $s1
/* B414B8 800CA318 2407003F */  li    $a3, 63
/* B414BC 800CA31C 0C032782 */  jal   func_800C9E08
/* B414C0 800CA320 00A23023 */   subu  $a2, $a1, $v0
/* B414C4 800CA324 02202025 */  move  $a0, $s1
/* B414C8 800CA328 0C032791 */  jal   func_800C9E44
/* B414CC 800CA32C 02402825 */   move  $a1, $s2
/* B414D0 800CA330 264402A8 */  addiu $a0, $s2, 0x2a8
/* B414D4 800CA334 26100001 */  addiu $s0, $s0, 1
/* B414D8 800CA338 0C030E40 */  jal   func_800C3900
/* B414DC 800CA33C AFA40040 */   sw    $a0, 0x40($sp)
/* B414E0 800CA340 8FAE0040 */  lw    $t6, 0x40($sp)
/* B414E4 800CA344 340FF801 */  li    $t7, 63489
/* B414E8 800CA348 2418001E */  li    $t8, 30
/* B414EC 800CA34C 8DC50000 */  lw    $a1, ($t6)
/* B414F0 800CA350 24190122 */  li    $t9, 290
/* B414F4 800CA354 AFB90018 */  sw    $t9, 0x18($sp)
/* B414F8 800CA358 AFB00020 */  sw    $s0, 0x20($sp)
/* B414FC 800CA35C AFB0001C */  sw    $s0, 0x1c($sp)
/* B41500 800CA360 AFB80014 */  sw    $t8, 0x14($sp)
/* B41504 800CA364 AFAF0010 */  sw    $t7, 0x10($sp)
/* B41508 800CA368 02202025 */  move  $a0, $s1
/* B4150C 800CA36C 2407003F */  li    $a3, 63
/* B41510 800CA370 0C032782 */  jal   func_800C9E08
/* B41514 800CA374 00A23023 */   subu  $a2, $a1, $v0
/* B41518 800CA378 02202025 */  move  $a0, $s1
/* B4151C 800CA37C 0C032791 */  jal   func_800C9E44
/* B41520 800CA380 02402825 */   move  $a1, $s2
/* B41524 800CA384 8FBF003C */  lw    $ra, 0x3c($sp)
/* B41528 800CA388 8FB00030 */  lw    $s0, 0x30($sp)
/* B4152C 800CA38C 8FB10034 */  lw    $s1, 0x34($sp)
/* B41530 800CA390 8FB20038 */  lw    $s2, 0x38($sp)
/* B41534 800CA394 03E00008 */  jr    $ra
/* B41538 800CA398 27BD0098 */   addiu $sp, $sp, 0x98
