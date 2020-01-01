.late_rodata
glabel jtbl_80134EC4
    .word L8001DA18
    .word L8001DA18
    .word L8001DA18
    .word L8001DAA0
    .word L8001DB74
    .word L8001DB1C
    .word L8001DA6C
    .word L8001DAE8
    .word L8001DB4C
    .word L8001DB4C
    .word L8001DB4C
    .word L8001DB74
    .word L8001DB74
    .word L8001DB74
    .word L8001DB9C
    .word L8001DB74
    .word L8001DB74
    .word L8001DA40
    .word L8001DC14
    .word L8001DBC4
    .word L8001DBEC
    .word L8001DC44
    .word L8001DCA0
    .word L8001DCFC
    .word L8001DCFC
    .word L8001DB74

glabel D_80134F2C
    .float 0.015

glabel D_80134F30
    .float 750

glabel D_80134F34
    .float 0.03

glabel D_80134F38
    .float 650

glabel D_80134F3C
    .float 0.02

glabel D_80134F40
    .float 65535

glabel D_80134F44
    .float 0.02

glabel D_80134F48
    .float 0.02

glabel D_80134F4C
    .float 0.02

glabel D_80134F50
    .float 0.035

glabel D_80134F54
    .float 0.03

glabel D_80134F58
    .float 0.044999998

glabel D_80134F5C
    .float 0.044999998

glabel D_80134F60
    .float 750

glabel D_80134F64
    .float 0.03

glabel D_80134F68
    .float 750

glabel D_80134F6C
    .float 0.01

glabel D_80134F70
    .float 0.6

glabel D_80134F74
    .float 0.6

glabel D_80134F78
    .float 0.6

glabel jtbl_80134F7C
    .word L8001DE00
    .word L8001DE14
    .word L8001DE28
    .word L8001DE64
    .word L8001DE8C
    .word L8001DEA0
    .word L8001DF3C
    .word L8001DF3C
    .word L8001DEB4
    .word L8001DEC8
    .word L8001DEDC
    .word L8001DE8C
    .word L8001DF28
    .word L8001DF34
    .word L8001DEF0
    .word L8001DEFC
    .word L8001DF1C
    .word L8001DF08
    .word L8001DE78
    .word L8001DE50
    .word L8001DE3C
    .word L8001DF3C
    .word L8001DF3C
    .word L8001DF3C
    .word L8001DF3C
    .word L8001DF3C

