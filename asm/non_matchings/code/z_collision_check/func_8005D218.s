glabel func_8005D218
/* AD43B8 8005D218 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AD43BC 8005D21C AFBF0014 */  sw    $ra, 0x14($sp)
/* AD43C0 8005D220 AFA40030 */  sw    $a0, 0x30($sp)
/* AD43C4 8005D224 AFA60038 */  sw    $a2, 0x38($sp)
/* AD43C8 8005D228 90AE002D */  lbu   $t6, 0x2d($a1)
/* AD43CC 8005D22C 00A03825 */  move  $a3, $a1
/* AD43D0 8005D230 24E50070 */  addiu $a1, $a3, 0x70
/* AD43D4 8005D234 31CF0004 */  andi  $t7, $t6, 4
/* AD43D8 8005D238 15E00003 */  bnez  $t7, .L8005D248
/* AD43DC 8005D23C 27A40020 */   addiu $a0, $sp, 0x20
/* AD43E0 8005D240 1000001C */  b     .L8005D2B4
/* AD43E4 8005D244 24020001 */   li    $v0, 1
.L8005D248:
/* AD43E8 8005D248 0C01DF97 */  jal   Math_Vec3s_ToVec3f
/* AD43EC 8005D24C AFA70034 */   sw    $a3, 0x34($sp)
/* AD43F0 8005D250 27A40020 */  addiu $a0, $sp, 0x20
/* AD43F4 8005D254 0C032D94 */  jal   func_800CB650
/* AD43F8 8005D258 8FA50038 */   lw    $a1, 0x38($sp)
/* AD43FC 8005D25C 8FA70034 */  lw    $a3, 0x34($sp)
/* AD4400 8005D260 00001025 */  move  $v0, $zero
/* AD4404 8005D264 C4E4007C */  lwc1  $f4, 0x7c($a3)
/* AD4408 8005D268 4604003C */  c.lt.s $f0, $f4
/* AD440C 8005D26C 00000000 */  nop   
/* AD4410 8005D270 45000010 */  bc1f  .L8005D2B4
/* AD4414 8005D274 00000000 */   nop   
/* AD4418 8005D278 8CE50030 */  lw    $a1, 0x30($a3)
/* AD441C 8005D27C E4E0007C */  swc1  $f0, 0x7c($a3)
/* AD4420 8005D280 8FA40030 */  lw    $a0, 0x30($sp)
/* AD4424 8005D284 50A00005 */  beql  $a1, $zero, .L8005D29C
/* AD4428 8005D288 8CE50038 */   lw    $a1, 0x38($a3)
/* AD442C 8005D28C 0C016DE1 */  jal   func_8005B784
/* AD4430 8005D290 AFA70034 */   sw    $a3, 0x34($sp)
/* AD4434 8005D294 8FA70034 */  lw    $a3, 0x34($sp)
/* AD4438 8005D298 8CE50038 */  lw    $a1, 0x38($a3)
.L8005D29C:
/* AD443C 8005D29C 10A00003 */  beqz  $a1, .L8005D2AC
/* AD4440 8005D2A0 00000000 */   nop   
/* AD4444 8005D2A4 0C016E7A */  jal   func_8005B9E8
/* AD4448 8005D2A8 8FA40030 */   lw    $a0, 0x30($sp)
.L8005D2AC:
/* AD444C 8005D2AC 10000001 */  b     .L8005D2B4
/* AD4450 8005D2B0 24020001 */   li    $v0, 1
.L8005D2B4:
/* AD4454 8005D2B4 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD4458 8005D2B8 27BD0030 */  addiu $sp, $sp, 0x30
/* AD445C 8005D2BC 03E00008 */  jr    $ra
/* AD4460 8005D2C0 00000000 */   nop   

/* AD4464 8005D2C4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD4468 8005D2C8 3C0E8012 */  lui   $t6, %hi(D_8011DEEC) # $t6, 0x8012
/* AD446C 8005D2CC AFBF0014 */  sw    $ra, 0x14($sp)
/* AD4470 8005D2D0 AFA40028 */  sw    $a0, 0x28($sp)
/* AD4474 8005D2D4 AFA5002C */  sw    $a1, 0x2c($sp)
/* AD4478 8005D2D8 25CEDEEC */  addiu $t6, %lo(D_8011DEEC) # addiu $t6, $t6, -0x2114
/* AD447C 8005D2DC 8DD80000 */  lw    $t8, ($t6)
/* AD4480 8005D2E0 27A5001C */  addiu $a1, $sp, 0x1c
/* AD4484 8005D2E4 ACB80000 */  sw    $t8, ($a1)
/* AD4488 8005D2E8 8DCF0004 */  lw    $t7, 4($t6)
/* AD448C 8005D2EC ACAF0004 */  sw    $t7, 4($a1)
/* AD4490 8005D2F0 8DD80008 */  lw    $t8, 8($t6)
/* AD4494 8005D2F4 ACB80008 */  sw    $t8, 8($a1)
/* AD4498 8005D2F8 0C01DF90 */  jal   Math_Vec3f_Copy
/* AD449C 8005D2FC 8FA4002C */   lw    $a0, 0x2c($sp)
/* AD44A0 8005D300 8FA4002C */  lw    $a0, 0x2c($sp)
/* AD44A4 8005D304 27A5001C */  addiu $a1, $sp, 0x1c
/* AD44A8 8005D308 0C01DF90 */  jal   Math_Vec3f_Copy
/* AD44AC 8005D30C 2484000C */   addiu $a0, $a0, 0xc
/* AD44B0 8005D310 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD44B4 8005D314 27BD0028 */  addiu $sp, $sp, 0x28
/* AD44B8 8005D318 24020001 */  li    $v0, 1
/* AD44BC 8005D31C 03E00008 */  jr    $ra
/* AD44C0 8005D320 00000000 */   nop   

/* AD44C4 8005D324 AFA40000 */  sw    $a0, ($sp)
/* AD44C8 8005D328 AFA50004 */  sw    $a1, 4($sp)
/* AD44CC 8005D32C 03E00008 */  jr    $ra
/* AD44D0 8005D330 24020001 */   li    $v0, 1

