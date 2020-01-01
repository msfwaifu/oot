.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4
  
glabel func_80002080
/* 002C80 80002080 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 002C84 80002084 AFBF0014 */  sw    $ra, 0x14($sp)
/* 002C88 80002088 0C001E44 */  jal   func_80007910
/* 002C8C 8000208C 00000000 */   nop   
/* 002C90 80002090 3C038001 */  lui   $v1, %hi(D_80014510) # $v1, 0x8001
/* 002C94 80002094 24634510 */  addiu $v1, %lo(D_80014510) # addiu $v1, $v1, 0x4510
/* 002C98 80002098 3C05B3FF */  lui   $a1, (0xB3FF0014 >> 16) # lui $a1, 0xb3ff
/* 002C9C 8000209C AC620000 */  sw    $v0, ($v1)
/* 002CA0 800020A0 34A50014 */  ori   $a1, (0xB3FF0014 & 0xFFFF) # ori $a1, $a1, 0x14
/* 002CA4 800020A4 00402025 */  move  $a0, $v0
/* 002CA8 800020A8 0C001EA4 */  jal   func_80007A90
/* 002CAC 800020AC 00003025 */   move  $a2, $zero
/* 002CB0 800020B0 3C048001 */  lui   $a0, %hi(D_80014510) # $a0, 0x8001
/* 002CB4 800020B4 3C05B3FF */  lui   $a1, (0xB3FF0004 >> 16) # lui $a1, 0xb3ff
/* 002CB8 800020B8 34A50004 */  ori   $a1, (0xB3FF0004 & 0xFFFF) # ori $a1, $a1, 4
/* 002CBC 800020BC 8C844510 */  lw    $a0, %lo(D_80014510)($a0)
/* 002CC0 800020C0 0C001EA4 */  jal   func_80007A90
/* 002CC4 800020C4 00003025 */   move  $a2, $zero
/* 002CC8 800020C8 3C048001 */  lui   $a0, %hi(D_80014510) # $a0, 0x8001
/* 002CCC 800020CC 3C064953 */  lui   $a2, (0x49533634 >> 16) # lui $a2, 0x4953
/* 002CD0 800020D0 34C63634 */  ori   $a2, (0x49533634 & 0xFFFF) # ori $a2, $a2, 0x3634
/* 002CD4 800020D4 8C844510 */  lw    $a0, %lo(D_80014510)($a0)
/* 002CD8 800020D8 0C001EA4 */  jal   func_80007A90
/* 002CDC 800020DC 3C05B3FF */   lui   $a1, 0xb3ff
/* 002CE0 800020E0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 002CE4 800020E4 27BD0018 */  addiu $sp, $sp, 0x18
/* 002CE8 800020E8 03E00008 */  jr    $ra
/* 002CEC 800020EC 00000000 */   nop   

glabel func_800020F0
/* 002CF0 800020F0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 002CF4 800020F4 AFA40020 */  sw    $a0, 0x20($sp)
/* 002CF8 800020F8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 002CFC 800020FC AFA50024 */  sw    $a1, 0x24($sp)
/* 002D00 80002100 AFA60028 */  sw    $a2, 0x28($sp)
/* 002D04 80002104 AFA7002C */  sw    $a3, 0x2c($sp)
/* 002D08 80002108 3C048000 */  lui   $a0, %hi(func_800021B0) # $a0, 0x8000
/* 002D0C 8000210C 248421B0 */  addiu $a0, %lo(func_800021B0) # addiu $a0, $a0, 0x21b0
/* 002D10 80002110 27A70024 */  addiu $a3, $sp, 0x24
/* 002D14 80002114 8FA60020 */  lw    $a2, 0x20($sp)
/* 002D18 80002118 0C0014B8 */  jal   func_800052E0
/* 002D1C 8000211C 00002825 */   move  $a1, $zero
/* 002D20 80002120 8FBF0014 */  lw    $ra, 0x14($sp)
/* 002D24 80002124 27BD0020 */  addiu $sp, $sp, 0x20
/* 002D28 80002128 03E00008 */  jr    $ra
/* 002D2C 8000212C 00000000 */   nop   

