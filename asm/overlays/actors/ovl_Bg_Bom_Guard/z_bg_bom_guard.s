.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

func_8086E550:
/* 000000 8086E550 03E00008 */  jr    $ra
/* 000004 8086E554 AC850164 */   sw    $a1, 0x164($a0)

/* 000008 8086E558 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 00000C 8086E55C AFBF001C */  sw    $ra, 0x1c($sp)
/* 000010 8086E560 AFB00018 */  sw    $s0, 0x18($sp)
/* 000014 8086E564 AFA50034 */  sw    $a1, 0x34($sp)
/* 000018 8086E568 00808025 */  move  $s0, $a0
/* 00001C 8086E56C AFA00020 */  sw    $zero, 0x20($sp)
/* 000020 8086E570 0C010D20 */  jal   DynaPolyInfo_SetActorMove
/* 000024 8086E574 00002825 */   move  $a1, $zero
/* 000028 8086E578 3C040600 */  lui   $a0, %hi(D_06001C40) # $a0, 0x600
/* 00002C 8086E57C 24841C40 */  addiu $a0, %lo(D_06001C40) # addiu $a0, $a0, 0x1c40
/* 000030 8086E580 0C010620 */  jal   DynaPolyInfo_Alloc
/* 000034 8086E584 27A50020 */   addiu $a1, $sp, 0x20
/* 000038 8086E588 8FA40034 */  lw    $a0, 0x34($sp)
/* 00003C 8086E58C 02003025 */  move  $a2, $s0
/* 000040 8086E590 8FA70020 */  lw    $a3, 0x20($sp)
/* 000044 8086E594 0C00FA9D */  jal   DynaPolyInfo_RegisterActor
/* 000048 8086E598 24850810 */   addiu $a1, $a0, 0x810
/* 00004C 8086E59C 3C048087 */  lui   $a0, %hi(D_8086E750) # $a0, 0x8087
/* 000050 8086E5A0 AE02014C */  sw    $v0, 0x14c($s0)
/* 000054 8086E5A4 0C00084C */  jal   osSyncPrintf
/* 000058 8086E5A8 2484E750 */   addiu $a0, %lo(D_8086E750) # addiu $a0, $a0, -0x18b0
/* 00005C 8086E5AC 3C048087 */  lui   $a0, %hi(D_8086E754) # $a0, 0x8087
/* 000060 8086E5B0 0C00084C */  jal   osSyncPrintf
/* 000064 8086E5B4 2484E754 */   addiu $a0, %lo(D_8086E754) # addiu $a0, $a0, -0x18ac
/* 000068 8086E5B8 8E0F0024 */  lw    $t7, 0x24($s0)
/* 00006C 8086E5BC 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 000070 8086E5C0 44810000 */  mtc1  $at, $f0
/* 000074 8086E5C4 AE0F016C */  sw    $t7, 0x16c($s0)
/* 000078 8086E5C8 8E0F002C */  lw    $t7, 0x2c($s0)
/* 00007C 8086E5CC 8E0E0028 */  lw    $t6, 0x28($s0)
/* 000080 8086E5D0 3C058087 */  lui   $a1, %hi(func_8086E638) # $a1, 0x8087
/* 000084 8086E5D4 24A5E638 */  addiu $a1, %lo(func_8086E638) # addiu $a1, $a1, -0x19c8
/* 000088 8086E5D8 02002025 */  move  $a0, $s0
/* 00008C 8086E5DC E6000050 */  swc1  $f0, 0x50($s0)
/* 000090 8086E5E0 E6000054 */  swc1  $f0, 0x54($s0)
/* 000094 8086E5E4 E6000058 */  swc1  $f0, 0x58($s0)
/* 000098 8086E5E8 AE0F0174 */  sw    $t7, 0x174($s0)
/* 00009C 8086E5EC 0C21B954 */  jal   func_8086E550
/* 0000A0 8086E5F0 AE0E0170 */   sw    $t6, 0x170($s0)
/* 0000A4 8086E5F4 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0000A8 8086E5F8 8FB00018 */  lw    $s0, 0x18($sp)
/* 0000AC 8086E5FC 27BD0030 */  addiu $sp, $sp, 0x30
/* 0000B0 8086E600 03E00008 */  jr    $ra
/* 0000B4 8086E604 00000000 */   nop   

/* 0000B8 8086E608 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0000BC 8086E60C AFA40018 */  sw    $a0, 0x18($sp)
/* 0000C0 8086E610 8FAE0018 */  lw    $t6, 0x18($sp)
/* 0000C4 8086E614 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0000C8 8086E618 00A02025 */  move  $a0, $a1
/* 0000CC 8086E61C 24A50810 */  addiu $a1, $a1, 0x810
/* 0000D0 8086E620 0C00FB56 */  jal   DynaPolyInfo_Free
/* 0000D4 8086E624 8DC6014C */   lw    $a2, 0x14c($t6)
/* 0000D8 8086E628 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0000DC 8086E62C 27BD0018 */  addiu $sp, $sp, 0x18
/* 0000E0 8086E630 03E00008 */  jr    $ra
/* 0000E4 8086E634 00000000 */   nop   

