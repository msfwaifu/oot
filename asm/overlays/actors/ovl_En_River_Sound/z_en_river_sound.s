.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

func_80AE6930:
/* 000000 80AE6930 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 000004 80AE6934 AFBF0014 */  sw    $ra, 0x14($sp)
/* 000008 80AE6938 AFA40018 */  sw    $a0, 0x18($sp)
/* 00000C 80AE693C AFA5001C */  sw    $a1, 0x1c($sp)
/* 000010 80AE6940 8482001C */  lh    $v0, 0x1c($a0)
/* 000014 80AE6944 00802825 */  move  $a1, $a0
/* 000018 80AE6948 A080014C */  sb    $zero, 0x14c($a0)
/* 00001C 80AE694C 305800FF */  andi  $t8, $v0, 0xff
/* 000020 80AE6950 A498001C */  sh    $t8, 0x1c($a0)
/* 000024 80AE6954 00027203 */  sra   $t6, $v0, 8
/* 000028 80AE6958 8482001C */  lh    $v0, 0x1c($a0)
/* 00002C 80AE695C 31CF00FF */  andi  $t7, $t6, 0xff
/* 000030 80AE6960 A48F014E */  sh    $t7, 0x14e($a0)
/* 000034 80AE6964 284100F8 */  slti  $at, $v0, 0xf8
/* 000038 80AE6968 14200008 */  bnez  $at, .L80AE698C
/* 00003C 80AE696C 2444FF08 */   addiu $a0, $v0, -0xf8
/* 000040 80AE6970 308400FF */  andi  $a0, $a0, 0xff
/* 000044 80AE6974 0C03D21C */  jal   func_800F4870
/* 000048 80AE6978 AFA50018 */   sw    $a1, 0x18($sp)
/* 00004C 80AE697C 0C00B55C */  jal   Actor_Kill
/* 000050 80AE6980 8FA40018 */   lw    $a0, 0x18($sp)
/* 000054 80AE6984 1000001B */  b     .L80AE69F4
/* 000058 80AE6988 8FBF0014 */   lw    $ra, 0x14($sp)
.L80AE698C:
/* 00005C 80AE698C 240100F7 */  li    $at, 247
/* 000060 80AE6990 14410007 */  bne   $v0, $at, .L80AE69B0
/* 000064 80AE6994 24040004 */   li    $a0, 4
/* 000068 80AE6998 0C03DBED */  jal   func_800F6FB4
/* 00006C 80AE699C AFA50018 */   sw    $a1, 0x18($sp)
/* 000070 80AE69A0 0C00B55C */  jal   Actor_Kill

/* 000074 80AE69A4 8FA40018 */   lw    $a0, 0x18($sp)
/* 000078 80AE69A8 10000012 */  b     .L80AE69F4
/* 00007C 80AE69AC 8FBF0014 */   lw    $ra, 0x14($sp)
.L80AE69B0:
/* 000080 80AE69B0 2401000C */  li    $at, 12
/* 000084 80AE69B4 1441000E */  bne   $v0, $at, .L80AE69F0
/* 000088 80AE69B8 3C038012 */   lui   $v1, %hi(D_80127120) # $v1, 0x8012
/* 00008C 80AE69BC 24637120 */  addiu $v1, %lo(D_80127120) # addiu $v1, $v1, 0x7120
/* 000090 80AE69C0 3C028016 */  lui   $v0, %hi(gSaveContext+0xa4) # $v0, 0x8016
/* 000094 80AE69C4 8C42E704 */  lw    $v0, %lo(gSaveContext+0xa4)($v0)
/* 000098 80AE69C8 8C790030 */  lw    $t9, 0x30($v1)
/* 00009C 80AE69CC 03224024 */  and   $t0, $t9, $v0
/* 0000A0 80AE69D0 11000005 */  beqz  $t0, .L80AE69E8
/* 0000A4 80AE69D4 00000000 */   nop   
/* 0000A8 80AE69D8 8C690038 */  lw    $t1, 0x38($v1)
/* 0000AC 80AE69DC 01225024 */  and   $t2, $t1, $v0
/* 0000B0 80AE69E0 51400004 */  beql  $t2, $zero, .L80AE69F4
/* 0000B4 80AE69E4 8FBF0014 */   lw    $ra, 0x14($sp)
.L80AE69E8:
/* 0000B8 80AE69E8 0C00B55C */  jal   Actor_Kill
/* 0000BC 80AE69EC 00A02025 */   move  $a0, $a1
.L80AE69F0:
/* 0000C0 80AE69F0 8FBF0014 */  lw    $ra, 0x14($sp)
.L80AE69F4:
/* 0000C4 80AE69F4 27BD0018 */  addiu $sp, $sp, 0x18
/* 0000C8 80AE69F8 03E00008 */  jr    $ra
/* 0000CC 80AE69FC 00000000 */   nop   

func_80AE6A00:
/* 0000D0 80AE6A00 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0000D4 80AE6A04 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0000D8 80AE6A08 AFA40018 */  sw    $a0, 0x18($sp)
/* 0000DC 80AE6A0C AFA5001C */  sw    $a1, 0x1c($sp)
/* 0000E0 80AE6A10 8482001C */  lh    $v0, 0x1c($a0)
/* 0000E4 80AE6A14 2401000C */  li    $at, 12
/* 0000E8 80AE6A18 54410006 */  bnel  $v0, $at, .L80AE6A34
/* 0000EC 80AE6A1C 2401000D */   li    $at, 13
/* 0000F0 80AE6A20 0C03D43B */  jal   func_800F50EC
/* 0000F4 80AE6A24 248400E4 */   addiu $a0, $a0, 0xe4
/* 0000F8 80AE6A28 10000007 */  b     .L80AE6A48
/* 0000FC 80AE6A2C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 000100 80AE6A30 2401000D */  li    $at, 13
.L80AE6A34:
/* 000104 80AE6A34 54410004 */  bnel  $v0, $at, .L80AE6A48
/* 000108 80AE6A38 8FBF0014 */   lw    $ra, 0x14($sp)
/* 00010C 80AE6A3C 0C03D541 */  jal   func_800F5504
/* 000110 80AE6A40 00000000 */   nop   
/* 000114 80AE6A44 8FBF0014 */  lw    $ra, 0x14($sp)
.L80AE6A48:
/* 000118 80AE6A48 27BD0018 */  addiu $sp, $sp, 0x18
/* 00011C 80AE6A4C 03E00008 */  jr    $ra
/* 000120 80AE6A50 00000000 */   nop   