glabel osSyncPrintf
/* 002D30 80002130 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 002D34 80002134 AFA40020 */  sw    $a0, 0x20($sp)
/* 002D38 80002138 AFBF0014 */  sw    $ra, 0x14($sp)
/* 002D3C 8000213C AFA50024 */  sw    $a1, 0x24($sp)
/* 002D40 80002140 AFA60028 */  sw    $a2, 0x28($sp)
/* 002D44 80002144 AFA7002C */  sw    $a3, 0x2c($sp)
/* 002D48 80002148 3C048000 */  lui   $a0, %hi(func_800021B0) # $a0, 0x8000
/* 002D4C 8000214C 248421B0 */  addiu $a0, %lo(func_800021B0) # addiu $a0, $a0, 0x21b0
/* 002D50 80002150 27A70024 */  addiu $a3, $sp, 0x24
/* 002D54 80002154 8FA60020 */  lw    $a2, 0x20($sp)
/* 002D58 80002158 0C0014B8 */  jal   func_800052E0
/* 002D5C 8000215C 00002825 */   move  $a1, $zero
/* 002D60 80002160 8FBF0014 */  lw    $ra, 0x14($sp)
/* 002D64 80002164 27BD0020 */  addiu $sp, $sp, 0x20
/* 002D68 80002168 03E00008 */  jr    $ra
/* 002D6C 8000216C 00000000 */   nop   

glabel func_80002170
/* 002D70 80002170 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 002D74 80002174 AFA40020 */  sw    $a0, 0x20($sp)
/* 002D78 80002178 AFBF0014 */  sw    $ra, 0x14($sp)
/* 002D7C 8000217C AFA50024 */  sw    $a1, 0x24($sp)
/* 002D80 80002180 AFA60028 */  sw    $a2, 0x28($sp)
/* 002D84 80002184 AFA7002C */  sw    $a3, 0x2c($sp)
/* 002D88 80002188 3C048000 */  lui   $a0, %hi(func_800021B0) # $a0, 0x8000
/* 002D8C 8000218C 248421B0 */  addiu $a0, %lo(func_800021B0) # addiu $a0, $a0, 0x21b0
/* 002D90 80002190 27A70024 */  addiu $a3, $sp, 0x24
/* 002D94 80002194 8FA60020 */  lw    $a2, 0x20($sp)
/* 002D98 80002198 0C0014B8 */  jal   func_800052E0
/* 002D9C 8000219C 00002825 */   move  $a1, $zero
/* 002DA0 800021A0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 002DA4 800021A4 27BD0020 */  addiu $sp, $sp, 0x20
/* 002DA8 800021A8 03E00008 */  jr    $ra
/* 002DAC 800021AC 00000000 */   nop   

