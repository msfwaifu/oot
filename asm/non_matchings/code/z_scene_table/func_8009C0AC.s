.rdata
glabel D_8013F988
    .incbin "baserom.z64", 0xBB6B28, 0x14

glabel D_8013F99C
    .incbin "baserom.z64", 0xBB6B3C, 0x14

.text
glabel func_8009C0AC
/* B1324C 8009C0AC 27BDFF80 */  addiu $sp, $sp, -0x80
/* B13250 8009C0B0 3C010001 */  lui   $at, 1
/* B13254 8009C0B4 AFBF0034 */  sw    $ra, 0x34($sp)
/* B13258 8009C0B8 AFA40080 */  sw    $a0, 0x80($sp)
/* B1325C 8009C0BC 00811021 */  addu  $v0, $a0, $at
/* B13260 8009C0C0 8C441DE4 */  lw    $a0, 0x1de4($v0)
/* B13264 8009C0C4 AFA2003C */  sw    $v0, 0x3c($sp)
/* B13268 8009C0C8 00800821 */  addu  $at, $a0, $zero
/* B1326C 8009C0CC 00042080 */  sll   $a0, $a0, 2
/* B13270 8009C0D0 00812023 */  subu  $a0, $a0, $at
/* B13274 8009C0D4 00042100 */  sll   $a0, $a0, 4
/* B13278 8009C0D8 00812023 */  subu  $a0, $a0, $at
/* B1327C 8009C0DC 000420C0 */  sll   $a0, $a0, 3
/* B13280 8009C0E0 00812023 */  subu  $a0, $a0, $at
/* B13284 8009C0E4 00042080 */  sll   $a0, $a0, 2
/* B13288 8009C0E8 0C0411E0 */  jal   coss
/* B1328C 8009C0EC 3084FFFF */   andi  $a0, $a0, 0xffff
/* B13290 8009C0F0 8FAF0080 */  lw    $t7, 0x80($sp)
/* B13294 8009C0F4 00027203 */  sra   $t6, $v0, 8
/* B13298 8009C0F8 A3AE007B */  sb    $t6, 0x7b($sp)
/* B1329C 8009C0FC 8DE50000 */  lw    $a1, ($t7)
/* B132A0 8009C100 3C068014 */  lui   $a2, %hi(D_8013F988) # $a2, 0x8014
/* B132A4 8009C104 24C6F988 */  addiu $a2, %lo(D_8013F988) # addiu $a2, $a2, -0x678
/* B132A8 8009C108 27A40064 */  addiu $a0, $sp, 0x64
/* B132AC 8009C10C 24071750 */  li    $a3, 5968
/* B132B0 8009C110 0C031AB1 */  jal   func_800C6AC4
/* B132B4 8009C114 AFA50074 */   sw    $a1, 0x74($sp)
/* B132B8 8009C118 8FA80074 */  lw    $t0, 0x74($sp)
/* B132BC 8009C11C 8FB8003C */  lw    $t8, 0x3c($sp)
/* B132C0 8009C120 3C0BDB06 */  lui   $t3, (0xDB060020 >> 16) # lui $t3, 0xdb06
/* B132C4 8009C124 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B132C8 8009C128 8F091DE4 */  lw    $t1, 0x1de4($t8)
/* B132CC 8009C12C 356B0020 */  ori   $t3, (0xDB060020 & 0xFFFF) # ori $t3, $t3, 0x20
/* B132D0 8009C130 24590008 */  addiu $t9, $v0, 8
/* B132D4 8009C134 AD1902C0 */  sw    $t9, 0x2c0($t0)
/* B132D8 8009C138 AC4B0000 */  sw    $t3, ($v0)
/* B132DC 8009C13C 8FAC0080 */  lw    $t4, 0x80($sp)
/* B132E0 8009C140 241801FF */  li    $t8, 511
/* B132E4 8009C144 312701FF */  andi  $a3, $t1, 0x1ff
/* B132E8 8009C148 8D840000 */  lw    $a0, ($t4)
/* B132EC 8009C14C 240C0080 */  li    $t4, 128
/* B132F0 8009C150 0307C823 */  subu  $t9, $t8, $a3
/* B132F4 8009C154 240B0040 */  li    $t3, 64
/* B132F8 8009C158 240D0040 */  li    $t5, 64
/* B132FC 8009C15C 240E0080 */  li    $t6, 128
/* B13300 8009C160 240F0001 */  li    $t7, 1
/* B13304 8009C164 AFAF0018 */  sw    $t7, 0x18($sp)
/* B13308 8009C168 AFAE0014 */  sw    $t6, 0x14($sp)
/* B1330C 8009C16C AFAD0010 */  sw    $t5, 0x10($sp)
/* B13310 8009C170 AFAB0024 */  sw    $t3, 0x24($sp)
/* B13314 8009C174 AFB90020 */  sw    $t9, 0x20($sp)
/* B13318 8009C178 AFAC0028 */  sw    $t4, 0x28($sp)
/* B1331C 8009C17C AFA0001C */  sw    $zero, 0x1c($sp)
/* B13320 8009C180 00002825 */  move  $a1, $zero
/* B13324 8009C184 00003025 */  move  $a2, $zero
/* B13328 8009C188 AFA80074 */  sw    $t0, 0x74($sp)
/* B1332C 8009C18C AFA20060 */  sw    $v0, 0x60($sp)
/* B13330 8009C190 AFA9007C */  sw    $t1, 0x7c($sp)
/* B13334 8009C194 0C0253D0 */  jal   func_80094F40
/* B13338 8009C198 AFA9003C */   sw    $t1, 0x3c($sp)
/* B1333C 8009C19C 8FA30060 */  lw    $v1, 0x60($sp)
/* B13340 8009C1A0 8FA80074 */  lw    $t0, 0x74($sp)
/* B13344 8009C1A4 8FA9003C */  lw    $t1, 0x3c($sp)
/* B13348 8009C1A8 8FAA007C */  lw    $t2, 0x7c($sp)
/* B1334C 8009C1AC AC620004 */  sw    $v0, 4($v1)
/* B13350 8009C1B0 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B13354 8009C1B4 3C0EDB06 */  lui   $t6, (0xDB060024 >> 16) # lui $t6, 0xdb06
/* B13358 8009C1B8 35CE0024 */  ori   $t6, (0xDB060024 & 0xFFFF) # ori $t6, $t6, 0x24
/* B1335C 8009C1BC 244D0008 */  addiu $t5, $v0, 8
/* B13360 8009C1C0 AD0D02C0 */  sw    $t5, 0x2c0($t0)
/* B13364 8009C1C4 AC4E0000 */  sw    $t6, ($v0)
/* B13368 8009C1C8 8FAF0080 */  lw    $t7, 0x80($sp)
/* B1336C 8009C1CC 240C00FF */  li    $t4, 255
/* B13370 8009C1D0 312700FF */  andi  $a3, $t1, 0xff
/* B13374 8009C1D4 8DE40000 */  lw    $a0, ($t7)
/* B13378 8009C1D8 240F0040 */  li    $t7, 64
/* B1337C 8009C1DC 01876823 */  subu  $t5, $t4, $a3
/* B13380 8009C1E0 240E0020 */  li    $t6, 32
/* B13384 8009C1E4 24180020 */  li    $t8, 32
/* B13388 8009C1E8 24190040 */  li    $t9, 64
/* B1338C 8009C1EC 240B0001 */  li    $t3, 1
/* B13390 8009C1F0 AFAB0018 */  sw    $t3, 0x18($sp)
/* B13394 8009C1F4 AFB90014 */  sw    $t9, 0x14($sp)
/* B13398 8009C1F8 AFB80010 */  sw    $t8, 0x10($sp)
/* B1339C 8009C1FC AFAE0024 */  sw    $t6, 0x24($sp)
/* B133A0 8009C200 AFAD0020 */  sw    $t5, 0x20($sp)
/* B133A4 8009C204 AFAF0028 */  sw    $t7, 0x28($sp)
/* B133A8 8009C208 AFA0001C */  sw    $zero, 0x1c($sp)
/* B133AC 8009C20C 00002825 */  move  $a1, $zero
/* B133B0 8009C210 00003025 */  move  $a2, $zero
/* B133B4 8009C214 AFA80074 */  sw    $t0, 0x74($sp)
/* B133B8 8009C218 AFAA007C */  sw    $t2, 0x7c($sp)
/* B133BC 8009C21C 0C0253D0 */  jal   func_80094F40
/* B133C0 8009C220 AFA2005C */   sw    $v0, 0x5c($sp)
/* B133C4 8009C224 8FA3005C */  lw    $v1, 0x5c($sp)
/* B133C8 8009C228 8FA80074 */  lw    $t0, 0x74($sp)
/* B133CC 8009C22C 8FAA007C */  lw    $t2, 0x7c($sp)
/* B133D0 8009C230 AC620004 */  sw    $v0, 4($v1)
/* B133D4 8009C234 8D0202D0 */  lw    $v0, 0x2d0($t0)
/* B133D8 8009C238 3C19DB06 */  lui   $t9, (0xDB060028 >> 16) # lui $t9, 0xdb06
/* B133DC 8009C23C 37390028 */  ori   $t9, (0xDB060028 & 0xFFFF) # ori $t9, $t9, 0x28
/* B133E0 8009C240 24580008 */  addiu $t8, $v0, 8
/* B133E4 8009C244 AD1802D0 */  sw    $t8, 0x2d0($t0)
/* B133E8 8009C248 AC590000 */  sw    $t9, ($v0)
/* B133EC 8009C24C 8FAB0080 */  lw    $t3, 0x80($sp)
/* B133F0 8009C250 000A7900 */  sll   $t7, $t2, 4
/* B133F4 8009C254 01EA7823 */  subu  $t7, $t7, $t2
/* B133F8 8009C258 8D640000 */  lw    $a0, ($t3)
/* B133FC 8009C25C 000A3880 */  sll   $a3, $t2, 2
/* B13400 8009C260 000F7840 */  sll   $t7, $t7, 1
/* B13404 8009C264 00EA3821 */  addu  $a3, $a3, $t2
/* B13408 8009C268 00073880 */  sll   $a3, $a3, 2
/* B1340C 8009C26C 31F807FF */  andi  $t8, $t7, 0x7ff
/* B13410 8009C270 240B0200 */  li    $t3, 512
/* B13414 8009C274 24190010 */  li    $t9, 16
/* B13418 8009C278 240C0010 */  li    $t4, 16
/* B1341C 8009C27C 240D0200 */  li    $t5, 512
/* B13420 8009C280 240E0001 */  li    $t6, 1
/* B13424 8009C284 AFAE0018 */  sw    $t6, 0x18($sp)
/* B13428 8009C288 AFAD0014 */  sw    $t5, 0x14($sp)
/* B1342C 8009C28C AFAC0010 */  sw    $t4, 0x10($sp)
/* B13430 8009C290 AFB90024 */  sw    $t9, 0x24($sp)
/* B13434 8009C294 AFAB0028 */  sw    $t3, 0x28($sp)
/* B13438 8009C298 AFB80020 */  sw    $t8, 0x20($sp)
/* B1343C 8009C29C 30E707FF */  andi  $a3, $a3, 0x7ff
/* B13440 8009C2A0 AFA0001C */  sw    $zero, 0x1c($sp)
/* B13444 8009C2A4 00002825 */  move  $a1, $zero
/* B13448 8009C2A8 00003025 */  move  $a2, $zero
/* B1344C 8009C2AC AFA80074 */  sw    $t0, 0x74($sp)
/* B13450 8009C2B0 0C0253D0 */  jal   func_80094F40
/* B13454 8009C2B4 AFA20058 */   sw    $v0, 0x58($sp)
/* B13458 8009C2B8 8FA30058 */  lw    $v1, 0x58($sp)
/* B1345C 8009C2BC 8FA80074 */  lw    $t0, 0x74($sp)
/* B13460 8009C2C0 3C04E700 */  lui   $a0, 0xe700
/* B13464 8009C2C4 AC620004 */  sw    $v0, 4($v1)
/* B13468 8009C2C8 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B1346C 8009C2CC 3C068080 */  lui   $a2, (0x80808080 >> 16) # lui $a2, 0x8080
/* B13470 8009C2D0 34C68080 */  ori   $a2, (0x80808080 & 0xFFFF) # ori $a2, $a2, 0x8080
/* B13474 8009C2D4 244C0008 */  addiu $t4, $v0, 8
/* B13478 8009C2D8 AD0C02C0 */  sw    $t4, 0x2c0($t0)
/* B1347C 8009C2DC AC400004 */  sw    $zero, 4($v0)
/* B13480 8009C2E0 AC440000 */  sw    $a0, ($v0)
/* B13484 8009C2E4 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B13488 8009C2E8 3C05FB00 */  lui   $a1, 0xfb00
/* B1348C 8009C2EC 24071774 */  li    $a3, 6004
/* B13490 8009C2F0 244D0008 */  addiu $t5, $v0, 8
/* B13494 8009C2F4 AD0D02C0 */  sw    $t5, 0x2c0($t0)
/* B13498 8009C2F8 AC460004 */  sw    $a2, 4($v0)
/* B1349C 8009C2FC AC450000 */  sw    $a1, ($v0)
/* B134A0 8009C300 8D0202D0 */  lw    $v0, 0x2d0($t0)
/* B134A4 8009C304 244E0008 */  addiu $t6, $v0, 8
/* B134A8 8009C308 AD0E02D0 */  sw    $t6, 0x2d0($t0)
/* B134AC 8009C30C AC400004 */  sw    $zero, 4($v0)
/* B134B0 8009C310 AC440000 */  sw    $a0, ($v0)
/* B134B4 8009C314 8D0202D0 */  lw    $v0, 0x2d0($t0)
/* B134B8 8009C318 244F0008 */  addiu $t7, $v0, 8
/* B134BC 8009C31C AD0F02D0 */  sw    $t7, 0x2d0($t0)
/* B134C0 8009C320 AC460004 */  sw    $a2, 4($v0)
/* B134C4 8009C324 AC450000 */  sw    $a1, ($v0)
/* B134C8 8009C328 83A6007B */  lb    $a2, 0x7b($sp)
/* B134CC 8009C32C 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B134D0 8009C330 00063043 */  sra   $a2, $a2, 1
/* B134D4 8009C334 24580008 */  addiu $t8, $v0, 8
/* B134D8 8009C338 24C600C0 */  addiu $a2, $a2, 0xc0
/* B134DC 8009C33C AD1802C0 */  sw    $t8, 0x2c0($t0)
/* B134E0 8009C340 00063600 */  sll   $a2, $a2, 0x18
/* B134E4 8009C344 00063603 */  sra   $a2, $a2, 0x18
/* B134E8 8009C348 AC400004 */  sw    $zero, 4($v0)
/* B134EC 8009C34C AC440000 */  sw    $a0, ($v0)
/* B134F0 8009C350 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B134F4 8009C354 30C300FF */  andi  $v1, $a2, 0xff
/* B134F8 8009C358 00035E00 */  sll   $t3, $v1, 0x18
/* B134FC 8009C35C 00036400 */  sll   $t4, $v1, 0x10
/* B13500 8009C360 016C6825 */  or    $t5, $t3, $t4
/* B13504 8009C364 00037200 */  sll   $t6, $v1, 8
/* B13508 8009C368 24590008 */  addiu $t9, $v0, 8
/* B1350C 8009C36C 01AE7825 */  or    $t7, $t5, $t6
/* B13510 8009C370 AD1902C0 */  sw    $t9, 0x2c0($t0)
/* B13514 8009C374 35F80080 */  ori   $t8, $t7, 0x80
/* B13518 8009C378 AC580004 */  sw    $t8, 4($v0)
/* B1351C 8009C37C AC450000 */  sw    $a1, ($v0)
/* B13520 8009C380 8FB90080 */  lw    $t9, 0x80($sp)
/* B13524 8009C384 3C068014 */  lui   $a2, %hi(D_8013F99C) # $a2, 0x8014
/* B13528 8009C388 24C6F99C */  addiu $a2, %lo(D_8013F99C) # addiu $a2, $a2, -0x664
/* B1352C 8009C38C 27A40064 */  addiu $a0, $sp, 0x64
/* B13530 8009C390 0C031AD5 */  jal   func_800C6B54
/* B13534 8009C394 8F250000 */   lw    $a1, ($t9)
/* B13538 8009C398 8FA40080 */  lw    $a0, 0x80($sp)
/* B1353C 8009C39C 0C00B2D0 */  jal   Flags_GetSwitch
/* B13540 8009C3A0 24050037 */   li    $a1, 55
/* B13544 8009C3A4 1040000D */  beqz  $v0, .L8009C3DC
/* B13548 8009C3A8 8FAB0080 */   lw    $t3, 0x80($sp)
/* B1354C 8009C3AC 856200A4 */  lh    $v0, 0xa4($t3)
/* B13550 8009C3B0 2401004F */  li    $at, 79
/* B13554 8009C3B4 10410007 */  beq   $v0, $at, .L8009C3D4
/* B13558 8009C3B8 2401001A */   li    $at, 26
/* B1355C 8009C3BC 10410005 */  beq   $v0, $at, .L8009C3D4
/* B13560 8009C3C0 2401000E */   li    $at, 14
/* B13564 8009C3C4 10410003 */  beq   $v0, $at, .L8009C3D4
/* B13568 8009C3C8 2401000F */   li    $at, 15
/* B1356C 8009C3CC 54410004 */  bnel  $v0, $at, .L8009C3E0
/* B13570 8009C3D0 8FBF0034 */   lw    $ra, 0x34($sp)
.L8009C3D4:
/* B13574 8009C3D4 0C026FBB */  jal   func_8009BEEC
/* B13578 8009C3D8 8FA40080 */   lw    $a0, 0x80($sp)
.L8009C3DC:
/* B1357C 8009C3DC 8FBF0034 */  lw    $ra, 0x34($sp)
.L8009C3E0:
/* B13580 8009C3E0 27BD0080 */  addiu $sp, $sp, 0x80
/* B13584 8009C3E4 03E00008 */  jr    $ra
/* B13588 8009C3E8 00000000 */   nop   