func_80AE6A54:
/* 000124 80AE6A54 C48A0000 */  lwc1  $f10, ($a0)
/* 000128 80AE6A58 C4C80000 */  lwc1  $f8, ($a2)
/* 00012C 80AE6A5C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 000130 80AE6A60 00001025 */  move  $v0, $zero
/* 000134 80AE6A64 46085481 */  sub.s $f18, $f10, $f8
/* 000138 80AE6A68 E7B20014 */  swc1  $f18, 0x14($sp)
/* 00013C 80AE6A6C C4C60004 */  lwc1  $f6, 4($a2)
/* 000140 80AE6A70 C4900004 */  lwc1  $f16, 4($a0)
/* 000144 80AE6A74 46068101 */  sub.s $f4, $f16, $f6
/* 000148 80AE6A78 E7A40018 */  swc1  $f4, 0x18($sp)
/* 00014C 80AE6A7C C4C80008 */  lwc1  $f8, 8($a2)
/* 000150 80AE6A80 C48A0008 */  lwc1  $f10, 8($a0)
/* 000154 80AE6A84 46085481 */  sub.s $f18, $f10, $f8
/* 000158 80AE6A88 E7B2001C */  swc1  $f18, 0x1c($sp)
/* 00015C 80AE6A8C C4C60000 */  lwc1  $f6, ($a2)
/* 000160 80AE6A90 C4B00000 */  lwc1  $f16, ($a1)
/* 000164 80AE6A94 46068101 */  sub.s $f4, $f16, $f6
/* 000168 80AE6A98 E7A40020 */  swc1  $f4, 0x20($sp)
/* 00016C 80AE6A9C C4C80004 */  lwc1  $f8, 4($a2)
/* 000170 80AE6AA0 C4AA0004 */  lwc1  $f10, 4($a1)
/* 000174 80AE6AA4 46085481 */  sub.s $f18, $f10, $f8
/* 000178 80AE6AA8 C7A80014 */  lwc1  $f8, 0x14($sp)
/* 00017C 80AE6AAC C7AA0020 */  lwc1  $f10, 0x20($sp)
/* 000180 80AE6AB0 E7B20024 */  swc1  $f18, 0x24($sp)
/* 000184 80AE6AB4 C4C60008 */  lwc1  $f6, 8($a2)
/* 000188 80AE6AB8 C4B00008 */  lwc1  $f16, 8($a1)
/* 00018C 80AE6ABC 46085481 */  sub.s $f18, $f10, $f8
/* 000190 80AE6AC0 E7AA0000 */  swc1  $f10, ($sp)
/* 000194 80AE6AC4 E7A80004 */  swc1  $f8, 4($sp)
/* 000198 80AE6AC8 46068101 */  sub.s $f4, $f16, $f6
/* 00019C 80AE6ACC C7B00024 */  lwc1  $f16, 0x24($sp)
/* 0001A0 80AE6AD0 C7A60018 */  lwc1  $f6, 0x18($sp)
/* 0001A4 80AE6AD4 E7B20008 */  swc1  $f18, 8($sp)
/* 0001A8 80AE6AD8 E7A40028 */  swc1  $f4, 0x28($sp)
/* 0001AC 80AE6ADC 46068101 */  sub.s $f4, $f16, $f6
/* 0001B0 80AE6AE0 E7B0000C */  swc1  $f16, 0xc($sp)
/* 0001B4 80AE6AE4 C7AA0028 */  lwc1  $f10, 0x28($sp)
/* 0001B8 80AE6AE8 C7B00008 */  lwc1  $f16, 8($sp)
/* 0001BC 80AE6AEC C7A8001C */  lwc1  $f8, 0x1c($sp)
/* 0001C0 80AE6AF0 E7A60008 */  swc1  $f6, 8($sp)
/* 0001C4 80AE6AF4 C7A60004 */  lwc1  $f6, 4($sp)
/* 0001C8 80AE6AF8 E7B2002C */  swc1  $f18, 0x2c($sp)
/* 0001CC 80AE6AFC 46085481 */  sub.s $f18, $f10, $f8
/* 0001D0 80AE6B00 E7AA0004 */  swc1  $f10, 4($sp)
/* 0001D4 80AE6B04 46068182 */  mul.s $f6, $f16, $f6
/* 0001D8 80AE6B08 C7AA0008 */  lwc1  $f10, 8($sp)
/* 0001DC 80AE6B0C E7A40030 */  swc1  $f4, 0x30($sp)
/* 0001E0 80AE6B10 E7B20034 */  swc1  $f18, 0x34($sp)
/* 0001E4 80AE6B14 460A2282 */  mul.s $f10, $f4, $f10
/* 0001E8 80AE6B18 460A3180 */  add.s $f6, $f6, $f10
/* 0001EC 80AE6B1C 46124282 */  mul.s $f10, $f8, $f18
/* 0001F0 80AE6B20 C7A80000 */  lwc1  $f8, ($sp)
/* 0001F4 80AE6B24 46065000 */  add.s $f0, $f10, $f6
/* 0001F8 80AE6B28 46088282 */  mul.s $f10, $f16, $f8
/* 0001FC 80AE6B2C C7A6000C */  lwc1  $f6, 0xc($sp)
/* 000200 80AE6B30 46062202 */  mul.s $f8, $f4, $f6
/* 000204 80AE6B34 46085180 */  add.s $f6, $f10, $f8
/* 000208 80AE6B38 C7AA0004 */  lwc1  $f10, 4($sp)
/* 00020C 80AE6B3C 46125202 */  mul.s $f8, $f10, $f18
/* 000210 80AE6B40 46064280 */  add.s $f10, $f8, $f6
/* 000214 80AE6B44 44803000 */  mtc1  $zero, $f6
/* 000218 80AE6B48 46005202 */  mul.s $f8, $f10, $f0
/* 00021C 80AE6B4C 4606403C */  c.lt.s $f8, $f6
/* 000220 80AE6B50 00000000 */  nop   
/* 000224 80AE6B54 45000018 */  .byte 0x45,0x00,0x00,0x18 /* Because of invalid n64 opcode bc1f */
/* 000228 80AE6B58 00000000 */ .word 0x00000000
/* 00022C 80AE6B5C 46108282 */  mul.s $f10, $f16, $f16
/* 000230 80AE6B60 24020001 */  li    $v0, 1
/* 000234 80AE6B64 46042202 */  mul.s $f8, $f4, $f4
/* 000238 80AE6B68 46085180 */  add.s $f6, $f10, $f8
/* 00023C 80AE6B6C 46129102 */  mul.s $f4, $f18, $f18
/* 000240 80AE6B70 46000207 */  neg.s $f8, $f0
/* 000244 80AE6B74 46062280 */  add.s $f10, $f4, $f6
/* 000248 80AE6B78 C4840000 */  lwc1  $f4, ($a0)
/* 00024C 80AE6B7C 460A4003 */  div.s $f0, $f8, $f10
/* 000250 80AE6B80 46008482 */  mul.s $f18, $f16, $f0
/* 000254 80AE6B84 46049180 */  add.s $f6, $f18, $f4
/* 000258 80AE6B88 E4E60000 */  swc1  $f6, ($a3)
/* 00025C 80AE6B8C C7A80030 */  lwc1  $f8, 0x30($sp)
/* 000260 80AE6B90 C4900004 */  lwc1  $f16, 4($a0)
/* 000264 80AE6B94 46004282 */  mul.s $f10, $f8, $f0
/* 000268 80AE6B98 46105480 */  add.s $f18, $f10, $f16
/* 00026C 80AE6B9C E4F20004 */  swc1  $f18, 4($a3)
/* 000270 80AE6BA0 C7A40034 */  lwc1  $f4, 0x34($sp)
/* 000274 80AE6BA4 C4880008 */  lwc1  $f8, 8($a0)
/* 000278 80AE6BA8 46002182 */  mul.s $f6, $f4, $f0
/* 00027C 80AE6BAC 46083280 */  add.s $f10, $f6, $f8
/* 000280 80AE6BB0 10000001 */  b     .L80AE6BB8
/* 000284 80AE6BB4 E4EA0008 */   swc1  $f10, 8($a3)
.L80AE6BB8:
/* 000288 80AE6BB8 03E00008 */  jr    $ra
/* 00028C 80AE6BBC 27BD0038 */   addiu $sp, $sp, 0x38

