.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_80101B90
/* B78D30 80101B90 27BDFF88 */  addiu $sp, $sp, -0x78
/* B78D34 80101B94 AFBF0044 */  sw    $ra, 0x44($sp)
/* B78D38 80101B98 F7BE0038 */  sdc1  $f30, 0x38($sp)
/* B78D3C 80101B9C F7BC0030 */  sdc1  $f28, 0x30($sp)
/* B78D40 80101BA0 F7BA0028 */  sdc1  $f26, 0x28($sp)
/* B78D44 80101BA4 F7B80020 */  sdc1  $f24, 0x20($sp)
/* B78D48 80101BA8 F7B60018 */  sdc1  $f22, 0x18($sp)
/* B78D4C 80101BAC F7B40010 */  sdc1  $f20, 0x10($sp)
/* B78D50 80101BB0 AFA5007C */  sw    $a1, 0x7c($sp)
/* B78D54 80101BB4 AFA60080 */  sw    $a2, 0x80($sp)
/* B78D58 80101BB8 AFA70084 */  sw    $a3, 0x84($sp)
/* B78D5C 80101BBC 0C0406D0 */  jal   func_80101B40
/* B78D60 80101BC0 AFA40078 */   sw    $a0, 0x78($sp)
/* B78D64 80101BC4 C7A40088 */  lwc1  $f4, 0x88($sp)
/* B78D68 80101BC8 C7A6007C */  lwc1  $f6, 0x7c($sp)
/* B78D6C 80101BCC C7A8008C */  lwc1  $f8, 0x8c($sp)
/* B78D70 80101BD0 C7AA0080 */  lwc1  $f10, 0x80($sp)
/* B78D74 80101BD4 46062081 */  sub.s $f2, $f4, $f6
/* B78D78 80101BD8 C7A60084 */  lwc1  $f6, 0x84($sp)
/* B78D7C 80101BDC C7A40090 */  lwc1  $f4, 0x90($sp)
/* B78D80 80101BE0 460A4301 */  sub.s $f12, $f8, $f10
/* B78D84 80101BE4 46021202 */  mul.s $f8, $f2, $f2
/* B78D88 80101BE8 3C01BFF0 */  li    $at, 0xBFF00000 # 0.000000
/* B78D8C 80101BEC 46062381 */  sub.s $f14, $f4, $f6
/* B78D90 80101BF0 460C6282 */  mul.s $f10, $f12, $f12
/* B78D94 80101BF4 44814800 */  mtc1  $at, $f9
/* B78D98 80101BF8 3C013FF0 */  li    $at, 0x3FF00000 # 0.000000
/* B78D9C 80101BFC 460E7182 */  mul.s $f6, $f14, $f14
/* B78DA0 80101C00 8FA40078 */  lw    $a0, 0x78($sp)
/* B78DA4 80101C04 460A4100 */  add.s $f4, $f8, $f10
/* B78DA8 80101C08 44804000 */  mtc1  $zero, $f8
/* B78DAC 80101C0C 46062000 */  add.s $f0, $f4, $f6
/* B78DB0 80101C10 46000004 */  sqrt.s $f0, $f0
/* B78DB4 80101C14 460002A1 */  cvt.d.s $f10, $f0
/* B78DB8 80101C18 462A4103 */  div.d $f4, $f8, $f10
/* B78DBC 80101C1C 46202420 */  cvt.s.d $f16, $f4
/* B78DC0 80101C20 46101702 */  mul.s $f28, $f2, $f16
/* B78DC4 80101C24 00000000 */  nop   
/* B78DC8 80101C28 46106182 */  mul.s $f6, $f12, $f16
/* B78DCC 80101C2C 00000000 */  nop   
/* B78DD0 80101C30 46107282 */  mul.s $f10, $f14, $f16
/* B78DD4 80101C34 E7A60054 */  swc1  $f6, 0x54($sp)
/* B78DD8 80101C38 C7A60098 */  lwc1  $f6, 0x98($sp)
/* B78DDC 80101C3C C7BE0054 */  lwc1  $f30, 0x54($sp)
/* B78DE0 80101C40 E7AA0050 */  swc1  $f10, 0x50($sp)
/* B78DE4 80101C44 C7A40050 */  lwc1  $f4, 0x50($sp)
/* B78DE8 80101C48 46043282 */  mul.s $f10, $f6, $f4
/* B78DEC 80101C4C C7A6009C */  lwc1  $f6, 0x9c($sp)
/* B78DF0 80101C50 E7A40068 */  swc1  $f4, 0x68($sp)
/* B78DF4 80101C54 C7B00068 */  lwc1  $f16, 0x68($sp)
/* B78DF8 80101C58 461E3182 */  mul.s $f6, $f6, $f30
/* B78DFC 80101C5C 46065281 */  sub.s $f10, $f10, $f6
/* B78E00 80101C60 C7A60094 */  lwc1  $f6, 0x94($sp)
/* B78E04 80101C64 E7AA004C */  swc1  $f10, 0x4c($sp)
/* B78E08 80101C68 46043282 */  mul.s $f10, $f6, $f4
/* B78E0C 80101C6C C7A6009C */  lwc1  $f6, 0x9c($sp)
/* B78E10 80101C70 C7B6004C */  lwc1  $f22, 0x4c($sp)
/* B78E14 80101C74 461C3102 */  mul.s $f4, $f6, $f28
/* B78E18 80101C78 C7A6004C */  lwc1  $f6, 0x4c($sp)
/* B78E1C 80101C7C 460A2601 */  sub.s $f24, $f4, $f10
/* B78E20 80101C80 C7A40094 */  lwc1  $f4, 0x94($sp)
/* B78E24 80101C84 461E2282 */  mul.s $f10, $f4, $f30
/* B78E28 80101C88 C7A40098 */  lwc1  $f4, 0x98($sp)
/* B78E2C 80101C8C E7B80050 */  swc1  $f24, 0x50($sp)
/* B78E30 80101C90 461C2202 */  mul.s $f8, $f4, $f28
/* B78E34 80101C94 46085681 */  sub.s $f26, $f10, $f8
/* B78E38 80101C98 4618C282 */  mul.s $f10, $f24, $f24
/* B78E3C 80101C9C C7A8004C */  lwc1  $f8, 0x4c($sp)
/* B78E40 80101CA0 44815800 */  mtc1  $at, $f11
/* B78E44 80101CA4 E7BA0058 */  swc1  $f26, 0x58($sp)
/* B78E48 80101CA8 46064202 */  mul.s $f8, $f8, $f6
/* B78E4C 80101CAC 460A4180 */  add.s $f6, $f8, $f10
/* B78E50 80101CB0 461AD202 */  mul.s $f8, $f26, $f26
/* B78E54 80101CB4 44805000 */  mtc1  $zero, $f10
/* B78E58 80101CB8 46083000 */  add.s $f0, $f6, $f8
/* B78E5C 80101CBC 46000004 */  sqrt.s $f0, $f0
/* B78E60 80101CC0 46000121 */  cvt.d.s $f4, $f0
/* B78E64 80101CC4 46245183 */  div.d $f6, $f10, $f4
/* B78E68 80101CC8 46203520 */  cvt.s.d $f20, $f6
/* B78E6C 80101CCC 4614B582 */  mul.s $f22, $f22, $f20
/* B78E70 80101CD0 00000000 */  nop   
/* B78E74 80101CD4 4614C602 */  mul.s $f24, $f24, $f20
/* B78E78 80101CD8 00000000 */  nop   
/* B78E7C 80101CDC 4614D682 */  mul.s $f26, $f26, $f20
/* B78E80 80101CE0 00000000 */  nop   
/* B78E84 80101CE4 461AF202 */  mul.s $f8, $f30, $f26
/* B78E88 80101CE8 00000000 */  nop   
/* B78E8C 80101CEC 46188282 */  mul.s $f10, $f16, $f24
/* B78E90 80101CF0 00000000 */  nop   
/* B78E94 80101CF4 46168102 */  mul.s $f4, $f16, $f22
/* B78E98 80101CF8 00000000 */  nop   
/* B78E9C 80101CFC 461AE182 */  mul.s $f6, $f28, $f26
/* B78EA0 80101D00 460A4081 */  sub.s $f2, $f8, $f10
/* B78EA4 80101D04 4618E202 */  mul.s $f8, $f28, $f24
/* B78EA8 80101D08 00000000 */  nop   
/* B78EAC 80101D0C 4616F282 */  mul.s $f10, $f30, $f22
/* B78EB0 80101D10 46062301 */  sub.s $f12, $f4, $f6
/* B78EB4 80101D14 46021102 */  mul.s $f4, $f2, $f2
/* B78EB8 80101D18 44812800 */  mtc1  $at, $f5
/* B78EBC 80101D1C 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B78EC0 80101D20 460C6182 */  mul.s $f6, $f12, $f12
/* B78EC4 80101D24 460A4381 */  sub.s $f14, $f8, $f10
/* B78EC8 80101D28 460E7282 */  mul.s $f10, $f14, $f14
/* B78ECC 80101D2C 46062200 */  add.s $f8, $f4, $f6
/* B78ED0 80101D30 44802000 */  mtc1  $zero, $f4
/* B78ED4 80101D34 460A4000 */  add.s $f0, $f8, $f10
/* B78ED8 80101D38 46000004 */  sqrt.s $f0, $f0
/* B78EDC 80101D3C 460001A1 */  cvt.d.s $f6, $f0
/* B78EE0 80101D40 46262203 */  div.d $f8, $f4, $f6
/* B78EE4 80101D44 46204520 */  cvt.s.d $f20, $f8
/* B78EE8 80101D48 46141282 */  mul.s $f10, $f2, $f20
/* B78EEC 80101D4C E7AA0094 */  swc1  $f10, 0x94($sp)
/* B78EF0 80101D50 E4960000 */  swc1  $f22, ($a0)
/* B78EF4 80101D54 E4980010 */  swc1  $f24, 0x10($a0)
/* B78EF8 80101D58 E49A0020 */  swc1  $f26, 0x20($a0)
/* B78EFC 80101D5C C7A4007C */  lwc1  $f4, 0x7c($sp)
/* B78F00 80101D60 C7A80080 */  lwc1  $f8, 0x80($sp)
/* B78F04 80101D64 46162182 */  mul.s $f6, $f4, $f22
/* B78F08 80101D68 00000000 */  nop   
/* B78F0C 80101D6C 46184282 */  mul.s $f10, $f8, $f24
/* B78F10 80101D70 C7A80084 */  lwc1  $f8, 0x84($sp)
/* B78F14 80101D74 460A3100 */  add.s $f4, $f6, $f10
/* B78F18 80101D78 461A4182 */  mul.s $f6, $f8, $f26
/* B78F1C 80101D7C 46062280 */  add.s $f10, $f4, $f6
/* B78F20 80101D80 46146002 */  mul.s $f0, $f12, $f20
/* B78F24 80101D84 46005207 */  neg.s $f8, $f10
/* B78F28 80101D88 46147082 */  mul.s $f2, $f14, $f20
/* B78F2C 80101D8C E4880030 */  swc1  $f8, 0x30($a0)
/* B78F30 80101D90 C7BA007C */  lwc1  $f26, 0x7c($sp)
/* B78F34 80101D94 C7B00094 */  lwc1  $f16, 0x94($sp)
/* B78F38 80101D98 C7B80080 */  lwc1  $f24, 0x80($sp)
/* B78F3C 80101D9C C7B60084 */  lwc1  $f22, 0x84($sp)
/* B78F40 80101DA0 4610D102 */  mul.s $f4, $f26, $f16
/* B78F44 80101DA4 C7B20068 */  lwc1  $f18, 0x68($sp)
/* B78F48 80101DA8 E4800014 */  swc1  $f0, 0x14($a0)
/* B78F4C 80101DAC 4600C182 */  mul.s $f6, $f24, $f0
/* B78F50 80101DB0 44800000 */  mtc1  $zero, $f0
/* B78F54 80101DB4 E4820024 */  swc1  $f2, 0x24($a0)
/* B78F58 80101DB8 4602B202 */  mul.s $f8, $f22, $f2
/* B78F5C 80101DBC E49C0008 */  swc1  $f28, 8($a0)
/* B78F60 80101DC0 E49E0018 */  swc1  $f30, 0x18($a0)
/* B78F64 80101DC4 E4900004 */  swc1  $f16, 4($a0)
/* B78F68 80101DC8 E4920028 */  swc1  $f18, 0x28($a0)
/* B78F6C 80101DCC 46062280 */  add.s $f10, $f4, $f6
/* B78F70 80101DD0 E480000C */  swc1  $f0, 0xc($a0)
/* B78F74 80101DD4 E480001C */  swc1  $f0, 0x1c($a0)
/* B78F78 80101DD8 E480002C */  swc1  $f0, 0x2c($a0)
/* B78F7C 80101DDC 46085100 */  add.s $f4, $f10, $f8
/* B78F80 80101DE0 461CD282 */  mul.s $f10, $f26, $f28
/* B78F84 80101DE4 00000000 */  nop   
/* B78F88 80101DE8 461EC202 */  mul.s $f8, $f24, $f30
/* B78F8C 80101DEC 46002187 */  neg.s $f6, $f4
/* B78F90 80101DF0 E4860034 */  swc1  $f6, 0x34($a0)
/* B78F94 80101DF4 4612B182 */  mul.s $f6, $f22, $f18
/* B78F98 80101DF8 46085100 */  add.s $f4, $f10, $f8
/* B78F9C 80101DFC 46062280 */  add.s $f10, $f4, $f6
/* B78FA0 80101E00 44812000 */  mtc1  $at, $f4
/* B78FA4 80101E04 46005207 */  neg.s $f8, $f10
/* B78FA8 80101E08 E484003C */  swc1  $f4, 0x3c($a0)
/* B78FAC 80101E0C E4880038 */  swc1  $f8, 0x38($a0)
/* B78FB0 80101E10 8FBF0044 */  lw    $ra, 0x44($sp)
/* B78FB4 80101E14 D7BE0038 */  ldc1  $f30, 0x38($sp)
/* B78FB8 80101E18 D7BC0030 */  ldc1  $f28, 0x30($sp)
/* B78FBC 80101E1C D7BA0028 */  ldc1  $f26, 0x28($sp)
/* B78FC0 80101E20 D7B80020 */  ldc1  $f24, 0x20($sp)
/* B78FC4 80101E24 D7B60018 */  ldc1  $f22, 0x18($sp)
/* B78FC8 80101E28 D7B40010 */  ldc1  $f20, 0x10($sp)
/* B78FCC 80101E2C 03E00008 */  jr    $ra
/* B78FD0 80101E30 27BD0078 */   addiu $sp, $sp, 0x78

