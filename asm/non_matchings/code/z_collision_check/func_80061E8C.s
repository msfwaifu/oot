glabel func_80061E8C
/* AD902C 80061E8C 44800000 */  mtc1  $zero, $f0
/* AD9030 80061E90 A0800018 */  sb    $zero, 0x18($a0)
/* AD9034 80061E94 A0800019 */  sb    $zero, 0x19($a0)
/* AD9038 80061E98 A080001A */  sb    $zero, 0x1a($a0)
/* AD903C 80061E9C A080001B */  sb    $zero, 0x1b($a0)
/* AD9040 80061EA0 E480000C */  swc1  $f0, 0xc($a0)
/* AD9044 80061EA4 E4800008 */  swc1  $f0, 8($a0)
/* AD9048 80061EA8 03E00008 */  jr    $ra
/* AD904C 80061EAC E4800004 */   swc1  $f0, 4($a0)

/* AD9050 80061EB0 90AE0000 */  lbu   $t6, ($a1)
/* AD9054 80061EB4 A08E0017 */  sb    $t6, 0x17($a0)
/* AD9058 80061EB8 84AF0002 */  lh    $t7, 2($a1)
/* AD905C 80061EBC A48F0010 */  sh    $t7, 0x10($a0)
/* AD9060 80061EC0 84B80004 */  lh    $t8, 4($a1)
/* AD9064 80061EC4 A4980012 */  sh    $t8, 0x12($a0)
/* AD9068 80061EC8 90B90006 */  lbu   $t9, 6($a1)
/* AD906C 80061ECC 03E00008 */  jr    $ra
/* AD9070 80061ED0 A0990016 */   sb    $t9, 0x16($a0)

/* AD9074 80061ED4 90CE0000 */  lbu   $t6, ($a2)
/* AD9078 80061ED8 AC850000 */  sw    $a1, ($a0)
/* AD907C 80061EDC A08E0017 */  sb    $t6, 0x17($a0)
/* AD9080 80061EE0 84CF0002 */  lh    $t7, 2($a2)
/* AD9084 80061EE4 A48F0010 */  sh    $t7, 0x10($a0)
/* AD9088 80061EE8 84D80004 */  lh    $t8, 4($a2)
/* AD908C 80061EEC A4980012 */  sh    $t8, 0x12($a0)
/* AD9090 80061EF0 90D90006 */  lbu   $t9, 6($a2)
/* AD9094 80061EF4 03E00008 */  jr    $ra
/* AD9098 80061EF8 A0990016 */   sb    $t9, 0x16($a0)