func_8086E638:
/* 0000E8 8086E638 8CA21C54 */  lw    $v0, 0x1c54($a1)
/* 0000EC 8086E63C A0800168 */  sb    $zero, 0x168($a0)
/* 0000F0 8086E640 2403014B */  li    $v1, 331
/* 0000F4 8086E644 1040001D */  beqz  $v0, .L8086E6BC
/* 0000F8 8086E648 3C088016 */   lui   $t0, %hi(gGameInfo) # $t0, 0x8016
/* 0000FC 8086E64C 844E0000 */  lh    $t6, ($v0)
.L8086E650:
/* 000100 8086E650 546E0018 */  bnel  $v1, $t6, .L8086E6B4
/* 000104 8086E654 8C420124 */   lw    $v0, 0x124($v0)
/* 000108 8086E658 904F0258 */  lbu   $t7, 0x258($v0)
/* 00010C 8086E65C 51E00018 */  beql  $t7, $zero, .L8086E6C0
/* 000110 8086E660 90990168 */   lbu   $t9, 0x168($a0)
/* 000114 8086E664 C4A000E0 */  lwc1  $f0, 0xe0($a1)
/* 000118 8086E668 3C01C1A0 */  li    $at, 0xC1A00000 # -20.000000
/* 00011C 8086E66C 44812000 */  mtc1  $at, $f4
/* 000120 8086E670 46000005 */  abs.s $f0, $f0
/* 000124 8086E674 4600203C */  c.lt.s $f4, $f0
/* 000128 8086E678 00000000 */  nop   
/* 00012C 8086E67C 45020010 */  bc1fl .L8086E6C0
/* 000130 8086E680 90990168 */   lbu   $t9, 0x168($a0)
/* 000134 8086E684 C4A000E4 */  lwc1  $f0, 0xe4($a1)
/* 000138 8086E688 3C0142DC */  li    $at, 0x42DC0000 # 110.000000
/* 00013C 8086E68C 44813000 */  mtc1  $at, $f6
/* 000140 8086E690 46000005 */  abs.s $f0, $f0
/* 000144 8086E694 24180001 */  li    $t8, 1
/* 000148 8086E698 4600303C */  c.lt.s $f6, $f0
/* 00014C 8086E69C 00000000 */  nop   
/* 000150 8086E6A0 45020007 */  bc1fl .L8086E6C0
/* 000154 8086E6A4 90990168 */   lbu   $t9, 0x168($a0)
/* 000158 8086E6A8 10000004 */  b     .L8086E6BC
/* 00015C 8086E6AC A0980168 */   sb    $t8, 0x168($a0)
/* 000160 8086E6B0 8C420124 */  lw    $v0, 0x124($v0)
.L8086E6B4:
/* 000164 8086E6B4 5440FFE6 */  bnezl $v0, .L8086E650
/* 000168 8086E6B8 844E0000 */   lh    $t6, ($v0)
.L8086E6BC:
/* 00016C 8086E6BC 90990168 */  lbu   $t9, 0x168($a0)
.L8086E6C0:
/* 000170 8086E6C0 5720000C */  bnezl $t9, .L8086E6F4
/* 000174 8086E6C4 44802000 */   mtc1  $zero, $f4
/* 000178 8086E6C8 8D08FA90 */  lw    $t0, %lo(gGameInfo)($t0)
/* 00017C 8086E6CC 3C01C348 */  li    $at, 0xC3480000 # -200.000000
/* 000180 8086E6D0 44818000 */  mtc1  $at, $f16
/* 000184 8086E6D4 85090C94 */  lh    $t1, 0xc94($t0)
/* 000188 8086E6D8 44894000 */  mtc1  $t1, $f8
/* 00018C 8086E6DC 00000000 */  nop   
/* 000190 8086E6E0 468042A0 */  cvt.s.w $f10, $f8
/* 000194 8086E6E4 46105480 */  add.s $f18, $f10, $f16
/* 000198 8086E6E8 03E00008 */  jr    $ra
/* 00019C 8086E6EC E4920028 */   swc1  $f18, 0x28($a0)

/* 0001A0 8086E6F0 44802000 */  mtc1  $zero, $f4
.L8086E6F4:
/* 0001A4 8086E6F4 00000000 */  nop   
/* 0001A8 8086E6F8 E4840028 */  swc1  $f4, 0x28($a0)
/* 0001AC 8086E6FC 03E00008 */  jr    $ra
/* 0001B0 8086E700 00000000 */   nop   

/* 0001B4 8086E704 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0001B8 8086E708 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0001BC 8086E70C 8C990164 */  lw    $t9, 0x164($a0)
/* 0001C0 8086E710 0320F809 */  jalr  $t9
/* 0001C4 8086E714 00000000 */  nop   
/* 0001C8 8086E718 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0001CC 8086E71C 27BD0018 */  addiu $sp, $sp, 0x18
/* 0001D0 8086E720 03E00008 */  jr    $ra
/* 0001D4 8086E724 00000000 */   nop   

.section .data

D_8086E730:
.incbin "baserom/ovl_Bg_Bom_Guard", 0x1E0, 0x20

D_8086E750:
.incbin "baserom/ovl_Bg_Bom_Guard", 0x200, 0x4

D_8086E754:
.incbin "baserom/ovl_Bg_Bom_Guard", 0x204, 0x7C
