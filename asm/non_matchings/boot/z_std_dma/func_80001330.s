glabel func_80001330
/* 001F30 80001330 3C058001 */  lui   $a1, %hi(gDmaDataTable)
/* 001F34 80001334 24A26DA0 */  addiu $v0, $a1, %lo(gDmaDataTable)
/* 001F38 80001338 8C4E0004 */  lw    $t6, 4($v0)
/* 001F3C 8000133C 3C038001 */  lui   $v1, %hi(D_8000946C) # $v1, 0x8001
/* 001F40 80001340 2463946C */  addiu $v1, %lo(D_8000946C) # addiu $v1, $v1, -0x6b94
/* 001F44 80001344 11C00010 */  beqz  $t6, .L80001388
/* 001F48 80001348 00000000 */   nop   
/* 001F4C 8000134C 8C4F0000 */  lw    $t7, ($v0)
.L80001350:
/* 001F50 80001350 008F082B */  sltu  $at, $a0, $t7
/* 001F54 80001354 54200008 */  bnezl $at, .L80001378
/* 001F58 80001358 8C590014 */   lw    $t9, 0x14($v0)
/* 001F5C 8000135C 8C580004 */  lw    $t8, 4($v0)
/* 001F60 80001360 0098082B */  sltu  $at, $a0, $t8
/* 001F64 80001364 50200004 */  beql  $at, $zero, .L80001378
/* 001F68 80001368 8C590014 */   lw    $t9, 0x14($v0)
/* 001F6C 8000136C 03E00008 */  jr    $ra
/* 001F70 80001370 8C620000 */   lw    $v0, ($v1)

/* 001F74 80001374 8C590014 */  lw    $t9, 0x14($v0)
.L80001378:
/* 001F78 80001378 24420010 */  addiu $v0, $v0, 0x10
/* 001F7C 8000137C 24630004 */  addiu $v1, $v1, 4
/* 001F80 80001380 5720FFF3 */  bnezl $t9, .L80001350
/* 001F84 80001384 8C4F0000 */   lw    $t7, ($v0)
.L80001388:
/* 001F88 80001388 03E00008 */  jr    $ra
/* 001F8C 8000138C 00000000 */   nop   

