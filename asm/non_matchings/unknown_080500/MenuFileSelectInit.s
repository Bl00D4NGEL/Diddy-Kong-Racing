glabel MenuFileSelectInit
/* 08D6FC 8008CAFC 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 08D700 8008CB00 AFBF002C */  sw    $ra, 0x2c($sp)
/* 08D704 8008CB04 AFB40028 */  sw    $s4, 0x28($sp)
/* 08D708 8008CB08 AFB30024 */  sw    $s3, 0x24($sp)
/* 08D70C 8008CB0C AFB20020 */  sw    $s2, 0x20($sp)
/* 08D710 8008CB10 AFB1001C */  sw    $s1, 0x1c($sp)
/* 08D714 8008CB14 AFB00018 */  sw    $s0, 0x18($sp)
/* 08D718 8008CB18 27A40038 */  addiu $a0, $sp, 0x38
/* 08D71C 8008CB1C 0C01AC89 */  jal   func_8006B224
/* 08D720 8008CB20 27A50034 */   addiu $a1, $sp, 0x34
/* 08D724 8008CB24 3C04800E */  lui   $a0, %hi(D_800E0398) # $a0, 0x800e
/* 08D728 8008CB28 0C02719D */  jal   func_8009C674
/* 08D72C 8008CB2C 24840398 */   addiu $a0, %lo(D_800E0398) # addiu $a0, $a0, 0x398
/* 08D730 8008CB30 3C04800E */  lui   $a0, %hi(D_800E03A4) # $a0, 0x800e
/* 08D734 8008CB34 0C027229 */  jal   func_8009C8A4
/* 08D738 8008CB38 248403A4 */   addiu $a0, %lo(D_800E03A4) # addiu $a0, $a0, 0x3a4
/* 08D73C 8008CB3C 0C01FFFB */  jal   func_8007FFEC
/* 08D740 8008CB40 24040006 */   li    $a0, 6
/* 08D744 8008CB44 0C01BAEA */  jal   func_8006EBA8
/* 08D748 8008CB48 00000000 */   nop   
/* 08D74C 8008CB4C 240E0001 */  li    $t6, 1
/* 08D750 8008CB50 3C018012 */  lui   $at, %hi(D_801263D8) # $at, 0x8012
/* 08D754 8008CB54 AC2E63D8 */  sw    $t6, %lo(D_801263D8)($at)
/* 08D758 8008CB58 3C01800E */  lui   $at, %hi(gSaveFileIndex) # $at, 0x800e
/* 08D75C 8008CB5C AC20F4CC */  sw    $zero, %lo(gSaveFileIndex)($at)
/* 08D760 8008CB60 3C01800E */  lui   $at, %hi(D_800DF47C) # $at, 0x800e
/* 08D764 8008CB64 AC20F47C */  sw    $zero, %lo(D_800DF47C)($at)
/* 08D768 8008CB68 3C018012 */  lui   $at, %hi(D_801263E0) # $at, 0x8012
/* 08D76C 8008CB6C AC2063E0 */  sw    $zero, %lo(D_801263E0)($at)
/* 08D770 8008CB70 3C018012 */  lui   $at, %hi(D_801263BC) # $at, 0x8012
/* 08D774 8008CB74 AC2063BC */  sw    $zero, %lo(D_801263BC)($at)
/* 08D778 8008CB78 3C018012 */  lui   $at, %hi(D_80126484) # $at, 0x8012
/* 08D77C 8008CB7C AC206484 */  sw    $zero, %lo(D_80126484)($at)
/* 08D780 8008CB80 3C018012 */  lui   $at, %hi(D_80126488) # $at, 0x8012
/* 08D784 8008CB84 AC206488 */  sw    $zero, %lo(D_80126488)($at)
/* 08D788 8008CB88 3C018012 */  lui   $at, %hi(D_80126CC0) # $at, 0x8012
/* 08D78C 8008CB8C 3C04800E */  lui   $a0, %hi(D_800DF77C) # $a0, 0x800e
/* 08D790 8008CB90 AC206CC0 */  sw    $zero, %lo(D_80126CC0)($at)
/* 08D794 8008CB94 0C030076 */  jal   func_800C01D8
/* 08D798 8008CB98 2484F77C */   addiu $a0, %lo(D_800DF77C) # addiu $a0, $a0, -0x884
/* 08D79C 8008CB9C 0C03105C */  jal   func_800C4170
/* 08D7A0 8008CBA0 24040002 */   li    $a0, 2
/* 08D7A4 8008CBA4 0C0002CD */  jal   func_80000B34
/* 08D7A8 8008CBA8 2404001A */   li    $a0, 26
/* 08D7AC 8008CBAC 3C13800E */  lui   $s3, %hi(D_800DFDB4) # $s3, 0x800e
/* 08D7B0 8008CBB0 3C128012 */  lui   $s2, %hi(D_801263B4) # $s2, 0x8012
/* 08D7B4 8008CBB4 265263B4 */  addiu $s2, %lo(D_801263B4) # addiu $s2, $s2, 0x63b4
/* 08D7B8 8008CBB8 2673FDB4 */  addiu $s3, %lo(D_800DFDB4) # addiu $s3, $s3, -0x24c
/* 08D7BC 8008CBBC 00008025 */  move  $s0, $zero
/* 08D7C0 8008CBC0 2414000A */  li    $s4, 10
.L8008CBC4:
/* 08D7C4 8008CBC4 824F0000 */  lb    $t7, ($s2)
/* 08D7C8 8008CBC8 0010C040 */  sll   $t8, $s0, 1
/* 08D7CC 8008CBCC 120F0007 */  beq   $s0, $t7, .L8008CBEC
/* 08D7D0 8008CBD0 02788821 */   addu  $s1, $s3, $t8
/* 08D7D4 8008CBD4 92240000 */  lbu   $a0, ($s1)
/* 08D7D8 8008CBD8 0C000445 */  jal   func_80001114
/* 08D7DC 8008CBDC 00000000 */   nop   
/* 08D7E0 8008CBE0 92240001 */  lbu   $a0, 1($s1)
/* 08D7E4 8008CBE4 0C000445 */  jal   func_80001114
/* 08D7E8 8008CBE8 00000000 */   nop   
.L8008CBEC:
/* 08D7EC 8008CBEC 26100001 */  addiu $s0, $s0, 1
/* 08D7F0 8008CBF0 1614FFF4 */  bne   $s0, $s4, .L8008CBC4
/* 08D7F4 8008CBF4 00000000 */   nop   
/* 08D7F8 8008CBF8 0C000445 */  jal   func_80001114
/* 08D7FC 8008CBFC 24040006 */   li    $a0, 6
/* 08D800 8008CC00 0C0002C6 */  jal   func_80000B18
/* 08D804 8008CC04 00000000 */   nop   
/* 08D808 8008CC08 8FBF002C */  lw    $ra, 0x2c($sp)
/* 08D80C 8008CC0C 8FB00018 */  lw    $s0, 0x18($sp)
/* 08D810 8008CC10 8FB1001C */  lw    $s1, 0x1c($sp)
/* 08D814 8008CC14 8FB20020 */  lw    $s2, 0x20($sp)
/* 08D818 8008CC18 8FB30024 */  lw    $s3, 0x24($sp)
/* 08D81C 8008CC1C 8FB40028 */  lw    $s4, 0x28($sp)
/* 08D820 8008CC20 03E00008 */  jr    $ra
/* 08D824 8008CC24 27BD0040 */   addiu $sp, $sp, 0x40

