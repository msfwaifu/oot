glabel func_80041128
/* AB82C8 80041128 27BDFFB0 */  addiu $sp, $sp, -0x50
/* AB82CC 8004112C 8FAC006C */  lw    $t4, 0x6c($sp)
/* AB82D0 80041130 8FAF0060 */  lw    $t7, 0x60($sp)
/* AB82D4 80041134 8FB90074 */  lw    $t9, 0x74($sp)
/* AB82D8 80041138 000C6880 */  sll   $t5, $t4, 2
/* AB82DC 8004113C 01AC6823 */  subu  $t5, $t5, $t4
/* AB82E0 80041140 000D68C0 */  sll   $t5, $t5, 3
/* AB82E4 80041144 01AC6821 */  addu  $t5, $t5, $t4
/* AB82E8 80041148 248E0050 */  addiu $t6, $a0, 0x50
/* AB82EC 8004114C 000D6880 */  sll   $t5, $t5, 2
/* AB82F0 80041150 8FB80064 */  lw    $t8, 0x64($sp)
/* AB82F4 80041154 8FAB0068 */  lw    $t3, 0x68($sp)
/* AB82F8 80041158 C7A40070 */  lwc1  $f4, 0x70($sp)
/* AB82FC 8004115C AFAE0028 */  sw    $t6, 0x28($sp)
/* AB8300 80041160 008D1821 */  addu  $v1, $a0, $t5
/* AB8304 80041164 AFAF0038 */  sw    $t7, 0x38($sp)
/* AB8308 80041168 33290008 */  andi  $t1, $t9, 8
/* AB830C 8004116C 0009502B */  sltu  $t2, $zero, $t1
/* AB8310 80041170 246E0060 */  addiu $t6, $v1, 0x60
/* AB8314 80041174 332F0001 */  andi  $t7, $t9, 1
/* AB8318 80041178 AFBF0014 */  sw    $ra, 0x14($sp)
/* AB831C 8004117C AFA50054 */  sw    $a1, 0x54($sp)
/* AB8320 80041180 00004025 */  move  $t0, $zero
/* AB8324 80041184 AFA40020 */  sw    $a0, 0x20($sp)
/* AB8328 80041188 A7A50024 */  sh    $a1, 0x24($sp)
/* AB832C 8004118C AFA60030 */  sw    $a2, 0x30($sp)
/* AB8330 80041190 AFA70034 */  sw    $a3, 0x34($sp)
/* AB8334 80041194 AFAA0040 */  sw    $t2, 0x40($sp)
/* AB8338 80041198 AFAE002C */  sw    $t6, 0x2c($sp)
/* AB833C 8004119C AFB8003C */  sw    $t8, 0x3c($sp)
/* AB8340 800411A0 AFAB0044 */  sw    $t3, 0x44($sp)
/* AB8344 800411A4 11E00009 */  beqz  $t7, .L800411CC
/* AB8348 800411A8 E7A40048 */   swc1  $f4, 0x48($sp)
/* AB834C 800411AC 27A40020 */  addiu $a0, $sp, 0x20
/* AB8350 800411B0 AFA3001C */  sw    $v1, 0x1c($sp)
/* AB8354 800411B4 0C0103E9 */  jal   func_80040FA4
/* AB8358 800411B8 AFA0004C */   sw    $zero, 0x4c($sp)
/* AB835C 800411BC 8FA3001C */  lw    $v1, 0x1c($sp)
/* AB8360 800411C0 10400002 */  beqz  $v0, .L800411CC
/* AB8364 800411C4 8FA8004C */   lw    $t0, 0x4c($sp)
/* AB8368 800411C8 24080001 */  li    $t0, 1
.L800411CC:
/* AB836C 800411CC 8FA90074 */  lw    $t1, 0x74($sp)
/* AB8370 800411D0 24780062 */  addiu $t8, $v1, 0x62
/* AB8374 800411D4 AFB8002C */  sw    $t8, 0x2c($sp)
/* AB8378 800411D8 312A0002 */  andi  $t2, $t1, 2
/* AB837C 800411DC 11400008 */  beqz  $t2, .L80041200
/* AB8380 800411E0 27A40020 */   addiu $a0, $sp, 0x20
/* AB8384 800411E4 AFA3001C */  sw    $v1, 0x1c($sp)
/* AB8388 800411E8 0C0103E9 */  jal   func_80040FA4
/* AB838C 800411EC AFA8004C */   sw    $t0, 0x4c($sp)
/* AB8390 800411F0 8FA3001C */  lw    $v1, 0x1c($sp)
/* AB8394 800411F4 10400002 */  beqz  $v0, .L80041200
/* AB8398 800411F8 8FA8004C */   lw    $t0, 0x4c($sp)
/* AB839C 800411FC 24080001 */  li    $t0, 1
.L80041200:
/* AB83A0 80041200 8FAC0074 */  lw    $t4, 0x74($sp)
/* AB83A4 80041204 246B005E */  addiu $t3, $v1, 0x5e
/* AB83A8 80041208 AFAB002C */  sw    $t3, 0x2c($sp)
/* AB83AC 8004120C 318D0004 */  andi  $t5, $t4, 4
/* AB83B0 80041210 11A00006 */  beqz  $t5, .L8004122C
/* AB83B4 80041214 27A40020 */   addiu $a0, $sp, 0x20
/* AB83B8 80041218 0C0103E9 */  jal   func_80040FA4
/* AB83BC 8004121C AFA8004C */   sw    $t0, 0x4c($sp)
/* AB83C0 80041220 10400002 */  beqz  $v0, .L8004122C
/* AB83C4 80041224 8FA8004C */   lw    $t0, 0x4c($sp)
/* AB83C8 80041228 24080001 */  li    $t0, 1
.L8004122C:
/* AB83CC 8004122C 8FBF0014 */  lw    $ra, 0x14($sp)
/* AB83D0 80041230 27BD0050 */  addiu $sp, $sp, 0x50
/* AB83D4 80041234 01001025 */  move  $v0, $t0
/* AB83D8 80041238 03E00008 */  jr    $ra
/* AB83DC 8004123C 00000000 */   nop   