glabel func_80101E34
/* B78FD4 80101E34 27BDFF90 */  addiu $sp, $sp, -0x70
/* B78FD8 80101E38 44856000 */  mtc1  $a1, $f12
/* B78FDC 80101E3C 44867000 */  mtc1  $a2, $f14
/* B78FE0 80101E40 C7A40080 */  lwc1  $f4, 0x80($sp)
/* B78FE4 80101E44 C7A60084 */  lwc1  $f6, 0x84($sp)
/* B78FE8 80101E48 C7A80088 */  lwc1  $f8, 0x88($sp)
/* B78FEC 80101E4C C7AA008C */  lwc1  $f10, 0x8c($sp)
/* B78FF0 80101E50 C7B00090 */  lwc1  $f16, 0x90($sp)
/* B78FF4 80101E54 C7B20094 */  lwc1  $f18, 0x94($sp)
/* B78FF8 80101E58 AFBF002C */  sw    $ra, 0x2c($sp)
/* B78FFC 80101E5C AFA40070 */  sw    $a0, 0x70($sp)
/* B79000 80101E60 44056000 */  mfc1  $a1, $f12
/* B79004 80101E64 44067000 */  mfc1  $a2, $f14
/* B79008 80101E68 AFA7007C */  sw    $a3, 0x7c($sp)
/* B7900C 80101E6C 27A40030 */  addiu $a0, $sp, 0x30
/* B79010 80101E70 E7A40010 */  swc1  $f4, 0x10($sp)
/* B79014 80101E74 E7A60014 */  swc1  $f6, 0x14($sp)
/* B79018 80101E78 E7A80018 */  swc1  $f8, 0x18($sp)
/* B7901C 80101E7C E7AA001C */  swc1  $f10, 0x1c($sp)
/* B79020 80101E80 E7B00020 */  swc1  $f16, 0x20($sp)
/* B79024 80101E84 0C0406E4 */  jal   func_80101B90
/* B79028 80101E88 E7B20024 */   swc1  $f18, 0x24($sp)
/* B7902C 80101E8C 27A40030 */  addiu $a0, $sp, 0x30
/* B79030 80101E90 0C041938 */  jal   func_801064E0
/* B79034 80101E94 8FA50070 */   lw    $a1, 0x70($sp)
/* B79038 80101E98 8FBF002C */  lw    $ra, 0x2c($sp)
/* B7903C 80101E9C 27BD0070 */  addiu $sp, $sp, 0x70
/* B79040 80101EA0 03E00008 */  jr    $ra
/* B79044 80101EA4 00000000 */   nop   