glabel func_800021B0
/* 002DB0 800021B0 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 002DB4 800021B4 AFB40028 */  sw    $s4, 0x28($sp)
/* 002DB8 800021B8 3C148001 */  lui   $s4, %hi(D_80014510) # $s4, 0x8001
/* 002DBC 800021BC AFB30024 */  sw    $s3, 0x24($sp)
/* 002DC0 800021C0 AFB20020 */  sw    $s2, 0x20($sp)
/* 002DC4 800021C4 00A09025 */  move  $s2, $a1
/* 002DC8 800021C8 00C09825 */  move  $s3, $a2
/* 002DCC 800021CC 26944510 */  addiu $s4, %lo(D_80014510) # addiu $s4, $s4, 0x4510
/* 002DD0 800021D0 AFBF003C */  sw    $ra, 0x3c($sp)
/* 002DD4 800021D4 AFA40060 */  sw    $a0, 0x60($sp)
/* 002DD8 800021D8 AFBE0038 */  sw    $fp, 0x38($sp)
/* 002DDC 800021DC AFB70034 */  sw    $s7, 0x34($sp)
/* 002DE0 800021E0 AFB60030 */  sw    $s6, 0x30($sp)
/* 002DE4 800021E4 AFB5002C */  sw    $s5, 0x2c($sp)
/* 002DE8 800021E8 AFB1001C */  sw    $s1, 0x1c($sp)
/* 002DEC 800021EC AFB00018 */  sw    $s0, 0x18($sp)
/* 002DF0 800021F0 8E840000 */  lw    $a0, ($s4)
/* 002DF4 800021F4 27A6005C */  addiu $a2, $sp, 0x5c
/* 002DF8 800021F8 0C001DD8 */  jal   func_80007760
/* 002DFC 800021FC 3C05B3FF */   lui   $a1, 0xb3ff
/* 002E00 80002200 8FB5005C */  lw    $s5, 0x5c($sp)
/* 002E04 80002204 3C014953 */  lui   $at, (0x49533634 >> 16) # lui $at, 0x4953
/* 002E08 80002208 34213634 */  ori   $at, (0x49533634 & 0xFFFF) # ori $at, $at, 0x3634
/* 002E0C 8000220C 12A10003 */  beq   $s5, $at, .L8000221C
/* 002E10 80002210 3C05B3FF */   lui   $a1, (0xB3FF0004 >> 16) # lui $a1, 0xb3ff
/* 002E14 80002214 1000004F */  b     .L80002354
/* 002E18 80002218 24020001 */   li    $v0, 1
.L8000221C:
/* 002E1C 8000221C 8E840000 */  lw    $a0, ($s4)
/* 002E20 80002220 34A50004 */  ori   $a1, (0xB3FF0004 & 0xFFFF) # ori $a1, $a1, 4
/* 002E24 80002224 0C001DD8 */  jal   func_80007760
/* 002E28 80002228 27A6005C */   addiu $a2, $sp, 0x5c
/* 002E2C 8000222C 3C05B3FF */  lui   $a1, (0xB3FF0014 >> 16) # lui $a1, 0xb3ff
/* 002E30 80002230 8FB0005C */  lw    $s0, 0x5c($sp)
/* 002E34 80002234 34A50014 */  ori   $a1, (0xB3FF0014 & 0xFFFF) # ori $a1, $a1, 0x14
/* 002E38 80002238 8E840000 */  lw    $a0, ($s4)
/* 002E3C 8000223C 0C001DD8 */  jal   func_80007760
/* 002E40 80002240 27A6005C */   addiu $a2, $sp, 0x5c
/* 002E44 80002244 8FB5005C */  lw    $s5, 0x5c($sp)
/* 002E48 80002248 3401FFE0 */  li    $at, 65504
/* 002E4C 8000224C 3C1EFFFF */  lui   $fp, (0xFFFF0020 >> 16) # lui $fp, 0xffff
/* 002E50 80002250 02B31021 */  addu  $v0, $s5, $s3
/* 002E54 80002254 0041082A */  slt   $at, $v0, $at
/* 002E58 80002258 1420000A */  bnez  $at, .L80002284
/* 002E5C 8000225C 02A08825 */   move  $s1, $s5
/* 002E60 80002260 37DE0020 */  ori   $fp, (0xFFFF0020 & 0xFFFF) # ori $fp, $fp, 0x20
/* 002E64 80002264 005E1821 */  addu  $v1, $v0, $fp
/* 002E68 80002268 0203082A */  slt   $at, $s0, $v1
/* 002E6C 8000226C 14200003 */  bnez  $at, .L8000227C
/* 002E70 80002270 02B0082A */   slt   $at, $s5, $s0
/* 002E74 80002274 5020000B */  beql  $at, $zero, .L800022A4
/* 002E78 80002278 3C1EFFFF */   lui   $fp, 0xffff
.L8000227C:
/* 002E7C 8000227C 10000035 */  b     .L80002354
/* 002E80 80002280 24020001 */   li    $v0, 1
.L80002284:
/* 002E84 80002284 02B0082A */  slt   $at, $s5, $s0
/* 002E88 80002288 10200005 */  beqz  $at, .L800022A0
/* 002E8C 8000228C 0202082A */   slt   $at, $s0, $v0
/* 002E90 80002290 50200004 */  beql  $at, $zero, .L800022A4
/* 002E94 80002294 3C1EFFFF */   lui   $fp, 0xffff
/* 002E98 80002298 1000002E */  b     .L80002354
/* 002E9C 8000229C 24020001 */   li    $v0, 1
.L800022A0:
/* 002EA0 800022A0 3C1EFFFF */  lui   $fp, (0xFFFF0020 >> 16) # lui $fp, 0xffff
.L800022A4:
/* 002EA4 800022A4 12600025 */  beqz  $s3, .L8000233C
/* 002EA8 800022A8 37DE0020 */   ori   $fp, (0xFFFF0020 & 0xFFFF) # ori $fp, $fp, 0x20
/* 002EAC 800022AC 3C16B3FF */  lui   $s6, (0xB3FF0020 >> 16) # lui $s6, 0xb3ff
/* 002EB0 800022B0 3C150FFF */  lui   $s5, (0x0FFFFFFC >> 16) # lui $s5, 0xfff
/* 002EB4 800022B4 36B5FFFC */  ori   $s5, (0x0FFFFFFC & 0xFFFF) # ori $s5, $s5, 0xfffc
/* 002EB8 800022B8 36D60020 */  ori   $s6, (0xB3FF0020 & 0xFFFF) # ori $s6, $s6, 0x20
/* 002EBC 800022BC 24170003 */  li    $s7, 3
.L800022C0:
/* 002EC0 800022C0 924E0000 */  lbu   $t6, ($s2)
/* 002EC4 800022C4 02357824 */  and   $t7, $s1, $s5
/* 002EC8 800022C8 01F68021 */  addu  $s0, $t7, $s6
/* 002ECC 800022CC 11C00018 */  beqz  $t6, .L80002330
/* 002ED0 800022D0 02002825 */   move  $a1, $s0
/* 002ED4 800022D4 8E840000 */  lw    $a0, ($s4)
/* 002ED8 800022D8 0C001DD8 */  jal   func_80007760
/* 002EDC 800022DC 27A6005C */   addiu $a2, $sp, 0x5c
/* 002EE0 800022E0 32380003 */  andi  $t8, $s1, 3
/* 002EE4 800022E4 02F81023 */  subu  $v0, $s7, $t8
/* 002EE8 800022E8 8FB9005C */  lw    $t9, 0x5c($sp)
/* 002EEC 800022EC 924C0000 */  lbu   $t4, ($s2)
/* 002EF0 800022F0 000210C0 */  sll   $v0, $v0, 3
/* 002EF4 800022F4 240800FF */  li    $t0, 255
/* 002EF8 800022F8 00484804 */  sllv  $t1, $t0, $v0
/* 002EFC 800022FC 01205027 */  not   $t2, $t1
/* 002F00 80002300 032A5824 */  and   $t3, $t9, $t2
/* 002F04 80002304 004C6804 */  sllv  $t5, $t4, $v0
/* 002F08 80002308 01AB3025 */  or    $a2, $t5, $t3
/* 002F0C 8000230C 8E840000 */  lw    $a0, ($s4)
/* 002F10 80002310 0C001EA4 */  jal   func_80007A90
/* 002F14 80002314 02002825 */   move  $a1, $s0
/* 002F18 80002318 26310001 */  addiu $s1, $s1, 1
/* 002F1C 8000231C 3401FFE0 */  li    $at, 65504
/* 002F20 80002320 0221082A */  slt   $at, $s1, $at
/* 002F24 80002324 54200003 */  bnezl $at, .L80002334
/* 002F28 80002328 2673FFFF */   addiu $s3, $s3, -1
/* 002F2C 8000232C 023E8821 */  addu  $s1, $s1, $fp
.L80002330:
/* 002F30 80002330 2673FFFF */  addiu $s3, $s3, -1
.L80002334:
/* 002F34 80002334 1660FFE2 */  bnez  $s3, .L800022C0
/* 002F38 80002338 26520001 */   addiu $s2, $s2, 1
.L8000233C:
/* 002F3C 8000233C 3C05B3FF */  lui   $a1, (0xB3FF0014 >> 16) # lui $a1, 0xb3ff
/* 002F40 80002340 34A50014 */  ori   $a1, (0xB3FF0014 & 0xFFFF) # ori $a1, $a1, 0x14
/* 002F44 80002344 8E840000 */  lw    $a0, ($s4)
/* 002F48 80002348 0C001EA4 */  jal   func_80007A90
/* 002F4C 8000234C 02203025 */   move  $a2, $s1
/* 002F50 80002350 24020001 */  li    $v0, 1
.L80002354:
/* 002F54 80002354 8FBF003C */  lw    $ra, 0x3c($sp)
/* 002F58 80002358 8FB00018 */  lw    $s0, 0x18($sp)
/* 002F5C 8000235C 8FB1001C */  lw    $s1, 0x1c($sp)
/* 002F60 80002360 8FB20020 */  lw    $s2, 0x20($sp)
/* 002F64 80002364 8FB30024 */  lw    $s3, 0x24($sp)
/* 002F68 80002368 8FB40028 */  lw    $s4, 0x28($sp)
/* 002F6C 8000236C 8FB5002C */  lw    $s5, 0x2c($sp)
/* 002F70 80002370 8FB60030 */  lw    $s6, 0x30($sp)
/* 002F74 80002374 8FB70034 */  lw    $s7, 0x34($sp)
/* 002F78 80002378 8FBE0038 */  lw    $fp, 0x38($sp)
/* 002F7C 8000237C 03E00008 */  jr    $ra
/* 002F80 80002380 27BD0060 */   addiu $sp, $sp, 0x60