.text
glabel En_Item00_Init
/* A94AD8 8001D938 3C014475 */  li    $at, 0x44750000 # 0.000000
/* A94ADC 8001D93C 44811000 */  mtc1  $at, $f2
/* A94AE0 8001D940 27BDFFC0 */  addiu $sp, $sp, -0x40
/* A94AE4 8001D944 3C0140C0 */  li    $at, 0x40C00000 # 0.000000
/* A94AE8 8001D948 44812000 */  mtc1  $at, $f4
/* A94AEC 8001D94C AFBF001C */  sw    $ra, 0x1c($sp)
/* A94AF0 8001D950 AFB00018 */  sw    $s0, 0x18($sp)
/* A94AF4 8001D954 AFA50044 */  sw    $a1, 0x44($sp)
/* A94AF8 8001D958 AFA0002C */  sw    $zero, 0x2c($sp)
/* A94AFC 8001D95C E7A40030 */  swc1  $f4, 0x30($sp)
/* A94B00 8001D960 8482001C */  lh    $v0, 0x1c($a0)
/* A94B04 8001D964 00808025 */  move  $s0, $a0
/* A94B08 8001D968 304E8000 */  andi  $t6, $v0, 0x8000
/* A94B0C 8001D96C A7AE002A */  sh    $t6, 0x2a($sp)
/* A94B10 8001D970 304F3F00 */  andi  $t7, $v0, 0x3f00
/* A94B14 8001D974 000FC203 */  sra   $t8, $t7, 8
/* A94B18 8001D978 305900FF */  andi  $t9, $v0, 0xff
/* A94B1C 8001D97C A4980150 */  sh    $t8, 0x150($a0)
/* A94B20 8001D980 A499001C */  sh    $t9, 0x1c($a0)
/* A94B24 8001D984 86050150 */  lh    $a1, 0x150($s0)
/* A94B28 8001D988 8FA40044 */  lw    $a0, 0x44($sp)
/* A94B2C 8001D98C 0C00B35B */  jal   Flags_GetCollectible
/* A94B30 8001D990 E7A20034 */   swc1  $f2, 0x34($sp)
/* A94B34 8001D994 10400005 */  beqz  $v0, .L8001D9AC
/* A94B38 8001D998 C7A20034 */   lwc1  $f2, 0x34($sp)
/* A94B3C 8001D99C 0C00B55C */  jal   Actor_Kill
/* A94B40 8001D9A0 02002025 */   move  $a0, $s0
/* A94B44 8001D9A4 1000017A */  b     .L8001DF90
/* A94B48 8001D9A8 8FBF001C */   lw    $ra, 0x1c($sp)
.L8001D9AC:
/* A94B4C 8001D9AC 3C058011 */  lui   $a1, %hi(D_8011550C) # $a1, 0x8011
/* A94B50 8001D9B0 24A5550C */  addiu $a1, %lo(D_8011550C) # addiu $a1, $a1, 0x550c
/* A94B54 8001D9B4 02002025 */  move  $a0, $s0
/* A94B58 8001D9B8 0C01E037 */  jal   Actor_ProcessInitChain
/* A94B5C 8001D9BC E7A20034 */   swc1  $f2, 0x34($sp)
/* A94B60 8001D9C0 26050160 */  addiu $a1, $s0, 0x160
/* A94B64 8001D9C4 AFA50020 */  sw    $a1, 0x20($sp)
/* A94B68 8001D9C8 0C0170D9 */  jal   ActorCollider_AllocCylinder
/* A94B6C 8001D9CC 8FA40044 */   lw    $a0, 0x44($sp)
/* A94B70 8001D9D0 3C078011 */  lui   $a3, %hi(D_801154E0) # $a3, 0x8011
/* A94B74 8001D9D4 8FA50020 */  lw    $a1, 0x20($sp)
/* A94B78 8001D9D8 24E754E0 */  addiu $a3, %lo(D_801154E0) # addiu $a3, $a3, 0x54e0
/* A94B7C 8001D9DC 8FA40044 */  lw    $a0, 0x44($sp)
/* A94B80 8001D9E0 0C01712B */  jal   ActorCollider_InitCylinder
/* A94B84 8001D9E4 02003025 */   move  $a2, $s0
/* A94B88 8001D9E8 9609001C */  lhu   $t1, 0x1c($s0)
/* A94B8C 8001D9EC C7A20034 */  lwc1  $f2, 0x34($sp)
/* A94B90 8001D9F0 24080001 */  li    $t0, 1
/* A94B94 8001D9F4 2D21001A */  sltiu $at, $t1, 0x1a
/* A94B98 8001D9F8 102000D6 */  beqz  $at, .L8001DD54
/* A94B9C 8001D9FC A6080158 */   sh    $t0, 0x158($s0)
/* A94BA0 8001DA00 00094880 */  sll   $t1, $t1, 2
/* A94BA4 8001DA04 3C018013 */  lui   $at, %hi(jtbl_80134EC4)
/* A94BA8 8001DA08 00290821 */  addu  $at, $at, $t1
/* A94BAC 8001DA0C 8C294EC4 */  lw    $t1, %lo(jtbl_80134EC4)($at)
/* A94BB0 8001DA10 01200008 */  jr    $t1
/* A94BB4 8001DA14 00000000 */   nop  
glabel L8001DA18 
/* A94BB8 8001DA18 3C053C75 */  lui   $a1, (0x3C75C28F >> 16) # lui $a1, 0x3c75
/* A94BBC 8001DA1C 34A5C28F */  ori   $a1, (0x3C75C28F & 0xFFFF) # ori $a1, $a1, 0xc28f
/* A94BC0 8001DA20 0C00B58B */  jal   Actor_SetScale
/* A94BC4 8001DA24 02002025 */   move  $a0, $s0
/* A94BC8 8001DA28 3C018013 */  lui   $at, %hi(D_80134F2C)
/* A94BCC 8001DA2C C4264F2C */  lwc1  $f6, %lo(D_80134F2C)($at)
/* A94BD0 8001DA30 3C018013 */  lui   $at, %hi(D_80134F30)
/* A94BD4 8001DA34 E606015C */  swc1  $f6, 0x15c($s0)
/* A94BD8 8001DA38 100000C6 */  b     .L8001DD54
/* A94BDC 8001DA3C C4224F30 */   lwc1  $f2, %lo(D_80134F30)($at)
glabel L8001DA40
/* A94BE0 8001DA40 3C053CF5 */  lui   $a1, (0x3CF5C28F >> 16) # lui $a1, 0x3cf5
/* A94BE4 8001DA44 A6000158 */  sh    $zero, 0x158($s0)
/* A94BE8 8001DA48 34A5C28F */  ori   $a1, (0x3CF5C28F & 0xFFFF) # ori $a1, $a1, 0xc28f
/* A94BEC 8001DA4C 0C00B58B */  jal   Actor_SetScale
/* A94BF0 8001DA50 02002025 */   move  $a0, $s0
/* A94BF4 8001DA54 3C018013 */  lui   $at, %hi(D_80134F34)
/* A94BF8 8001DA58 C4284F34 */  lwc1  $f8, %lo(D_80134F34)($at)
/* A94BFC 8001DA5C 3C0143AF */  li    $at, 0x43AF0000 # 0.000000
/* A94C00 8001DA60 44811000 */  mtc1  $at, $f2
/* A94C04 8001DA64 100000BB */  b     .L8001DD54
/* A94C08 8001DA68 E608015C */   swc1  $f8, 0x15c($s0)
glabel L8001DA6C
/* A94C0C 8001DA6C A6000158 */  sh    $zero, 0x158($s0)
/* A94C10 8001DA70 3C018013 */  lui   $at, %hi(D_80134F38)
/* A94C14 8001DA74 C4224F38 */  lwc1  $f2, %lo(D_80134F38)($at)
/* A94C18 8001DA78 3C053CA3 */  lui   $a1, (0x3CA3D70A >> 16) # lui $a1, 0x3ca3
/* A94C1C 8001DA7C 34A5D70A */  ori   $a1, (0x3CA3D70A & 0xFFFF) # ori $a1, $a1, 0xd70a
/* A94C20 8001DA80 02002025 */  move  $a0, $s0
/* A94C24 8001DA84 0C00B58B */  jal   Actor_SetScale
/* A94C28 8001DA88 E7A20034 */   swc1  $f2, 0x34($sp)
/* A94C2C 8001DA8C 3C018013 */  lui   $at, %hi(D_80134F3C)
/* A94C30 8001DA90 C42A4F3C */  lwc1  $f10, %lo(D_80134F3C)($at)
/* A94C34 8001DA94 C7A20034 */  lwc1  $f2, 0x34($sp)
/* A94C38 8001DA98 100000AE */  b     .L8001DD54
/* A94C3C 8001DA9C E60A015C */   swc1  $f10, 0x15c($s0)
glabel L8001DAA0
/* A94C40 8001DAA0 3C018013 */  lui   $at, %hi(D_80134F40)
/* A94C44 8001DAA4 0C00CFC8 */  jal   Math_Rand_CenteredFloat
/* A94C48 8001DAA8 C42C4F40 */   lwc1  $f12, %lo(D_80134F40)($at)
/* A94C4C 8001DAAC 4600040D */  trunc.w.s $f16, $f0
/* A94C50 8001DAB0 3C0143D7 */  li    $at, 0x43D70000 # 0.000000
/* A94C54 8001DAB4 44811000 */  mtc1  $at, $f2
/* A94C58 8001DAB8 3C053CA3 */  lui   $a1, (0x3CA3D70A >> 16) # lui $a1, 0x3ca3
/* A94C5C 8001DABC 440B8000 */  mfc1  $t3, $f16
/* A94C60 8001DAC0 34A5D70A */  ori   $a1, (0x3CA3D70A & 0xFFFF) # ori $a1, $a1, 0xd70a
/* A94C64 8001DAC4 02002025 */  move  $a0, $s0
/* A94C68 8001DAC8 A60B0018 */  sh    $t3, 0x18($s0)
/* A94C6C 8001DACC 0C00B58B */  jal   Actor_SetScale
/* A94C70 8001DAD0 E7A20034 */   swc1  $f2, 0x34($sp)
/* A94C74 8001DAD4 3C018013 */  lui   $at, %hi(D_80134F44)
/* A94C78 8001DAD8 C4324F44 */  lwc1  $f18, %lo(D_80134F44)($at)
/* A94C7C 8001DADC C7A20034 */  lwc1  $f2, 0x34($sp)
/* A94C80 8001DAE0 1000009C */  b     .L8001DD54
/* A94C84 8001DAE4 E612015C */   swc1  $f18, 0x15c($s0)
glabel L8001DAE8
/* A94C88 8001DAE8 3C0143D7 */  li    $at, 0x43D70000 # 0.000000
/* A94C8C 8001DAEC 44811000 */  mtc1  $at, $f2
/* A94C90 8001DAF0 A6000158 */  sh    $zero, 0x158($s0)
/* A94C94 8001DAF4 3C053CA3 */  lui   $a1, (0x3CA3D70A >> 16) # lui $a1, 0x3ca3
/* A94C98 8001DAF8 34A5D70A */  ori   $a1, (0x3CA3D70A & 0xFFFF) # ori $a1, $a1, 0xd70a
/* A94C9C 8001DAFC 02002025 */  move  $a0, $s0
/* A94CA0 8001DB00 0C00B58B */  jal   Actor_SetScale
/* A94CA4 8001DB04 E7A20034 */   swc1  $f2, 0x34($sp)
/* A94CA8 8001DB08 3C018013 */  lui   $at, %hi(D_80134F48)
/* A94CAC 8001DB0C C4244F48 */  lwc1  $f4, %lo(D_80134F48)($at)
/* A94CB0 8001DB10 C7A20034 */  lwc1  $f2, 0x34($sp)
/* A94CB4 8001DB14 1000008F */  b     .L8001DD54
/* A94CB8 8001DB18 E604015C */   swc1  $f4, 0x15c($s0)
glabel L8001DB1C
/* A94CBC 8001DB1C 3C0143C8 */  li    $at, 0x43C80000 # 0.000000
/* A94CC0 8001DB20 44811000 */  mtc1  $at, $f2
/* A94CC4 8001DB24 3C053CA3 */  lui   $a1, (0x3CA3D70A >> 16) # lui $a1, 0x3ca3
/* A94CC8 8001DB28 34A5D70A */  ori   $a1, (0x3CA3D70A & 0xFFFF) # ori $a1, $a1, 0xd70a
/* A94CCC 8001DB2C 02002025 */  move  $a0, $s0
/* A94CD0 8001DB30 0C00B58B */  jal   Actor_SetScale
/* A94CD4 8001DB34 E7A20034 */   swc1  $f2, 0x34($sp)
/* A94CD8 8001DB38 3C018013 */  lui   $at, %hi(D_80134F4C)
/* A94CDC 8001DB3C C4264F4C */  lwc1  $f6, %lo(D_80134F4C)($at)
/* A94CE0 8001DB40 C7A20034 */  lwc1  $f2, 0x34($sp)
/* A94CE4 8001DB44 10000083 */  b     .L8001DD54
/* A94CE8 8001DB48 E606015C */   swc1  $f6, 0x15c($s0)
glabel L8001DB4C
/* A94CEC 8001DB4C 3C053D0F */  lui   $a1, (0x3D0F5C29 >> 16) # lui $a1, 0x3d0f
/* A94CF0 8001DB50 34A55C29 */  ori   $a1, (0x3D0F5C29 & 0xFFFF) # ori $a1, $a1, 0x5c29
/* A94CF4 8001DB54 0C00B58B */  jal   Actor_SetScale
/* A94CF8 8001DB58 02002025 */   move  $a0, $s0
/* A94CFC 8001DB5C 3C018013 */  lui   $at, %hi(D_80134F50)
/* A94D00 8001DB60 C4284F50 */  lwc1  $f8, %lo(D_80134F50)($at)
/* A94D04 8001DB64 3C01437A */  li    $at, 0x437A0000 # 0.000000
/* A94D08 8001DB68 44811000 */  mtc1  $at, $f2
/* A94D0C 8001DB6C 10000079 */  b     .L8001DD54
/* A94D10 8001DB70 E608015C */   swc1  $f8, 0x15c($s0)
glabel L8001DB74
/* A94D14 8001DB74 3C053CF5 */  lui   $a1, (0x3CF5C28F >> 16) # lui $a1, 0x3cf5
/* A94D18 8001DB78 34A5C28F */  ori   $a1, (0x3CF5C28F & 0xFFFF) # ori $a1, $a1, 0xc28f
/* A94D1C 8001DB7C 0C00B58B */  jal   Actor_SetScale
/* A94D20 8001DB80 02002025 */   move  $a0, $s0
/* A94D24 8001DB84 3C018013 */  lui   $at, %hi(D_80134F54)
/* A94D28 8001DB88 C42A4F54 */  lwc1  $f10, %lo(D_80134F54)($at)
/* A94D2C 8001DB8C 3C0143A0 */  li    $at, 0x43A00000 # 0.000000
/* A94D30 8001DB90 44811000 */  mtc1  $at, $f2
/* A94D34 8001DB94 1000006F */  b     .L8001DD54
/* A94D38 8001DB98 E60A015C */   swc1  $f10, 0x15c($s0)
glabel L8001DB9C
/* A94D3C 8001DB9C 3C053D38 */  lui   $a1, (0x3D3851EB >> 16) # lui $a1, 0x3d38
/* A94D40 8001DBA0 34A551EB */  ori   $a1, (0x3D3851EB & 0xFFFF) # ori $a1, $a1, 0x51eb
/* A94D44 8001DBA4 0C00B58B */  jal   Actor_SetScale
/* A94D48 8001DBA8 02002025 */   move  $a0, $s0
/* A94D4C 8001DBAC 3C018013 */  lui   $at, %hi(D_80134F58)
/* A94D50 8001DBB0 C4304F58 */  lwc1  $f16, %lo(D_80134F58)($at)
/* A94D54 8001DBB4 3C0143A0 */  li    $at, 0x43A00000 # 0.000000
/* A94D58 8001DBB8 44811000 */  mtc1  $at, $f2
/* A94D5C 8001DBBC 10000065 */  b     .L8001DD54
/* A94D60 8001DBC0 E610015C */   swc1  $f16, 0x15c($s0)
glabel L8001DBC4
/* A94D64 8001DBC4 3C053D38 */  lui   $a1, (0x3D3851EB >> 16) # lui $a1, 0x3d38
/* A94D68 8001DBC8 34A551EB */  ori   $a1, (0x3D3851EB & 0xFFFF) # ori $a1, $a1, 0x51eb
/* A94D6C 8001DBCC 0C00B58B */  jal   Actor_SetScale
/* A94D70 8001DBD0 02002025 */   move  $a0, $s0
/* A94D74 8001DBD4 3C018013 */  lui   $at, %hi(D_80134F5C)
/* A94D78 8001DBD8 C4324F5C */  lwc1  $f18, %lo(D_80134F5C)($at)
/* A94D7C 8001DBDC 3C018013 */  lui   $at, %hi(D_80134F60)
/* A94D80 8001DBE0 E612015C */  swc1  $f18, 0x15c($s0)
/* A94D84 8001DBE4 1000005B */  b     .L8001DD54
/* A94D88 8001DBE8 C4224F60 */   lwc1  $f2, %lo(D_80134F60)($at)
glabel L8001DBEC
/* A94D8C 8001DBEC 3C053CF5 */  lui   $a1, (0x3CF5C28F >> 16) # lui $a1, 0x3cf5
/* A94D90 8001DBF0 34A5C28F */  ori   $a1, (0x3CF5C28F & 0xFFFF) # ori $a1, $a1, 0xc28f
/* A94D94 8001DBF4 0C00B58B */  jal   Actor_SetScale
/* A94D98 8001DBF8 02002025 */   move  $a0, $s0
/* A94D9C 8001DBFC 3C018013 */  lui   $at, %hi(D_80134F64)
/* A94DA0 8001DC00 C4244F64 */  lwc1  $f4, %lo(D_80134F64)($at)
/* A94DA4 8001DC04 3C018013 */  lui   $at, %hi(D_80134F68)
/* A94DA8 8001DC08 E604015C */  swc1  $f4, 0x15c($s0)
/* A94DAC 8001DC0C 10000051 */  b     .L8001DD54
/* A94DB0 8001DC10 C4224F68 */   lwc1  $f2, %lo(D_80134F68)($at)
glabel L8001DC14
/* A94DB4 8001DC14 3C0143FA */  li    $at, 0x43FA0000 # 0.000000
/* A94DB8 8001DC18 44811000 */  mtc1  $at, $f2
/* A94DBC 8001DC1C 3C053C23 */  lui   $a1, (0x3C23D70A >> 16) # lui $a1, 0x3c23
/* A94DC0 8001DC20 34A5D70A */  ori   $a1, (0x3C23D70A & 0xFFFF) # ori $a1, $a1, 0xd70a
/* A94DC4 8001DC24 02002025 */  move  $a0, $s0
/* A94DC8 8001DC28 0C00B58B */  jal   Actor_SetScale
/* A94DCC 8001DC2C E7A20034 */   swc1  $f2, 0x34($sp)
/* A94DD0 8001DC30 3C018013 */  lui   $at, %hi(D_80134F6C)
/* A94DD4 8001DC34 C4264F6C */  lwc1  $f6, %lo(D_80134F6C)($at)
/* A94DD8 8001DC38 C7A20034 */  lwc1  $f2, 0x34($sp)
/* A94DDC 8001DC3C 10000045 */  b     .L8001DD54
/* A94DE0 8001DC40 E606015C */   swc1  $f6, 0x15c($s0)
glabel L8001DC44
/* A94DE4 8001DC44 8FA40044 */  lw    $a0, 0x44($sp)
/* A94DE8 8001DC48 3C010001 */  lui   $at, (0x000117A4 >> 16) # lui $at, 1
/* A94DEC 8001DC4C 342117A4 */  ori   $at, (0x000117A4 & 0xFFFF) # ori $at, $at, 0x17a4
/* A94DF0 8001DC50 240500CB */  li    $a1, 203
/* A94DF4 8001DC54 0C02604B */  jal   Object_GetIndex
/* A94DF8 8001DC58 00812021 */   addu  $a0, $a0, $at
/* A94DFC 8001DC5C A202001E */  sb    $v0, 0x1e($s0)
/* A94E00 8001DC60 8FA40044 */  lw    $a0, 0x44($sp)
/* A94E04 8001DC64 0C00B591 */  jal   Actor_SetObjectDependency
/* A94E08 8001DC68 02002825 */   move  $a1, $s0
/* A94E0C 8001DC6C 02002025 */  move  $a0, $s0
/* A94E10 8001DC70 0C00B58B */  jal   Actor_SetScale
/* A94E14 8001DC74 3C053F00 */   lui   $a1, 0x3f00
/* A94E18 8001DC78 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* A94E1C 8001DC7C 44814000 */  mtc1  $at, $f8
/* A94E20 8001DC80 3C018013 */  lui   $at, %hi(D_80134F70)
/* A94E24 8001DC84 44801000 */  mtc1  $zero, $f2
/* A94E28 8001DC88 E608015C */  swc1  $f8, 0x15c($s0)
/* A94E2C 8001DC8C C42A4F70 */  lwc1  $f10, %lo(D_80134F70)($at)
/* A94E30 8001DC90 240C4000 */  li    $t4, 16384
/* A94E34 8001DC94 E7AA0030 */  swc1  $f10, 0x30($sp)
/* A94E38 8001DC98 1000002E */  b     .L8001DD54
/* A94E3C 8001DC9C A60C0030 */   sh    $t4, 0x30($s0)
glabel L8001DCA0
/* A94E40 8001DCA0 8FA40044 */  lw    $a0, 0x44($sp)
/* A94E44 8001DCA4 3C010001 */  lui   $at, (0x000117A4 >> 16) # lui $at, 1
/* A94E48 8001DCA8 342117A4 */  ori   $at, (0x000117A4 & 0xFFFF) # ori $at, $at, 0x17a4
/* A94E4C 8001DCAC 240500DC */  li    $a1, 220
/* A94E50 8001DCB0 0C02604B */  jal   Object_GetIndex
/* A94E54 8001DCB4 00812021 */   addu  $a0, $a0, $at
/* A94E58 8001DCB8 A202001E */  sb    $v0, 0x1e($s0)
/* A94E5C 8001DCBC 8FA40044 */  lw    $a0, 0x44($sp)
/* A94E60 8001DCC0 0C00B591 */  jal   Actor_SetObjectDependency
/* A94E64 8001DCC4 02002825 */   move  $a1, $s0
/* A94E68 8001DCC8 02002025 */  move  $a0, $s0
/* A94E6C 8001DCCC 0C00B58B */  jal   Actor_SetScale
/* A94E70 8001DCD0 3C053F00 */   lui   $a1, 0x3f00
/* A94E74 8001DCD4 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* A94E78 8001DCD8 44818000 */  mtc1  $at, $f16
/* A94E7C 8001DCDC 3C018013 */  lui   $at, %hi(D_80134F74)
/* A94E80 8001DCE0 44801000 */  mtc1  $zero, $f2
/* A94E84 8001DCE4 E610015C */  swc1  $f16, 0x15c($s0)
/* A94E88 8001DCE8 C4324F74 */  lwc1  $f18, %lo(D_80134F74)($at)
/* A94E8C 8001DCEC 240D4000 */  li    $t5, 16384
/* A94E90 8001DCF0 E7B20030 */  swc1  $f18, 0x30($sp)
/* A94E94 8001DCF4 10000017 */  b     .L8001DD54
/* A94E98 8001DCF8 A60D0030 */   sh    $t5, 0x30($s0)
glabel L8001DCFC
/* A94E9C 8001DCFC 8FA40044 */  lw    $a0, 0x44($sp)
/* A94EA0 8001DD00 3C010001 */  lui   $at, (0x000117A4 >> 16) # lui $at, 1
/* A94EA4 8001DD04 342117A4 */  ori   $at, (0x000117A4 & 0xFFFF) # ori $at, $at, 0x17a4
/* A94EA8 8001DD08 240500F2 */  li    $a1, 242
/* A94EAC 8001DD0C 0C02604B */  jal   Object_GetIndex
/* A94EB0 8001DD10 00812021 */   addu  $a0, $a0, $at
/* A94EB4 8001DD14 A202001E */  sb    $v0, 0x1e($s0)
/* A94EB8 8001DD18 8FA40044 */  lw    $a0, 0x44($sp)
/* A94EBC 8001DD1C 0C00B591 */  jal   Actor_SetObjectDependency
/* A94EC0 8001DD20 02002825 */   move  $a1, $s0
/* A94EC4 8001DD24 02002025 */  move  $a0, $s0
/* A94EC8 8001DD28 0C00B58B */  jal   Actor_SetScale
/* A94ECC 8001DD2C 3C053F00 */   lui   $a1, 0x3f00
/* A94ED0 8001DD30 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* A94ED4 8001DD34 44812000 */  mtc1  $at, $f4
/* A94ED8 8001DD38 3C018013 */  lui   $at, %hi(D_80134F78)
/* A94EDC 8001DD3C 240E4000 */  li    $t6, 16384
/* A94EE0 8001DD40 E604015C */  swc1  $f4, 0x15c($s0)
/* A94EE4 8001DD44 C4264F78 */  lwc1  $f6, %lo(D_80134F78)($at)
/* A94EE8 8001DD48 44801000 */  mtc1  $zero, $f2
/* A94EEC 8001DD4C E7A60030 */  swc1  $f6, 0x30($sp)
/* A94EF0 8001DD50 A60E0030 */  sh    $t6, 0x30($s0)
.L8001DD54:
/* A94EF4 8001DD54 A6000156 */  sh    $zero, 0x156($s0)
/* A94EF8 8001DD58 44051000 */  mfc1  $a1, $f2
/* A94EFC 8001DD5C 3C068003 */  lui   $a2, %hi(ActorShadow_DrawFunc_Circle)
/* A94F00 8001DD60 24C6B5EC */  addiu $a2, %lo(ActorShadow_DrawFunc_Circle) # addiu $a2, $a2, -0x4a14
/* A94F04 8001DD64 8FA70030 */  lw    $a3, 0x30($sp)
/* A94F08 8001DD68 0C00AC78 */  jal   Actor_InitShadow
/* A94F0C 8001DD6C 260400B4 */   addiu $a0, $s0, 0xb4
/* A94F10 8001DD70 8E190024 */  lw    $t9, 0x24($s0)
/* A94F14 8001DD74 8E180028 */  lw    $t8, 0x28($s0)
/* A94F18 8001DD78 240F00B4 */  li    $t7, 180
/* A94F1C 8001DD7C AE190038 */  sw    $t9, 0x38($s0)
/* A94F20 8001DD80 8E19002C */  lw    $t9, 0x2c($s0)
/* A94F24 8001DD84 A20F00C8 */  sb    $t7, 0xc8($s0)
/* A94F28 8001DD88 A6000152 */  sh    $zero, 0x152($s0)
/* A94F2C 8001DD8C AE18003C */  sw    $t8, 0x3c($s0)
/* A94F30 8001DD90 AE190040 */  sw    $t9, 0x40($s0)
/* A94F34 8001DD94 87A8002A */  lh    $t0, 0x2a($sp)
/* A94F38 8001DD98 240A000F */  li    $t2, 15
/* A94F3C 8001DD9C 240B0023 */  li    $t3, 35
/* A94F40 8001DDA0 55000009 */  bnezl $t0, .L8001DDC8
/* A94F44 8001DDA4 44800000 */   mtc1  $zero, $f0
/* A94F48 8001DDA8 3C058002 */  lui   $a1, %hi(func_8001DFC8)
/* A94F4C 8001DDAC 24A5DFC8 */  addiu $a1, %lo(func_8001DFC8) # addiu $a1, $a1, -0x2038
/* A94F50 8001DDB0 0C00764C */  jal   En_Item00_SetNewUpdate
/* A94F54 8001DDB4 02002025 */   move  $a0, $s0
/* A94F58 8001DDB8 2409FFFF */  li    $t1, -1
/* A94F5C 8001DDBC 10000073 */  b     .L8001DF8C
/* A94F60 8001DDC0 A609015A */   sh    $t1, 0x15a($s0)
/* A94F64 8001DDC4 44800000 */  mtc1  $zero, $f0
.L8001DDC8:
/* A94F68 8001DDC8 960C001C */  lhu   $t4, 0x1c($s0)
/* A94F6C 8001DDCC A60A015A */  sh    $t2, 0x15a($s0)
/* A94F70 8001DDD0 A60B0154 */  sh    $t3, 0x154($s0)
/* A94F74 8001DDD4 2D81001A */  sltiu $at, $t4, 0x1a
/* A94F78 8001DDD8 E6000068 */  swc1  $f0, 0x68($s0)
/* A94F7C 8001DDDC E6000060 */  swc1  $f0, 0x60($s0)
/* A94F80 8001DDE0 10200056 */  beqz  $at, .L8001DF3C
/* A94F84 8001DDE4 E600006C */   swc1  $f0, 0x6c($s0)
/* A94F88 8001DDE8 000C6080 */  sll   $t4, $t4, 2
/* A94F8C 8001DDEC 3C018013 */  lui   $at, %hi(jtbl_80134F7C)
/* A94F90 8001DDF0 002C0821 */  addu  $at, $at, $t4
/* A94F94 8001DDF4 8C2C4F7C */  lw    $t4, %lo(jtbl_80134F7C)($at)
/* A94F98 8001DDF8 01800008 */  jr    $t4
/* A94F9C 8001DDFC 00000000 */   nop   
glabel L8001DE00
/* A94FA0 8001DE00 8FA40044 */  lw    $a0, 0x44($sp)
/* A94FA4 8001DE04 0C021344 */  jal   func_80084D10
/* A94FA8 8001DE08 24050084 */   li    $a1, 132
/* A94FAC 8001DE0C 1000004C */  b     .L8001DF40
/* A94FB0 8001DE10 8FA8002C */   lw    $t0, 0x2c($sp)
glabel L8001DE14
/* A94FB4 8001DE14 8FA40044 */  lw    $a0, 0x44($sp)
/* A94FB8 8001DE18 0C021344 */  jal   func_80084D10
/* A94FBC 8001DE1C 24050085 */   li    $a1, 133
/* A94FC0 8001DE20 10000047 */  b     .L8001DF40
/* A94FC4 8001DE24 8FA8002C */   lw    $t0, 0x2c($sp)
glabel L8001DE28
/* A94FC8 8001DE28 8FA40044 */  lw    $a0, 0x44($sp)
/* A94FCC 8001DE2C 0C021344 */  jal   func_80084D10
/* A94FD0 8001DE30 24050086 */   li    $a1, 134
/* A94FD4 8001DE34 10000042 */  b     .L8001DF40
/* A94FD8 8001DE38 8FA8002C */   lw    $t0, 0x2c($sp)
glabel L8001DE3C
/* A94FDC 8001DE3C 8FA40044 */  lw    $a0, 0x44($sp)
/* A94FE0 8001DE40 0C021344 */  jal   func_80084D10
/* A94FE4 8001DE44 24050087 */   li    $a1, 135
/* A94FE8 8001DE48 1000003D */  b     .L8001DF40
/* A94FEC 8001DE4C 8FA8002C */   lw    $t0, 0x2c($sp)
glabel L8001DE50
/* A94FF0 8001DE50 8FA40044 */  lw    $a0, 0x44($sp)
/* A94FF4 8001DE54 0C021344 */  jal   func_80084D10
/* A94FF8 8001DE58 24050088 */   li    $a1, 136
/* A94FFC 8001DE5C 10000038 */  b     .L8001DF40
/* A95000 8001DE60 8FA8002C */   lw    $t0, 0x2c($sp)
glabel L8001DE64
/* A95004 8001DE64 8FA40044 */  lw    $a0, 0x44($sp)
/* A95008 8001DE68 0C021344 */  jal   func_80084D10
/* A9500C 8001DE6C 24050083 */   li    $a1, 131
/* A95010 8001DE70 10000033 */  b     .L8001DF40
/* A95014 8001DE74 8FA8002C */   lw    $t0, 0x2c($sp)
glabel L8001DE78
/* A95018 8001DE78 8FA40044 */  lw    $a0, 0x44($sp)
/* A9501C 8001DE7C 0C021C5D */  jal   func_80087174
/* A95020 8001DE80 24050070 */   li    $a1, 112
/* A95024 8001DE84 1000002E */  b     .L8001DF40
/* A95028 8001DE88 8FA8002C */   lw    $t0, 0x2c($sp)
glabel L8001DE8C
/* A9502C 8001DE8C 8FA40044 */  lw    $a0, 0x44($sp)
/* A95030 8001DE90 0C021344 */  jal   func_80084D10
/* A95034 8001DE94 2405008E */   li    $a1, 142
/* A95038 8001DE98 10000029 */  b     .L8001DF40
/* A9503C 8001DE9C 8FA8002C */   lw    $t0, 0x2c($sp)
glabel L8001DEA0
/* A95040 8001DEA0 8FA40044 */  lw    $a0, 0x44($sp)
/* A95044 8001DEA4 0C021344 */  jal   func_80084D10
/* A95048 8001DEA8 24050003 */   li    $a1, 3
/* A9504C 8001DEAC 10000024 */  b     .L8001DF40
/* A95050 8001DEB0 8FA8002C */   lw    $t0, 0x2c($sp)
glabel L8001DEB4
/* A95054 8001DEB4 8FA40044 */  lw    $a0, 0x44($sp)
/* A95058 8001DEB8 0C021344 */  jal   func_80084D10
/* A9505C 8001DEBC 24050092 */   li    $a1, 146
/* A95060 8001DEC0 1000001F */  b     .L8001DF40
/* A95064 8001DEC4 8FA8002C */   lw    $t0, 0x2c($sp)
glabel L8001DEC8
/* A95068 8001DEC8 8FA40044 */  lw    $a0, 0x44($sp)
/* A9506C 8001DECC 0C021344 */  jal   func_80084D10
/* A95070 8001DED0 24050093 */   li    $a1, 147
/* A95074 8001DED4 1000001A */  b     .L8001DF40
/* A95078 8001DED8 8FA8002C */   lw    $t0, 0x2c($sp)
glabel L8001DEDC
/* A9507C 8001DEDC 8FA40044 */  lw    $a0, 0x44($sp)
/* A95080 8001DEE0 0C021344 */  jal   func_80084D10
/* A95084 8001DEE4 24050094 */   li    $a1, 148
/* A95088 8001DEE8 10000015 */  b     .L8001DF40
/* A9508C 8001DEEC 8FA8002C */   lw    $t0, 0x2c($sp)
glabel L8001DEF0
/* A95090 8001DEF0 240D0043 */  li    $t5, 67
/* A95094 8001DEF4 10000011 */  b     .L8001DF3C
/* A95098 8001DEF8 AFAD002C */   sw    $t5, 0x2c($sp)
glabel L8001DEFC
/* A9509C 8001DEFC 240E0044 */  li    $t6, 68
/* A950A0 8001DF00 1000000E */  b     .L8001DF3C
/* A950A4 8001DF04 AFAE002C */   sw    $t6, 0x2c($sp)
glabel L8001DF08
/* A950A8 8001DF08 8FA40044 */  lw    $a0, 0x44($sp)
/* A950AC 8001DF0C 0C021344 */  jal   func_80084D10
/* A950B0 8001DF10 24050077 */   li    $a1, 119
/* A950B4 8001DF14 1000000A */  b     .L8001DF40
/* A950B8 8001DF18 8FA8002C */   lw    $t0, 0x2c($sp)
glabel L8001DF1C
/* A950BC 8001DF1C 240F003C */  li    $t7, 60
/* A950C0 8001DF20 10000006 */  b     .L8001DF3C
/* A950C4 8001DF24 AFAF002C */   sw    $t7, 0x2c($sp)
glabel L8001DF28
/* A950C8 8001DF28 24180002 */  li    $t8, 2
/* A950CC 8001DF2C 10000003 */  b     .L8001DF3C
/* A950D0 8001DF30 AFB8002C */   sw    $t8, 0x2c($sp)
glabel L8001DF34
/* A950D4 8001DF34 24190007 */  li    $t9, 7
/* A950D8 8001DF38 AFB9002C */  sw    $t9, 0x2c($sp)
glabel L8001DF3C
.L8001DF3C:
/* A950DC 8001DF3C 8FA8002C */  lw    $t0, 0x2c($sp)
.L8001DF40:
/* A950E0 8001DF40 02002025 */  move  $a0, $s0
/* A950E4 8001DF44 11000008 */  beqz  $t0, .L8001DF68
/* A950E8 8001DF48 00000000 */   nop   
/* A950EC 8001DF4C 0C00BD04 */  jal   func_8002F410
/* A950F0 8001DF50 8FA50044 */   lw    $a1, 0x44($sp)
/* A950F4 8001DF54 14400004 */  bnez  $v0, .L8001DF68
/* A950F8 8001DF58 02002025 */   move  $a0, $s0
/* A950FC 8001DF5C 8FA50044 */  lw    $a1, 0x44($sp)
/* A95100 8001DF60 0C00BD55 */  jal   func_8002F554
/* A95104 8001DF64 8FA6002C */   lw    $a2, 0x2c($sp)
.L8001DF68:
/* A95108 8001DF68 3C058002 */  lui   $a1, %hi(func_8001E5C8) # $a1, 0x8002
/* A9510C 8001DF6C 24A5E5C8 */  addiu $a1, %lo(func_8001E5C8) # addiu $a1, $a1, -0x1a38
/* A95110 8001DF70 0C00764C */  jal   En_Item00_SetNewUpdate
/* A95114 8001DF74 02002025 */   move  $a0, $s0
/* A95118 8001DF78 8E19014C */  lw    $t9, 0x14c($s0)
/* A9511C 8001DF7C 02002025 */  move  $a0, $s0
/* A95120 8001DF80 8FA50044 */  lw    $a1, 0x44($sp)
/* A95124 8001DF84 0320F809 */  jalr  $t9
/* A95128 8001DF88 00000000 */  nop   
.L8001DF8C:
/* A9512C 8001DF8C 8FBF001C */  lw    $ra, 0x1c($sp)
.L8001DF90:
/* A95130 8001DF90 8FB00018 */  lw    $s0, 0x18($sp)
/* A95134 8001DF94 27BD0040 */  addiu $sp, $sp, 0x40
/* A95138 8001DF98 03E00008 */  jr    $ra
/* A9513C 8001DF9C 00000000 */   nop   
