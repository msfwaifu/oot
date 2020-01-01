.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_8000AFA0
    .incbin "baserom.z64", 0xBBA0, 0x1C

glabel D_8000AFBC
    .incbin "baserom.z64", 0xBBBC, 0x4