func_80AE6BC0:
/* 000290 80AE6BC0 27BDFF78 */  addiu $sp, $sp, -0x88
/* 000294 80AE6BC4 3C0F80AE */  lui   $t7, %hi(D_80AE71F0) # $t7, 0x80ae
/* 000298 80AE6BC8 AFBF0034 */  sw    $ra, 0x34($sp)
/* 00029C 80AE6BCC AFB50030 */  sw    $s5, 0x30($sp)
/* 0002A0 80AE6BD0 AFB4002C */  sw    $s4, 0x2c($sp)
/* 0002A4 80AE6BD4 AFB30028 */  sw    $s3, 0x28($sp)
/* 0002A8 80AE6BD8 AFB20024 */  sw    $s2, 0x24($sp)
/* 0002AC 80AE6BDC AFB10020 */  sw    $s1, 0x20($sp)
/* 0002B0 80AE6BE0 AFB0001C */  sw    $s0, 0x1c($sp)
/* 0002B4 80AE6BE4 F7B40010 */  sdc1  $f20, 0x10($sp)
/* 0002B8 80AE6BE8 AFA40088 */  sw    $a0, 0x88($sp)
/* 0002BC 80AE6BEC 25EF71F0 */  addiu $t7, %lo(D_80AE71F0) # addiu $t7, $t7, 0x71f0
/* 0002C0 80AE6BF0 8DF90000 */  lw    $t9, ($t7)
/* 0002C4 80AE6BF4 8DF80004 */  lw    $t8, 4($t7)
/* 0002C8 80AE6BF8 27AE0078 */  addiu $t6, $sp, 0x78
/* 0002CC 80AE6BFC 3C0180AE */  lui   $at, %hi(D_80AE7230) # $at, 0x80ae
/* 0002D0 80AE6C00 ADD90000 */  sw    $t9, ($t6)
/* 0002D4 80AE6C04 ADD80004 */  sw    $t8, 4($t6)
/* 0002D8 80AE6C08 00A09025 */  move  $s2, $a1
/* 0002DC 80AE6C0C 00C0A025 */  move  $s4, $a2
/* 0002E0 80AE6C10 00E0A825 */  move  $s5, $a3
/* 0002E4 80AE6C14 C4347230 */  lwc1  $f20, %lo(D_80AE7230)($at)
/* 0002E8 80AE6C18 18A0001E */  blez  $a1, .L80AE6C94
/* 0002EC 80AE6C1C 00008825 */   move  $s1, $zero
/* 0002F0 80AE6C20 8FB00088 */  lw    $s0, 0x88($sp)
/* 0002F4 80AE6C24 27B30048 */  addiu $s3, $sp, 0x48
.L80AE6C28:
/* 0002F8 80AE6C28 86080000 */  lh    $t0, ($s0)
/* 0002FC 80AE6C2C 02802025 */  move  $a0, $s4
/* 000300 80AE6C30 02602825 */  move  $a1, $s3
/* 000304 80AE6C34 44882000 */  mtc1  $t0, $f4
/* 000308 80AE6C38 00000000 */  nop   
/* 00030C 80AE6C3C 468021A0 */  cvt.s.w $f6, $f4
/* 000310 80AE6C40 E7A60048 */  swc1  $f6, 0x48($sp)
/* 000314 80AE6C44 86090002 */  lh    $t1, 2($s0)
/* 000318 80AE6C48 44894000 */  mtc1  $t1, $f8
/* 00031C 80AE6C4C 00000000 */  nop   
/* 000320 80AE6C50 468042A0 */  cvt.s.w $f10, $f8
/* 000324 80AE6C54 E7AA004C */  swc1  $f10, 0x4c($sp)
/* 000328 80AE6C58 860A0004 */  lh    $t2, 4($s0)
/* 00032C 80AE6C5C 448A8000 */  mtc1  $t2, $f16
/* 000330 80AE6C60 00000000 */  nop   
/* 000334 80AE6C64 468084A0 */  cvt.s.w $f18, $f16
/* 000338 80AE6C68 0C01DFE4 */  jal   Math_Vec3f_DistXYZ
/* 00033C 80AE6C6C E7B20050 */   swc1  $f18, 0x50($sp)
/* 000340 80AE6C70 4614003C */  c.lt.s $f0, $f20
/* 000344 80AE6C74 00000000 */  nop   
/* 000348 80AE6C78 45020004 */  .byte 0x45,0x02,0x00,0x04 /* Because of invalid n64 opcode bc1fl */
/* 00034C 80AE6C7C 26310001 */ .word 0x26310001
/* 000350 80AE6C80 46000506 */  mov.s $f20, $f0
/* 000354 80AE6C84 AFB10080 */  sw    $s1, 0x80($sp)
/* 000358 80AE6C88 26310001 */  addiu $s1, $s1, 1
.L80AE6C8C:
/* 00035C 80AE6C8C 1632FFE6 */  bne   $s1, $s2, .L80AE6C28
/* 000360 80AE6C90 26100006 */   addiu $s0, $s0, 6
.L80AE6C94:
/* 000364 80AE6C94 3C0180AE */  lui   $at, %hi(D_80AE7234) # $at, 0x80ae
/* 000368 80AE6C98 C4247234 */  lwc1  $f4, %lo(D_80AE7234)($at)
/* 00036C 80AE6C9C 8FAB0080 */  lw    $t3, 0x80($sp)
/* 000370 80AE6CA0 27B30048 */  addiu $s3, $sp, 0x48
/* 000374 80AE6CA4 4614203E */  c.le.s $f4, $f20
/* 000378 80AE6CA8 8FAD0088 */  lw    $t5, 0x88($sp)
/* 00037C 80AE6CAC 000B6080 */  sll   $t4, $t3, 2
/* 000380 80AE6CB0 45020004 */  .byte 0x45,0x02,0x00,0x04 /* Because of invalid n64 opcode bc1fl */
/* 000384 80AE6CB4 018B6023 */ .word 0x018B6023
/* 000384 80AE6CB4 018B6023 */  /* 000388 80AE6CB8 10000076 */  b     .L80AE6E94
/* 00038C 80AE6CBC 00001025 */   move  $v0, $zero
/* 000390 80AE6CC0 018B6023 */  subu  $t4, $t4, $t3
.L80AE6CC4:
/* 000394 80AE6CC4 000C6040 */  sll   $t4, $t4, 1
/* 000398 80AE6CC8 018D8021 */  addu  $s0, $t4, $t5
/* 00039C 80AE6CCC 860E0000 */  lh    $t6, ($s0)
/* 0003A0 80AE6CD0 448E3000 */  mtc1  $t6, $f6
/* 0003A4 80AE6CD4 00000000 */  nop   
/* 0003A8 80AE6CD8 46803220 */  cvt.s.w $f8, $f6
/* 0003AC 80AE6CDC E7A8006C */  swc1  $f8, 0x6c($sp)
/* 0003B0 80AE6CE0 860F0002 */  lh    $t7, 2($s0)
/* 0003B4 80AE6CE4 448F5000 */  mtc1  $t7, $f10
/* 0003B8 80AE6CE8 00000000 */  nop   
/* 0003BC 80AE6CEC 46805420 */  cvt.s.w $f16, $f10
/* 0003C0 80AE6CF0 E7B00070 */  swc1  $f16, 0x70($sp)
/* 0003C4 80AE6CF4 86180004 */  lh    $t8, 4($s0)
/* 0003C8 80AE6CF8 44989000 */  mtc1  $t8, $f18
/* 0003CC 80AE6CFC 00000000 */  nop   
/* 0003D0 80AE6D00 46809120 */  cvt.s.w $f4, $f18
/* 0003D4 80AE6D04 11600015 */  beqz  $t3, .L80AE6D5C
/* 0003D8 80AE6D08 E7A40074 */   swc1  $f4, 0x74($sp)
/* 0003DC 80AE6D0C 8619FFFA */  lh    $t9, -6($s0)
/* 0003E0 80AE6D10 02602025 */  move  $a0, $s3
/* 0003E4 80AE6D14 27A5006C */  addiu $a1, $sp, 0x6c
/* 0003E8 80AE6D18 44993000 */  mtc1  $t9, $f6
/* 0003EC 80AE6D1C 02803025 */  move  $a2, $s4
/* 0003F0 80AE6D20 27A70054 */  addiu $a3, $sp, 0x54
/* 0003F4 80AE6D24 46803220 */  cvt.s.w $f8, $f6
/* 0003F8 80AE6D28 E7A80048 */  swc1  $f8, 0x48($sp)
/* 0003FC 80AE6D2C 8608FFFC */  lh    $t0, -4($s0)
/* 000400 80AE6D30 44885000 */  mtc1  $t0, $f10
/* 000404 80AE6D34 00000000 */  nop   
/* 000408 80AE6D38 46805420 */  cvt.s.w $f16, $f10
/* 00040C 80AE6D3C E7B0004C */  swc1  $f16, 0x4c($sp)
/* 000410 80AE6D40 8609FFFE */  lh    $t1, -2($s0)
/* 000414 80AE6D44 44899000 */  mtc1  $t1, $f18
/* 000418 80AE6D48 00000000 */  nop   
/* 00041C 80AE6D4C 46809120 */  cvt.s.w $f4, $f18
/* 000420 80AE6D50 0C2B9A95 */  jal   func_80AE6A54
/* 000424 80AE6D54 E7A40050 */   swc1  $f4, 0x50($sp)
/* 000428 80AE6D58 AFA20078 */  sw    $v0, 0x78($sp)
.L80AE6D5C:
/* 00042C 80AE6D5C 8FAA0080 */  lw    $t2, 0x80($sp)
/* 000430 80AE6D60 254C0001 */  addiu $t4, $t2, 1
/* 000434 80AE6D64 51920016 */  beql  $t4, $s2, .L80AE6DC0
/* 000438 80AE6D68 8FB80078 */   lw    $t8, 0x78($sp)
/* 00043C 80AE6D6C 860D0006 */  lh    $t5, 6($s0)
/* 000440 80AE6D70 27A4006C */  addiu $a0, $sp, 0x6c
/* 000444 80AE6D74 02602825 */  move  $a1, $s3
/* 000448 80AE6D78 448D3000 */  mtc1  $t5, $f6
/* 00044C 80AE6D7C 02803025 */  move  $a2, $s4
/* 000450 80AE6D80 27A70060 */  addiu $a3, $sp, 0x60
/* 000454 80AE6D84 46803220 */  cvt.s.w $f8, $f6
/* 000458 80AE6D88 E7A80048 */  swc1  $f8, 0x48($sp)
/* 00045C 80AE6D8C 860E0008 */  lh    $t6, 8($s0)
/* 000460 80AE6D90 448E5000 */  mtc1  $t6, $f10
/* 000464 80AE6D94 00000000 */  nop   
/* 000468 80AE6D98 46805420 */  cvt.s.w $f16, $f10
/* 00046C 80AE6D9C E7B0004C */  swc1  $f16, 0x4c($sp)
/* 000470 80AE6DA0 860F000A */  lh    $t7, 0xa($s0)
/* 000474 80AE6DA4 448F9000 */  mtc1  $t7, $f18
/* 000478 80AE6DA8 00000000 */  nop   
/* 00047C 80AE6DAC 46809120 */  cvt.s.w $f4, $f18
/* 000480 80AE6DB0 0C2B9A95 */  jal   func_80AE6A54
/* 000484 80AE6DB4 E7A40050 */   swc1  $f4, 0x50($sp)
/* 000488 80AE6DB8 AFA2007C */  sw    $v0, 0x7c($sp)
/* 00048C 80AE6DBC 8FB80078 */  lw    $t8, 0x78($sp)
.L80AE6DC0:
/* 000490 80AE6DC0 8FAB007C */  lw    $t3, 0x7c($sp)
/* 000494 80AE6DC4 8FB90078 */  lw    $t9, 0x78($sp)
/* 000498 80AE6DC8 1300001A */  beqz  $t8, .L80AE6E34
/* 00049C 80AE6DCC 00000000 */   nop   
/* 0004A0 80AE6DD0 11600018 */  beqz  $t3, .L80AE6E34
/* 0004A4 80AE6DD4 27A40054 */   addiu $a0, $sp, 0x54
/* 0004A8 80AE6DD8 27A50060 */  addiu $a1, $sp, 0x60
/* 0004AC 80AE6DDC 02803025 */  move  $a2, $s4
/* 0004B0 80AE6DE0 0C2B9A95 */  jal   func_80AE6A54
/* 0004B4 80AE6DE4 02A03825 */   move  $a3, $s5
/* 0004B8 80AE6DE8 14400029 */  bnez  $v0, .L80AE6E90
/* 0004BC 80AE6DEC C7A60054 */   lwc1  $f6, 0x54($sp)
/* 0004C0 80AE6DF0 C7A80060 */  lwc1  $f8, 0x60($sp)
/* 0004C4 80AE6DF4 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 0004C8 80AE6DF8 44810000 */  mtc1  $at, $f0
/* 0004CC 80AE6DFC 46083280 */  add.s $f10, $f6, $f8
/* 0004D0 80AE6E00 46005402 */  mul.s $f16, $f10, $f0
/* 0004D4 80AE6E04 E6B00000 */  swc1  $f16, ($s5)
/* 0004D8 80AE6E08 C7A40064 */  lwc1  $f4, 0x64($sp)
/* 0004DC 80AE6E0C C7B20058 */  lwc1  $f18, 0x58($sp)
/* 0004E0 80AE6E10 46049180 */  add.s $f6, $f18, $f4
/* 0004E4 80AE6E14 46003202 */  mul.s $f8, $f6, $f0
/* 0004E8 80AE6E18 E6A80004 */  swc1  $f8, 4($s5)
/* 0004EC 80AE6E1C C7B00068 */  lwc1  $f16, 0x68($sp)
/* 0004F0 80AE6E20 C7AA005C */  lwc1  $f10, 0x5c($sp)
/* 0004F4 80AE6E24 46105480 */  add.s $f18, $f10, $f16
/* 0004F8 80AE6E28 46009102 */  mul.s $f4, $f18, $f0
/* 0004FC 80AE6E2C 10000018 */  b     .L80AE6E90
/* 000500 80AE6E30 E6A40008 */   swc1  $f4, 8($s5)
.L80AE6E34:
/* 000504 80AE6E34 13200008 */  beqz  $t9, .L80AE6E58
/* 000508 80AE6E38 8FA8007C */   lw    $t0, 0x7c($sp)
/* 00050C 80AE6E3C C7A60054 */  lwc1  $f6, 0x54($sp)
/* 000510 80AE6E40 E6A60000 */  swc1  $f6, ($s5)
/* 000514 80AE6E44 C7A80058 */  lwc1  $f8, 0x58($sp)
/* 000518 80AE6E48 E6A80004 */  swc1  $f8, 4($s5)
/* 00051C 80AE6E4C C7AA005C */  lwc1  $f10, 0x5c($sp)
/* 000520 80AE6E50 1000000F */  b     .L80AE6E90
/* 000524 80AE6E54 E6AA0008 */   swc1  $f10, 8($s5)
.L80AE6E58:
/* 000528 80AE6E58 11000008 */  beqz  $t0, .L80AE6E7C
/* 00052C 80AE6E5C C7A6006C */   lwc1  $f6, 0x6c($sp)
/* 000530 80AE6E60 C7B00060 */  lwc1  $f16, 0x60($sp)
/* 000534 80AE6E64 E6B00000 */  swc1  $f16, ($s5)
/* 000538 80AE6E68 C7B20064 */  lwc1  $f18, 0x64($sp)
/* 00053C 80AE6E6C E6B20004 */  swc1  $f18, 4($s5)
/* 000540 80AE6E70 C7A40068 */  lwc1  $f4, 0x68($sp)
/* 000544 80AE6E74 10000006 */  b     .L80AE6E90
/* 000548 80AE6E78 E6A40008 */   swc1  $f4, 8($s5)
.L80AE6E7C:
/* 00054C 80AE6E7C E6A60000 */  swc1  $f6, ($s5)
/* 000550 80AE6E80 C7A80070 */  lwc1  $f8, 0x70($sp)
/* 000554 80AE6E84 E6A80004 */  swc1  $f8, 4($s5)
/* 000558 80AE6E88 C7AA0074 */  lwc1  $f10, 0x74($sp)
/* 00055C 80AE6E8C E6AA0008 */  swc1  $f10, 8($s5)
.L80AE6E90:
/* 000560 80AE6E90 24020001 */  li    $v0, 1
.L80AE6E94:
/* 000564 80AE6E94 8FBF0034 */  lw    $ra, 0x34($sp)
/* 000568 80AE6E98 D7B40010 */  ldc1  $f20, 0x10($sp)
/* 00056C 80AE6E9C 8FB0001C */  lw    $s0, 0x1c($sp)
/* 000570 80AE6EA0 8FB10020 */  lw    $s1, 0x20($sp)
/* 000574 80AE6EA4 8FB20024 */  lw    $s2, 0x24($sp)
/* 000578 80AE6EA8 8FB30028 */  lw    $s3, 0x28($sp)
/* 00057C 80AE6EAC 8FB4002C */  lw    $s4, 0x2c($sp)
/* 000580 80AE6EB0 8FB50030 */  lw    $s5, 0x30($sp)
/* 000584 80AE6EB4 03E00008 */  jr    $ra
/* 000588 80AE6EB8 27BD0088 */   addiu $sp, $sp, 0x88