glabel func_80002384
/* 002F84 80002384 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 002F88 80002388 00803825 */  move  $a3, $a0
/* 002F8C 8000238C AFBF0014 */  sw    $ra, 0x14($sp)
/* 002F90 80002390 3C048001 */  lui   $a0, %hi(D_80011E00) # $a0, 0x8001
/* 002F94 80002394 0C00084C */  jal   osSyncPrintf
/* 002F98 80002398 24841E00 */   addiu $a0, %lo(D_80011E00) # addiu $a0, $a0, 0x1e00
.L8000239C:
/* 002F9C 8000239C 1000FFFF */  b     .L8000239C
/* 002FA0 800023A0 00000000 */   nop   
/* 002FA4 800023A4 00000000 */  nop   
/* 002FA8 800023A8 00000000 */  nop   
/* 002FAC 800023AC 00000000 */  nop   
/* 002FB0 800023B0 00000000 */  nop   
/* 002FB4 800023B4 00000000 */  nop   
/* 002FB8 800023B8 00000000 */  nop   
/* 002FBC 800023BC 00000000 */  nop   
/* 002FC0 800023C0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 002FC4 800023C4 27BD0018 */  addiu $sp, $sp, 0x18
/* 002FC8 800023C8 03E00008 */  jr    $ra
/* 002FCC 800023CC 00000000 */   nop   

