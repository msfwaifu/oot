.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

/* 000000 80B85150 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 000004 80B85154 AFA40018 */  sw    $a0, 0x18($sp)
/* 000008 80B85158 AFBF0014 */  sw    $ra, 0x14($sp)
/* 00000C 80B8515C 00A02025 */  move  $a0, $a1
/* 000010 80B85160 0C00B35B */  jal   Flags_GetCollectible
/* 000014 80B85164 2405001F */   li    $a1, 31
/* 000018 80B85168 10400005 */  beqz  $v0, .L80B85180
/* 00001C 80B8516C 8FA40018 */   lw    $a0, 0x18($sp)
/* 000020 80B85170 0C00B55C */  jal   Actor_Kill
/* 000024 80B85174 8FA40018 */   lw    $a0, 0x18($sp)
/* 000028 80B85178 1000000C */  b     .L80B851AC
/* 00002C 80B8517C 8FBF0014 */   lw    $ra, 0x14($sp)
.L80B85180:
/* 000030 80B85180 3C0580B8 */  lui   $a1, %hi(D_80B85530) # $a1, 0x80b8
/* 000034 80B85184 0C01E037 */  jal   Actor_ProcessInitChain
/* 000038 80B85188 24A55530 */   addiu $a1, %lo(D_80B85530) # addiu $a1, $a1, 0x5530
/* 00003C 80B8518C 8FA40018 */  lw    $a0, 0x18($sp)
/* 000040 80B85190 3C073F4C */  lui   $a3, (0x3F4CCCCD >> 16) # lui $a3, 0x3f4c
/* 000044 80B85194 34E7CCCD */  ori   $a3, (0x3F4CCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* 000048 80B85198 24050000 */  li    $a1, 0
/* 00004C 80B8519C 00003025 */  move  $a2, $zero
/* 000050 80B851A0 0C00AC78 */  jal   Actor_InitShadow
/* 000054 80B851A4 248400B4 */   addiu $a0, $a0, 0xb4
/* 000058 80B851A8 8FBF0014 */  lw    $ra, 0x14($sp)
.L80B851AC:
/* 00005C 80B851AC 27BD0018 */  addiu $sp, $sp, 0x18
/* 000060 80B851B0 03E00008 */  jr    $ra
/* 000064 80B851B4 00000000 */   nop   

/* 000068 80B851B8 AFA40000 */  sw    $a0, ($sp)
/* 00006C 80B851BC 03E00008 */  jr    $ra
/* 000070 80B851C0 AFA50004 */   sw    $a1, 4($sp)

/* 000074 80B851C4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 000078 80B851C8 AFBF0024 */  sw    $ra, 0x24($sp)
/* 00007C 80B851CC AFB10020 */  sw    $s1, 0x20($sp)
/* 000080 80B851D0 AFB0001C */  sw    $s0, 0x1c($sp)
/* 000084 80B851D4 00808025 */  move  $s0, $a0
/* 000088 80B851D8 0C2E1499 */  jal   func_80B85264
/* 00008C 80B851DC 00A08825 */   move  $s1, $a1
/* 000090 80B851E0 44800000 */  mtc1  $zero, $f0
/* 000094 80B851E4 240E0004 */  li    $t6, 4
/* 000098 80B851E8 AFAE0014 */  sw    $t6, 0x14($sp)
/* 00009C 80B851EC 44060000 */  mfc1  $a2, $f0
/* 0000A0 80B851F0 44070000 */  mfc1  $a3, $f0
/* 0000A4 80B851F4 02202025 */  move  $a0, $s1
/* 0000A8 80B851F8 02002825 */  move  $a1, $s0
/* 0000AC 80B851FC 0C00B92D */  jal   func_8002E4B4
/* 0000B0 80B85200 E7A00010 */   swc1  $f0, 0x10($sp)
/* 0000B4 80B85204 02002025 */  move  $a0, $s0
/* 0000B8 80B85208 0C00BD04 */  jal   func_8002F410
/* 0000BC 80B8520C 02202825 */   move  $a1, $s1
/* 0000C0 80B85210 10400008 */  beqz  $v0, .L80B85234
/* 0000C4 80B85214 02002025 */   move  $a0, $s0
/* 0000C8 80B85218 02202025 */  move  $a0, $s1
/* 0000CC 80B8521C 0C00B368 */  jal   Flags_SetCollectible
/* 0000D0 80B85220 2405001F */   li    $a1, 31
/* 0000D4 80B85224 0C00B55C */  jal   Actor_Kill
/* 0000D8 80B85228 02002025 */   move  $a0, $s0
/* 0000DC 80B8522C 10000009 */  b     .L80B85254
/* 0000E0 80B85230 8FBF0024 */   lw    $ra, 0x24($sp)
.L80B85234:
/* 0000E4 80B85234 3C014220 */  li    $at, 0x42200000 # 40.000000
/* 0000E8 80B85238 44812000 */  mtc1  $at, $f4
/* 0000EC 80B8523C 02202825 */  move  $a1, $s1
/* 0000F0 80B85240 2406004F */  li    $a2, 79
/* 0000F4 80B85244 3C0741F0 */  lui   $a3, 0x41f0
/* 0000F8 80B85248 0C00BD0D */  jal   func_8002F434
/* 0000FC 80B8524C E7A40010 */   swc1  $f4, 0x10($sp)
/* 000100 80B85250 8FBF0024 */  lw    $ra, 0x24($sp)
.L80B85254:
/* 000104 80B85254 8FB0001C */  lw    $s0, 0x1c($sp)
/* 000108 80B85258 8FB10020 */  lw    $s1, 0x20($sp)
/* 00010C 80B8525C 03E00008 */  jr    $ra
/* 000110 80B85260 27BD0028 */   addiu $sp, $sp, 0x28

func_80B85264:
/* 000114 80B85264 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 000118 80B85268 AFBF001C */  sw    $ra, 0x1c($sp)
/* 00011C 80B8526C AFB00018 */  sw    $s0, 0x18($sp)
/* 000120 80B85270 AFA50024 */  sw    $a1, 0x24($sp)
/* 000124 80B85274 848E0164 */  lh    $t6, 0x164($a0)
/* 000128 80B85278 00808025 */  move  $s0, $a0
/* 00012C 80B8527C 25CF0001 */  addiu $t7, $t6, 1
/* 000130 80B85280 A48F0164 */  sh    $t7, 0x164($a0)
/* 000134 80B85284 84840164 */  lh    $a0, 0x164($a0)
/* 000138 80B85288 00800821 */  addu  $at, $a0, $zero
/* 00013C 80B8528C 00042080 */  sll   $a0, $a0, 2
/* 000140 80B85290 00812023 */  subu  $a0, $a0, $at
/* 000144 80B85294 00042140 */  sll   $a0, $a0, 5
/* 000148 80B85298 00812021 */  addu  $a0, $a0, $at
/* 00014C 80B8529C 00042080 */  sll   $a0, $a0, 2
/* 000150 80B852A0 00812023 */  subu  $a0, $a0, $at
/* 000154 80B852A4 00042080 */  sll   $a0, $a0, 2
/* 000158 80B852A8 00042400 */  sll   $a0, $a0, 0x10
/* 00015C 80B852AC 0C01DE1C */  jal   Math_Sins
/* 000160 80B852B0 00042403 */   sra   $a0, $a0, 0x10
/* 000164 80B852B4 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 000168 80B852B8 44812000 */  mtc1  $at, $f4
/* 00016C 80B852BC 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 000170 80B852C0 44814000 */  mtc1  $at, $f8
/* 000174 80B852C4 46040182 */  mul.s $f6, $f0, $f4
/* 000178 80B852C8 C610000C */  lwc1  $f16, 0xc($s0)
/* 00017C 80B852CC 3C063DCC */  lui   $a2, (0x3DCCCCCD >> 16) # lui $a2, 0x3dcc
/* 000180 80B852D0 34C6CCCD */  ori   $a2, (0x3DCCCCCD & 0xFFFF) # ori $a2, $a2, 0xcccd
/* 000184 80B852D4 26040028 */  addiu $a0, $s0, 0x28
/* 000188 80B852D8 8E070158 */  lw    $a3, 0x158($s0)
/* 00018C 80B852DC 46083280 */  add.s $f10, $f6, $f8
/* 000190 80B852E0 460A8480 */  add.s $f18, $f16, $f10
/* 000194 80B852E4 44059000 */  mfc1  $a1, $f18
/* 000198 80B852E8 0C01E107 */  jal   Math_SmoothScaleMaxF
/* 00019C 80B852EC 00000000 */   nop   
/* 0001A0 80B852F0 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* 0001A4 80B852F4 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* 0001A8 80B852F8 26040158 */  addiu $a0, $s0, 0x158
/* 0001AC 80B852FC 3C054000 */  lui   $a1, 0x4000
/* 0001B0 80B85300 0C01E107 */  jal   Math_SmoothScaleMaxF
/* 0001B4 80B85304 3C063F80 */   lui   $a2, 0x3f80
/* 0001B8 80B85308 861800B6 */  lh    $t8, 0xb6($s0)
/* 0001BC 80B8530C 3C053ECC */  lui   $a1, (0x3ECCCCCD >> 16) # lui $a1, 0x3ecc
/* 0001C0 80B85310 3C063DCC */  lui   $a2, (0x3DCCCCCD >> 16) # lui $a2, 0x3dcc
/* 0001C4 80B85314 3C073C23 */  lui   $a3, (0x3C23D70A >> 16) # lui $a3, 0x3c23
/* 0001C8 80B85318 27190400 */  addiu $t9, $t8, 0x400
/* 0001CC 80B8531C A61900B6 */  sh    $t9, 0xb6($s0)
/* 0001D0 80B85320 34E7D70A */  ori   $a3, (0x3C23D70A & 0xFFFF) # ori $a3, $a3, 0xd70a
/* 0001D4 80B85324 34C6CCCD */  ori   $a2, (0x3DCCCCCD & 0xFFFF) # ori $a2, $a2, 0xcccd
/* 0001D8 80B85328 34A5CCCD */  ori   $a1, (0x3ECCCCCD & 0xFFFF) # ori $a1, $a1, 0xcccd
/* 0001DC 80B8532C 0C01E107 */  jal   Math_SmoothScaleMaxF
/* 0001E0 80B85330 26040050 */   addiu $a0, $s0, 0x50
/* 0001E4 80B85334 C6000050 */  lwc1  $f0, 0x50($s0)
/* 0001E8 80B85338 E6000058 */  swc1  $f0, 0x58($s0)
/* 0001EC 80B8533C E6000054 */  swc1  $f0, 0x54($s0)
/* 0001F0 80B85340 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0001F4 80B85344 8FB00018 */  lw    $s0, 0x18($sp)
/* 0001F8 80B85348 27BD0020 */  addiu $sp, $sp, 0x20
/* 0001FC 80B8534C 03E00008 */  jr    $ra
/* 000200 80B85350 00000000 */   nop   

/* 000204 80B85354 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 000208 80B85358 AFBF001C */  sw    $ra, 0x1c($sp)
/* 00020C 80B8535C AFB10018 */  sw    $s1, 0x18($sp)
/* 000210 80B85360 AFB00014 */  sw    $s0, 0x14($sp)
/* 000214 80B85364 AFA50064 */  sw    $a1, 0x64($sp)
/* 000218 80B85368 8CA50000 */  lw    $a1, ($a1)
/* 00021C 80B8536C 00808025 */  move  $s0, $a0
/* 000220 80B85370 3C0680B8 */  lui   $a2, %hi(D_80B85540) # $a2, 0x80b8
/* 000224 80B85374 24C65540 */  addiu $a2, %lo(D_80B85540) # addiu $a2, $a2, 0x5540
/* 000228 80B85378 27A40040 */  addiu $a0, $sp, 0x40
/* 00022C 80B8537C A3A00057 */  sb    $zero, 0x57($sp)
/* 000230 80B85380 240701FA */  li    $a3, 506
/* 000234 80B85384 0C031AB1 */  jal   func_800C6AC4
/* 000238 80B85388 00A08825 */   move  $s1, $a1
/* 00023C 80B8538C 8FA50064 */  lw    $a1, 0x64($sp)
/* 000240 80B85390 93A80057 */  lbu   $t0, 0x57($sp)
/* 000244 80B85394 2403005D */  li    $v1, 93
/* 000248 80B85398 8CA21C6C */  lw    $v0, 0x1c6c($a1)
/* 00024C 80B8539C 1040000F */  beqz  $v0, .L80B853DC
/* 000250 80B853A0 00000000 */   nop   
/* 000254 80B853A4 844F0000 */  lh    $t7, ($v0)
.L80B853A8:
/* 000258 80B853A8 546F000A */  bnel  $v1, $t7, .L80B853D4
/* 00025C 80B853AC 8C420124 */   lw    $v0, 0x124($v0)
/* 000260 80B853B0 C60400EC */  lwc1  $f4, 0xec($s0)
/* 000264 80B853B4 C44600EC */  lwc1  $f6, 0xec($v0)
/* 000268 80B853B8 4606203C */  c.lt.s $f4, $f6
/* 00026C 80B853BC 00000000 */  nop   
/* 000270 80B853C0 45020004 */  .byte 0x45,0x02,0x00,0x04 /* Because of invalid n64 opcode bc1fl */
/* 000274 80B853C4 8C420124 */  lw    $v0, 0x124($v0)
/* 000278 80B853C8 10000004 */  b     .L80B853DC
/* 00027C 80B853CC 24080001 */   li    $t0, 1
/* 000280 80B853D0 8C420124 */  lw    $v0, 0x124($v0)
.L80B853D4:
/* 000284 80B853D4 5440FFF4 */  bnezl $v0, .L80B853A8
/* 000288 80B853D8 844F0000 */   lh    $t7, ($v0)
.L80B853DC:
/* 00028C 80B853DC 11000021 */  beqz  $t0, .L80B85464
/* 000290 80B853E0 00000000 */   nop   
/* 000294 80B853E4 0C024F61 */  jal   func_80093D84
/* 000298 80B853E8 8CA40000 */   lw    $a0, ($a1)
/* 00029C 80B853EC 8E2202D0 */  lw    $v0, 0x2d0($s1)
/* 0002A0 80B853F0 3C19DA38 */  lui   $t9, (0xDA380003 >> 16) # lui $t9, 0xda38
/* 0002A4 80B853F4 37390003 */  ori   $t9, (0xDA380003 & 0xFFFF) # ori $t9, $t9, 3
/* 0002A8 80B853F8 24580008 */  addiu $t8, $v0, 8
/* 0002AC 80B853FC AE3802D0 */  sw    $t8, 0x2d0($s1)
/* 0002B0 80B85400 AC590000 */  sw    $t9, ($v0)
/* 0002B4 80B85404 8FA90064 */  lw    $t1, 0x64($sp)
/* 0002B8 80B85408 3C0580B8 */  lui   $a1, %hi(D_80B85554) # $a1, 0x80b8
/* 0002BC 80B8540C 24A55554 */  addiu $a1, %lo(D_80B85554) # addiu $a1, $a1, 0x5554
/* 0002C0 80B85410 24060227 */  li    $a2, 551
/* 0002C4 80B85414 00408025 */  move  $s0, $v0
/* 0002C8 80B85418 0C0346A2 */  jal   func_800D1A88
/* 0002CC 80B8541C 8D240000 */   lw    $a0, ($t1)
/* 0002D0 80B85420 AE020004 */  sw    $v0, 4($s0)
/* 0002D4 80B85424 8E2202D0 */  lw    $v0, 0x2d0($s1)
/* 0002D8 80B85428 3C0B0600 */  lui   $t3, %hi(D_06001290) # $t3, 0x600
/* 0002DC 80B8542C 256B1290 */  addiu $t3, %lo(D_06001290) # addiu $t3, $t3, 0x1290
/* 0002E0 80B85430 244A0008 */  addiu $t2, $v0, 8
/* 0002E4 80B85434 AE2A02D0 */  sw    $t2, 0x2d0($s1)
/* 0002E8 80B85438 3C04DE00 */  lui   $a0, 0xde00
/* 0002EC 80B8543C AC440000 */  sw    $a0, ($v0)
/* 0002F0 80B85440 AC4B0004 */  sw    $t3, 4($v0)
/* 0002F4 80B85444 8E2202D0 */  lw    $v0, 0x2d0($s1)
/* 0002F8 80B85448 3C0D0600 */  lui   $t5, %hi(D_06001470) # $t5, 0x600
/* 0002FC 80B8544C 25AD1470 */  addiu $t5, %lo(D_06001470) # addiu $t5, $t5, 0x1470
/* 000300 80B85450 244C0008 */  addiu $t4, $v0, 8
/* 000304 80B85454 AE2C02D0 */  sw    $t4, 0x2d0($s1)
/* 000308 80B85458 AC4D0004 */  sw    $t5, 4($v0)
/* 00030C 80B8545C 10000020 */  b     .L80B854E0
/* 000310 80B85460 AC440000 */   sw    $a0, ($v0)
.L80B85464:
/* 000314 80B85464 0C024F46 */  jal   func_80093D18
/* 000318 80B85468 8CA40000 */   lw    $a0, ($a1)
/* 00031C 80B8546C 8E2202C0 */  lw    $v0, 0x2c0($s1)
/* 000320 80B85470 3C0FDA38 */  lui   $t7, (0xDA380003 >> 16) # lui $t7, 0xda38
/* 000324 80B85474 35EF0003 */  ori   $t7, (0xDA380003 & 0xFFFF) # ori $t7, $t7, 3
/* 000328 80B85478 244E0008 */  addiu $t6, $v0, 8
/* 00032C 80B8547C AE2E02C0 */  sw    $t6, 0x2c0($s1)
/* 000330 80B85480 AC4F0000 */  sw    $t7, ($v0)
/* 000334 80B85484 8FB80064 */  lw    $t8, 0x64($sp)
/* 000338 80B85488 3C0580B8 */  lui   $a1, %hi(D_80B85568) # $a1, 0x80b8
/* 00033C 80B8548C 24A55568 */  addiu $a1, %lo(D_80B85568) # addiu $a1, $a1, 0x5568
/* 000340 80B85490 2406022D */  li    $a2, 557
/* 000344 80B85494 00408025 */  move  $s0, $v0
/* 000348 80B85498 0C0346A2 */  jal   func_800D1A88
/* 00034C 80B8549C 8F040000 */   lw    $a0, ($t8)
/* 000350 80B854A0 AE020004 */  sw    $v0, 4($s0)
/* 000354 80B854A4 8E2202C0 */  lw    $v0, 0x2c0($s1)
/* 000358 80B854A8 3C090600 */  lui   $t1, %hi(D_06001290) # $t1, 0x600
/* 00035C 80B854AC 25291290 */  addiu $t1, %lo(D_06001290) # addiu $t1, $t1, 0x1290
/* 000360 80B854B0 24590008 */  addiu $t9, $v0, 8
/* 000364 80B854B4 AE3902C0 */  sw    $t9, 0x2c0($s1)
/* 000368 80B854B8 3C04DE00 */  lui   $a0, 0xde00
/* 00036C 80B854BC AC440000 */  sw    $a0, ($v0)
/* 000370 80B854C0 AC490004 */  sw    $t1, 4($v0)
/* 000374 80B854C4 8E2202C0 */  lw    $v0, 0x2c0($s1)
/* 000378 80B854C8 3C0B0600 */  lui   $t3, %hi(D_06001470) # $t3, 0x600
/* 00037C 80B854CC 256B1470 */  addiu $t3, %lo(D_06001470) # addiu $t3, $t3, 0x1470
/* 000380 80B854D0 244A0008 */  addiu $t2, $v0, 8
/* 000384 80B854D4 AE2A02C0 */  sw    $t2, 0x2c0($s1)
/* 000388 80B854D8 AC4B0004 */  sw    $t3, 4($v0)
/* 00038C 80B854DC AC440000 */  sw    $a0, ($v0)
.L80B854E0:
/* 000390 80B854E0 8FAC0064 */  lw    $t4, 0x64($sp)
/* 000394 80B854E4 3C0680B8 */  lui   $a2, %hi(D_80B8557C) # $a2, 0x80b8
/* 000398 80B854E8 24C6557C */  addiu $a2, %lo(D_80B8557C) # addiu $a2, $a2, 0x557c
/* 00039C 80B854EC 27A40040 */  addiu $a0, $sp, 0x40
/* 0003A0 80B854F0 24070231 */  li    $a3, 561
/* 0003A4 80B854F4 0C031AD5 */  jal   func_800C6B54
/* 0003A8 80B854F8 8D850000 */   lw    $a1, ($t4)
/* 0003AC 80B854FC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0003B0 80B85500 8FB00014 */  lw    $s0, 0x14($sp)
/* 0003B4 80B85504 8FB10018 */  lw    $s1, 0x18($sp)
/* 0003B8 80B85508 03E00008 */  jr    $ra
/* 0003BC 80B8550C 27BD0060 */   addiu $sp, $sp, 0x60

.section .data

D_80B85510:
.incbin "baserom/ovl_Item_B_Heart", 0x3C0, 0x20
D_80B85530:
.incbin "baserom/ovl_Item_B_Heart", 0x3E0, 0x10
D_80B85540:
.incbin "baserom/ovl_Item_B_Heart", 0x3F0, 0x14
D_80B85554:
.incbin "baserom/ovl_Item_B_Heart", 0x404, 0x14
D_80B85568:
.incbin "baserom/ovl_Item_B_Heart", 0x418, 0x14
D_80B8557C:
.incbin "baserom/ovl_Item_B_Heart", 0x42C, 0x74