func_80AE6EBC:
/* 00058C 80AE6EBC 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 000590 80AE6EC0 AFBF0024 */  sw    $ra, 0x24($sp)
/* 000594 80AE6EC4 AFB00020 */  sw    $s0, 0x20($sp)
/* 000598 80AE6EC8 AFA5004C */  sw    $a1, 0x4c($sp)
/* 00059C 80AE6ECC 8CAF1C44 */  lw    $t7, 0x1c44($a1)
/* 0005A0 80AE6ED0 8FB8004C */  lw    $t8, 0x4c($sp)
/* 0005A4 80AE6ED4 3C190001 */  lui   $t9, 1
/* 0005A8 80AE6ED8 AFAF003C */  sw    $t7, 0x3c($sp)
/* 0005AC 80AE6EDC 8482001C */  lh    $v0, 0x1c($a0)
/* 0005B0 80AE6EE0 00808025 */  move  $s0, $a0
/* 0005B4 80AE6EE4 24010004 */  li    $at, 4
/* 0005B8 80AE6EE8 10400005 */  beqz  $v0, .L80AE6F00
/* 0005BC 80AE6EEC 0338C821 */   addu  $t9, $t9, $t8
/* 0005C0 80AE6EF0 10410003 */  beq   $v0, $at, .L80AE6F00
/* 0005C4 80AE6EF4 24010005 */   li    $at, 5
/* 0005C8 80AE6EF8 54410049 */  bnel  $v0, $at, .L80AE7020
/* 0005CC 80AE6EFC 2401000D */   li    $at, 13
.L80AE6F00:
/* 0005D0 80AE6F00 8608014E */  lh    $t0, 0x14e($s0)
/* 0005D4 80AE6F04 8F391E08 */  lw    $t9, 0x1e08($t9)
/* 0005D8 80AE6F08 3C0D8016 */  lui   $t5, 0x8016
/* 0005DC 80AE6F0C 000848C0 */  sll   $t1, $t0, 3
/* 0005E0 80AE6F10 03291021 */  addu  $v0, $t9, $t1
/* 0005E4 80AE6F14 8C430004 */  lw    $v1, 4($v0)
/* 0005E8 80AE6F18 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 0005EC 80AE6F1C 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 0005F0 80AE6F20 00035100 */  sll   $t2, $v1, 4
/* 0005F4 80AE6F24 000A5F02 */  srl   $t3, $t2, 0x1c
/* 0005F8 80AE6F28 000B6080 */  sll   $t4, $t3, 2
/* 0005FC 80AE6F2C 01AC6821 */  addu  $t5, $t5, $t4
/* 000600 80AE6F30 8DAD6FA8 */  lw    $t5, 0x6fa8($t5)
/* 000604 80AE6F34 00617024 */  and   $t6, $v1, $at
/* 000608 80AE6F38 8FA6003C */  lw    $a2, 0x3c($sp)
/* 00060C 80AE6F3C 3C018000 */  lui   $at, 0x8000
/* 000610 80AE6F40 90450000 */  lbu   $a1, ($v0)
/* 000614 80AE6F44 26070024 */  addiu $a3, $s0, 0x24
/* 000618 80AE6F48 01AE2021 */  addu  $a0, $t5, $t6
/* 00061C 80AE6F4C 00812021 */  addu  $a0, $a0, $at
/* 000620 80AE6F50 AFA70030 */  sw    $a3, 0x30($sp)
/* 000624 80AE6F54 0C2B9AF0 */  jal   func_80AE6BC0
/* 000628 80AE6F58 24C60024 */   addiu $a2, $a2, 0x24
/* 00062C 80AE6F5C 10400045 */  beqz  $v0, .L80AE7074
/* 000630 80AE6F60 8FA4004C */   lw    $a0, 0x4c($sp)
/* 000634 80AE6F64 8FAF0030 */  lw    $t7, 0x30($sp)
/* 000638 80AE6F68 248407C0 */  addiu $a0, $a0, 0x7c0
/* 00063C 80AE6F6C AFA4002C */  sw    $a0, 0x2c($sp)
/* 000640 80AE6F70 26050078 */  addiu $a1, $s0, 0x78
/* 000644 80AE6F74 27A60034 */  addiu $a2, $sp, 0x34
/* 000648 80AE6F78 02003825 */  move  $a3, $s0
/* 00064C 80AE6F7C 0C00F269 */  jal   func_8003C9A4
/* 000650 80AE6F80 AFAF0010 */   sw    $t7, 0x10($sp)
/* 000654 80AE6F84 3C01C6FA */  li    $at, 0xC6FA0000 # -32000.000000
/* 000658 80AE6F88 44812000 */  mtc1  $at, $f4
/* 00065C 80AE6F8C 8FA4002C */  lw    $a0, 0x2c($sp)
/* 000660 80AE6F90 8FA60034 */  lw    $a2, 0x34($sp)
/* 000664 80AE6F94 46040032 */  c.eq.s $f0, $f4
/* 000668 80AE6F98 00000000 */  nop   
/* 00066C 80AE6F9C 45030006 */  .byte 0x45,0x03,0x00,0x06 /* Because of invalid n64 opcode bc1tl */
/* 000670 80AE6FA0 A200014D */ .word 0xA200014D
/* 000670 80AE6FA0 A200014D */  /* 000674 80AE6FA4 0C010830 */  jal   func_800420C0
/* 000678 80AE6FA8 8E050078 */   lw    $a1, 0x78($s0)
/* 00067C 80AE6FAC 10000002 */  b     .L80AE6FB8
/* 000680 80AE6FB0 A202014D */   sb    $v0, 0x14d($s0)
/* 000684 80AE6FB4 A200014D */  sb    $zero, 0x14d($s0)
.L80AE6FB8:
/* 000688 80AE6FB8 9202014D */  lbu   $v0, 0x14d($s0)
/* 00068C 80AE6FBC 1440000E */  bnez  $v0, .L80AE6FF8
/* 000690 80AE6FC0 2459FFFF */   addiu $t9, $v0, -1
/* 000694 80AE6FC4 8602001C */  lh    $v0, 0x1c($s0)
/* 000698 80AE6FC8 24010004 */  li    $at, 4
/* 00069C 80AE6FCC 14410003 */  bne   $v0, $at, .L80AE6FDC
/* 0006A0 80AE6FD0 00000000 */   nop   
/* 0006A4 80AE6FD4 10000027 */  b     .L80AE7074
/* 0006A8 80AE6FD8 A200014D */   sb    $zero, 0x14d($s0)
.L80AE6FDC:
/* 0006AC 80AE6FDC 14400004 */  bnez  $v0, .L80AE6FF0
/* 0006B0 80AE6FE0 24080002 */   li    $t0, 2
/* 0006B4 80AE6FE4 24180001 */  li    $t8, 1
/* 0006B8 80AE6FE8 10000022 */  b     .L80AE7074
/* 0006BC 80AE6FEC A218014D */   sb    $t8, 0x14d($s0)
.L80AE6FF0:
/* 0006C0 80AE6FF0 10000020 */  b     .L80AE7074
/* 0006C4 80AE6FF4 A208014D */   sb    $t0, 0x14d($s0)
.L80AE6FF8:
/* 0006C8 80AE6FF8 332300FF */  andi  $v1, $t9, 0xff
/* 0006CC 80AE6FFC 28610003 */  slti  $at, $v1, 3
/* 0006D0 80AE7000 14200004 */  bnez  $at, .L80AE7014
/* 0006D4 80AE7004 A219014D */   sb    $t9, 0x14d($s0)
/* 0006D8 80AE7008 24090002 */  li    $t1, 2
/* 0006DC 80AE700C 10000019 */  b     .L80AE7074
/* 0006E0 80AE7010 A209014D */   sb    $t1, 0x14d($s0)
.L80AE7014:
/* 0006E4 80AE7014 10000017 */  b     .L80AE7074
/* 0006E8 80AE7018 A203014D */   sb    $v1, 0x14d($s0)
/* 0006EC 80AE701C 2401000D */  li    $at, 13
.L80AE7020:
/* 0006F0 80AE7020 10410004 */  beq   $v0, $at, .L80AE7034
/* 0006F4 80AE7024 8FA4003C */   lw    $a0, 0x3c($sp)
/* 0006F8 80AE7028 24010013 */  li    $at, 19
/* 0006FC 80AE702C 14410006 */  bne   $v0, $at, .L80AE7048
/* 000700 80AE7030 8FAA004C */   lw    $t2, 0x4c($sp)
.L80AE7034:
/* 000704 80AE7034 26050008 */  addiu $a1, $s0, 8
/* 000708 80AE7038 0C00B6F4 */  jal   func_8002DBD0
/* 00070C 80AE703C 26060024 */   addiu $a2, $s0, 0x24
/* 000710 80AE7040 1000000D */  b     .L80AE7078
/* 000714 80AE7044 8FBF0024 */   lw    $ra, 0x24($sp)
.L80AE7048:
/* 000718 80AE7048 854B00A4 */  lh    $t3, 0xa4($t2)
/* 00071C 80AE704C 24010012 */  li    $at, 18
/* 000720 80AE7050 01402025 */  move  $a0, $t2
/* 000724 80AE7054 55610008 */  bnel  $t3, $at, .L80AE7078
/* 000728 80AE7058 8FBF0024 */   lw    $ra, 0x24($sp)
/* 00072C 80AE705C 0C00B337 */  jal   Flags_GetClear
/* 000730 80AE7060 82050003 */   lb    $a1, 3($s0)
/* 000734 80AE7064 50400004 */  beql  $v0, $zero, .L80AE7078
/* 000738 80AE7068 8FBF0024 */   lw    $ra, 0x24($sp)
/* 00073C 80AE706C 0C00B55C */  jal   Actor_Kill
/* 000740 80AE7070 02002025 */   move  $a0, $s0
.L80AE7074:
/* 000744 80AE7074 8FBF0024 */  lw    $ra, 0x24($sp)
.L80AE7078:
/* 000748 80AE7078 8FB00020 */  lw    $s0, 0x20($sp)
/* 00074C 80AE707C 27BD0048 */  addiu $sp, $sp, 0x48
/* 000750 80AE7080 03E00008 */  jr    $ra
/* 000754 80AE7084 00000000 */   nop   