glabel func_800023D0
/* 002FD0 800023D0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 002FD4 800023D4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 002FD8 800023D8 0C000BFC */  jal   func_80002FF0
/* 002FDC 800023DC AFB00018 */   sw    $s0, 0x18($sp)
/* 002FE0 800023E0 3C0E8001 */  lui   $t6, %hi(D_8000AC70) # $t6, 0x8001
/* 002FE4 800023E4 8DCEAC70 */  lw    $t6, %lo(D_8000AC70)($t6)
/* 002FE8 800023E8 3C108001 */  lui   $s0, %hi(D_80014520) # $s0, 0x8001
/* 002FEC 800023EC 26104520 */  addiu $s0, %lo(D_80014520) # addiu $s0, $s0, 0x4520
/* 002FF0 800023F0 15C00006 */  bnez  $t6, .L8000240C
/* 002FF4 800023F4 3C018001 */   lui   $at, %hi(D_8000AC70) # $at, 0x8001
/* 002FF8 800023F8 0C000C0D */  jal   func_80003034
/* 002FFC 800023FC 00000000 */   nop   
/* 003000 80002400 3C108001 */  lui   $s0, %hi(D_80014520) # $s0, 0x8001
/* 003004 80002404 10000063 */  b     .L80002594
/* 003008 80002408 26024520 */   addiu $v0, $s0, %lo(D_80014520) # addiu $v0, $s0, 0x4520
.L8000240C:
/* 00300C 8000240C AC20AC70 */  sw    $zero, %lo(D_8000AC70)($at)
/* 003010 80002410 240F0001 */  li    $t7, 1
/* 003014 80002414 3C18A600 */  lui   $t8, 0xa600
/* 003018 80002418 3C048001 */  lui   $a0, %hi(D_80014534) # $a0, 0x8001
/* 00301C 8000241C A20F0004 */  sb    $t7, 4($s0)
/* 003020 80002420 AE18000C */  sw    $t8, 0xc($s0)
/* 003024 80002424 A2000009 */  sb    $zero, 9($s0)
/* 003028 80002428 AE000010 */  sw    $zero, 0x10($s0)
/* 00302C 8000242C 24844534 */  addiu $a0, %lo(D_80014534) # addiu $a0, $a0, 0x4534
/* 003030 80002430 0C001114 */  jal   bzero
/* 003034 80002434 24050060 */   li    $a1, 96
/* 003038 80002438 3C03A460 */  lui   $v1, (0xA4600010 >> 16) # lui $v1, 0xa460
/* 00303C 8000243C 34630010 */  ori   $v1, (0xA4600010 & 0xFFFF) # ori $v1, $v1, 0x10
/* 003040 80002440 8C620000 */  lw    $v0, ($v1)
/* 003044 80002444 3C04A460 */  lui   $a0, (0xA4600014 >> 16) # lui $a0, 0xa460
/* 003048 80002448 34840014 */  ori   $a0, (0xA4600014 & 0xFFFF) # ori $a0, $a0, 0x14
/* 00304C 8000244C 30590003 */  andi  $t9, $v0, 3
/* 003050 80002450 13200005 */  beqz  $t9, .L80002468
/* 003054 80002454 240500FF */   li    $a1, 255
/* 003058 80002458 8C620000 */  lw    $v0, ($v1)
.L8000245C:
/* 00305C 8000245C 30490003 */  andi  $t1, $v0, 3
/* 003060 80002460 5520FFFE */  bnezl $t1, .L8000245C
/* 003064 80002464 8C620000 */   lw    $v0, ($v1)
.L80002468:
/* 003068 80002468 3C06A460 */  lui   $a2, (0xA460001C >> 16) # lui $a2, 0xa460
/* 00306C 8000246C 34C6001C */  ori   $a2, (0xA460001C & 0xFFFF) # ori $a2, $a2, 0x1c
/* 003070 80002470 3C07A460 */  lui   $a3, (0xA4600020 >> 16) # lui $a3, 0xa460
/* 003074 80002474 AC850000 */  sw    $a1, ($a0)
/* 003078 80002478 34E70020 */  ori   $a3, (0xA4600020 & 0xFFFF) # ori $a3, $a3, 0x20
/* 00307C 8000247C 3C08A460 */  lui   $t0, (0xA4600018 >> 16) # lui $t0, 0xa460
/* 003080 80002480 ACC00000 */  sw    $zero, ($a2)
/* 003084 80002484 240A0003 */  li    $t2, 3
/* 003088 80002488 35080018 */  ori   $t0, (0xA4600018 & 0xFFFF) # ori $t0, $t0, 0x18
/* 00308C 8000248C ACEA0000 */  sw    $t2, ($a3)
/* 003090 80002490 AD050000 */  sw    $a1, ($t0)
/* 003094 80002494 8E0B000C */  lw    $t3, 0xc($s0)
/* 003098 80002498 3C01A000 */  lui   $at, 0xa000
/* 00309C 8000249C 3C038001 */  lui   $v1, %hi(D_8000AD80) # $v1, 0x8001
/* 0030A0 800024A0 01616025 */  or    $t4, $t3, $at
/* 0030A4 800024A4 8D820000 */  lw    $v0, ($t4)
/* 0030A8 800024A8 2463AD80 */  addiu $v1, %lo(D_8000AD80) # addiu $v1, $v1, -0x5280
/* 0030AC 800024AC 0002C402 */  srl   $t8, $v0, 0x10
/* 0030B0 800024B0 00024D02 */  srl   $t1, $v0, 0x14
/* 0030B4 800024B4 3319000F */  andi  $t9, $t8, 0xf
/* 0030B8 800024B8 312A000F */  andi  $t2, $t1, 0xf
/* 0030BC 800024BC 00027A02 */  srl   $t7, $v0, 8
/* 0030C0 800024C0 A20F0008 */  sb    $t7, 8($s0)
/* 0030C4 800024C4 A2190006 */  sb    $t9, 6($s0)
/* 0030C8 800024C8 A20A0007 */  sb    $t2, 7($s0)
/* 0030CC 800024CC A2020005 */  sb    $v0, 5($s0)
/* 0030D0 800024D0 304B00FF */  andi  $t3, $v0, 0xff
/* 0030D4 800024D4 AC8B0000 */  sw    $t3, ($a0)
/* 0030D8 800024D8 920C0006 */  lbu   $t4, 0x6($s0)
/* 0030DC 800024DC ACCC0000 */  sw    $t4, ($a2)
/* 0030E0 800024E0 920D0007 */  lbu   $t5, 0x7($s0)
/* 0030E4 800024E4 ACED0000 */  sw    $t5, ($a3)
/* 0030E8 800024E8 920E0008 */  lbu   $t6, 0x8($s0)
/* 0030EC 800024EC AD0E0000 */  sw    $t6, ($t0)
/* 0030F0 800024F0 92180009 */  lbu   $t8, 0x9($s0)
/* 0030F4 800024F4 920F0004 */  lbu   $t7, 0x4($s0)
/* 0030F8 800024F8 0018C880 */  sll   $t9, $t8, 2
/* 0030FC 800024FC 00794821 */  addu  $t1, $v1, $t9
/* 003100 80002500 8D2A0000 */  lw    $t2, ($t1)
/* 003104 80002504 A14F0004 */  sb    $t7, 4($t2)
/* 003108 80002508 920C0009 */  lbu   $t4, 9($s0)
/* 00310C 8000250C 920B0005 */  lbu   $t3, 5($s0)
/* 003110 80002510 000C6880 */  sll   $t5, $t4, 2
/* 003114 80002514 006D7021 */  addu  $t6, $v1, $t5
/* 003118 80002518 8DD80000 */  lw    $t8, ($t6)
/* 00311C 8000251C A30B0005 */  sb    $t3, 5($t8)
/* 003120 80002520 92090009 */  lbu   $t1, 9($s0)
/* 003124 80002524 92190006 */  lbu   $t9, 6($s0)
/* 003128 80002528 00097880 */  sll   $t7, $t1, 2
/* 00312C 8000252C 006F5021 */  addu  $t2, $v1, $t7
/* 003130 80002530 8D4C0000 */  lw    $t4, ($t2)
/* 003134 80002534 A1990006 */  sb    $t9, 6($t4)
/* 003138 80002538 920E0009 */  lbu   $t6, 9($s0)
/* 00313C 8000253C 920D0007 */  lbu   $t5, 7($s0)
/* 003140 80002540 000E5880 */  sll   $t3, $t6, 2
/* 003144 80002544 006BC021 */  addu  $t8, $v1, $t3
/* 003148 80002548 8F090000 */  lw    $t1, ($t8)
/* 00314C 8000254C A12D0007 */  sb    $t5, 7($t1)
/* 003150 80002550 920A0009 */  lbu   $t2, 9($s0)
/* 003154 80002554 920F0008 */  lbu   $t7, 8($s0)
/* 003158 80002558 000AC880 */  sll   $t9, $t2, 2
/* 00315C 8000255C 00796021 */  addu  $t4, $v1, $t9
/* 003160 80002560 8D8E0000 */  lw    $t6, ($t4)
/* 003164 80002564 0C001CA0 */  jal   __osDisableInt
/* 003168 80002568 A1CF0008 */   sb    $t7, 8($t6)
/* 00316C 8000256C 3C038001 */  lui   $v1, %hi(D_8000AD7C) # $v1, 0x8001
/* 003170 80002570 2463AD7C */  addiu $v1, %lo(D_8000AD7C) # addiu $v1, $v1, -0x5284
/* 003174 80002574 8C6B0000 */  lw    $t3, ($v1)
/* 003178 80002578 AC700000 */  sw    $s0, ($v1)
/* 00317C 8000257C 00402025 */  move  $a0, $v0
/* 003180 80002580 0C001CBC */  jal   func_800072F0
/* 003184 80002584 AE0B0000 */   sw    $t3, ($s0)
/* 003188 80002588 0C000C0D */  jal   func_80003034
/* 00318C 8000258C 00000000 */   nop   
/* 003190 80002590 02001025 */  move  $v0, $s0
.L80002594:
/* 003194 80002594 8FBF001C */  lw    $ra, 0x1c($sp)
/* 003198 80002598 8FB00018 */  lw    $s0, 0x18($sp)
/* 00319C 8000259C 27BD0020 */  addiu $sp, $sp, 0x20
/* 0031A0 800025A0 03E00008 */  jr    $ra
/* 0031A4 800025A4 00000000 */   nop   