func_80AE7088:
/* 000758 80AE7088 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 00075C 80AE708C AFBF0014 */  sw    $ra, 0x14($sp)
/* 000760 80AE7090 AFA5001C */  sw    $a1, 0x1c($sp)
/* 000764 80AE7094 908E014C */  lbu   $t6, 0x14c($a0)
/* 000768 80AE7098 00803825 */  move  $a3, $a0
/* 00076C 80AE709C 240F0001 */  li    $t7, 1
/* 000770 80AE70A0 55C00004 */  bnezl $t6, .L80AE70B4
/* 000774 80AE70A4 84E2001C */   lh    $v0, 0x1c($a3)
/* 000778 80AE70A8 10000045 */  b     .L80AE71C0
/* 00077C 80AE70AC A08F014C */   sb    $t7, 0x14c($a0)
/* 000780 80AE70B0 84E2001C */  lh    $v0, 0x1c($a3)
.L80AE70B4:
/* 000784 80AE70B4 24010004 */  li    $at, 4
/* 000788 80AE70B8 50400006 */  beql  $v0, $zero, .L80AE70D4
/* 00078C 80AE70BC 90F8014D */   lbu   $t8, 0x14d($a3)
/* 000790 80AE70C0 10410003 */  beq   $v0, $at, .L80AE70D0
/* 000794 80AE70C4 24010005 */   li    $at, 5
/* 000798 80AE70C8 5441000B */  bnel  $v0, $at, .L80AE70F8
/* 00079C 80AE70CC 2401000B */   li    $at, 11
.L80AE70D0:
/* 0007A0 80AE70D0 90F8014D */  lbu   $t8, 0x14d($a3)
.L80AE70D4:
/* 0007A4 80AE70D4 3C0580AE */  lui   $a1, 0x80ae
/* 0007A8 80AE70D8 24E400E4 */  addiu $a0, $a3, 0xe4
/* 0007AC 80AE70DC 0018C880 */  sll   $t9, $t8, 2
/* 0007B0 80AE70E0 00B92821 */  addu  $a1, $a1, $t9
/* 0007B4 80AE70E4 0C03D18D */  jal   func_800F4634
/* 0007B8 80AE70E8 8CA57224 */   lw    $a1, 0x7224($a1)
/* 0007BC 80AE70EC 10000035 */  b     .L80AE71C4
/* 0007C0 80AE70F0 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0007C4 80AE70F4 2401000B */  li    $at, 11
.L80AE70F8:
/* 0007C8 80AE70F8 54410006 */  bnel  $v0, $at, .L80AE7114
/* 0007CC 80AE70FC 2401000C */   li    $at, 12
/* 0007D0 80AE7100 0C03D295 */  jal   func_800F4A54
/* 0007D4 80AE7104 2404005A */   li    $a0, 90
/* 0007D8 80AE7108 1000002E */  b     .L80AE71C4
/* 0007DC 80AE710C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0007E0 80AE7110 2401000C */  li    $at, 12
.L80AE7114:
/* 0007E4 80AE7114 14410005 */  bne   $v0, $at, .L80AE712C
/* 0007E8 80AE7118 24E400E4 */   addiu $a0, $a3, 0xe4
/* 0007EC 80AE711C 0C03D38C */  jal   func_800F4E30
/* 0007F0 80AE7120 8CE50090 */   lw    $a1, 0x90($a3)
/* 0007F4 80AE7124 10000027 */  b     .L80AE71C4
/* 0007F8 80AE7128 8FBF0014 */   lw    $ra, 0x14($sp)
.L80AE712C:
/* 0007FC 80AE712C 2401000D */  li    $at, 13
/* 000800 80AE7130 14410006 */  bne   $v0, $at, .L80AE714C
/* 000804 80AE7134 24E40008 */   addiu $a0, $a3, 8
/* 000808 80AE7138 2405003E */  li    $a1, 62
/* 00080C 80AE713C 0C03D4A8 */  jal   func_800F52A0
/* 000810 80AE7140 240603E8 */   li    $a2, 1000
/* 000814 80AE7144 1000001F */  b     .L80AE71C4
/* 000818 80AE7148 8FBF0014 */   lw    $ra, 0x14($sp)
.L80AE714C:
/* 00081C 80AE714C 24010013 */  li    $at, 19
/* 000820 80AE7150 14410006 */  bne   $v0, $at, .L80AE716C
/* 000824 80AE7154 24E40008 */   addiu $a0, $a3, 8
/* 000828 80AE7158 24050028 */  li    $a1, 40
/* 00082C 80AE715C 0C03D4A8 */  jal   func_800F52A0
/* 000830 80AE7160 24060320 */   li    $a2, 800
/* 000834 80AE7164 10000017 */  b     .L80AE71C4
/* 000838 80AE7168 8FBF0014 */   lw    $ra, 0x14($sp)
.L80AE716C:
/* 00083C 80AE716C 2401000E */  li    $at, 14
/* 000840 80AE7170 10410008 */  beq   $v0, $at, .L80AE7194
/* 000844 80AE7174 00024040 */   sll   $t0, $v0, 1
/* 000848 80AE7178 24010010 */  li    $at, 16
/* 00084C 80AE717C 10410005 */  beq   $v0, $at, .L80AE7194
/* 000850 80AE7180 24010011 */   li    $at, 17
/* 000854 80AE7184 10410003 */  beq   $v0, $at, .L80AE7194
/* 000858 80AE7188 24010012 */   li    $at, 18
/* 00085C 80AE718C 14410007 */  bne   $v0, $at, .L80AE71AC
/* 000860 80AE7190 00E02025 */   move  $a0, $a3
.L80AE7194:
/* 000864 80AE7194 3C0480AE */  lui   $a0, 0x80ae
/* 000868 80AE7198 00882021 */  addu  $a0, $a0, $t0
/* 00086C 80AE719C 0C01E233 */  jal   func_800788CC
/* 000870 80AE71A0 948471F8 */   lhu   $a0, 0x71f8($a0)
/* 000874 80AE71A4 10000007 */  b     .L80AE71C4
/* 000878 80AE71A8 8FBF0014 */   lw    $ra, 0x14($sp)
.L80AE71AC:
/* 00087C 80AE71AC 00024840 */  sll   $t1, $v0, 1
/* 000880 80AE71B0 3C0580AE */  lui   $a1, 0x80ae
/* 000884 80AE71B4 00A92821 */  addu  $a1, $a1, $t1
/* 000888 80AE71B8 0C00BE0A */  jal   Audio_PlayActorSound2

/* 00088C 80AE71BC 94A571F8 */   lhu   $a1, 0x71f8($a1)
.L80AE71C0:
/* 000890 80AE71C0 8FBF0014 */  lw    $ra, 0x14($sp)
.L80AE71C4:
/* 000894 80AE71C4 27BD0018 */  addiu $sp, $sp, 0x18
/* 000898 80AE71C8 03E00008 */  jr    $ra
/* 00089C 80AE71CC 00000000 */   nop   

.section .data

D_80AE71D0:
.incbin "baserom/ovl_En_River_Sound", 0x8A0, 0x20
D_80AE71F0:
.incbin "baserom/ovl_En_River_Sound", 0x8C0, 0x40
D_80AE7230:
.incbin "baserom/ovl_En_River_Sound", 0x900, 0x04
D_80AE7234:
.incbin "baserom/ovl_En_River_Sound", 0x904, 0x7C
