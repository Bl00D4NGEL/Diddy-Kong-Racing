glabel func_80010994
/* 011594 80010994 27BDFF98 */  addiu $sp, $sp, -0x68
/* 011598 80010998 AFB40028 */  sw    $s4, 0x28($sp)
/* 01159C 8001099C 0080A025 */  move  $s4, $a0
/* 0115A0 800109A0 AFBF0034 */  sw    $ra, 0x34($sp)
/* 0115A4 800109A4 AFB60030 */  sw    $s6, 0x30($sp)
/* 0115A8 800109A8 AFB5002C */  sw    $s5, 0x2c($sp)
/* 0115AC 800109AC AFB30024 */  sw    $s3, 0x24($sp)
/* 0115B0 800109B0 AFB20020 */  sw    $s2, 0x20($sp)
/* 0115B4 800109B4 AFB1001C */  sw    $s1, 0x1c($sp)
/* 0115B8 800109B8 AFB00018 */  sw    $s0, 0x18($sp)
/* 0115BC 800109BC 0C00916D */  jal   func_800245B4
/* 0115C0 800109C0 2404FFFF */   li    $a0, -1
/* 0115C4 800109C4 3C028012 */  lui   $v0, %hi(D_8011ADB0) # $v0, 0x8012
/* 0115C8 800109C8 8C42ADB0 */  lw    $v0, %lo(D_8011ADB0)($v0)
/* 0115CC 800109CC 3C018012 */  lui   $at, %hi(D_8011ADB8) # $at, 0x8012
/* 0115D0 800109D0 1840000D */  blez  $v0, .L80010A08
/* 0115D4 800109D4 AC22ADB8 */   sw    $v0, %lo(D_8011ADB8)($at)
/* 0115D8 800109D8 0C028064 */  jal   func_800A0190
/* 0115DC 800109DC 00000000 */   nop   
/* 0115E0 800109E0 10400009 */  beqz  $v0, .L80010A08
/* 0115E4 800109E4 3C038012 */   lui   $v1, %hi(D_8011ADBC) # $v1, 0x8012
/* 0115E8 800109E8 3C048012 */  lui   $a0, %hi(D_8011ADB0) # $a0, 0x8012
/* 0115EC 800109EC 2484ADB0 */  addiu $a0, %lo(D_8011ADB0) # addiu $a0, $a0, -0x5250
/* 0115F0 800109F0 8C8E0000 */  lw    $t6, ($a0)
/* 0115F4 800109F4 2463ADBC */  addiu $v1, %lo(D_8011ADBC) # addiu $v1, $v1, -0x5244
/* 0115F8 800109F8 01D41023 */  subu  $v0, $t6, $s4
/* 0115FC 800109FC AC820000 */  sw    $v0, ($a0)
/* 011600 80010A00 10000009 */  b     .L80010A28
/* 011604 80010A04 AC600000 */   sw    $zero, ($v1)
.L80010A08:
/* 011608 80010A08 3C038012 */  lui   $v1, %hi(D_8011ADBC) # $v1, 0x8012
/* 01160C 80010A0C 2463ADBC */  addiu $v1, %lo(D_8011ADBC) # addiu $v1, $v1, -0x5244
/* 011610 80010A10 8C780000 */  lw    $t8, ($v1)
/* 011614 80010A14 3C028012 */  lui   $v0, %hi(D_8011ADB0) # $v0, 0x8012
/* 011618 80010A18 0314C821 */  addu  $t9, $t8, $s4
/* 01161C 80010A1C AC790000 */  sw    $t9, ($v1)
/* 011620 80010A20 8C42ADB0 */  lw    $v0, %lo(D_8011ADB0)($v0)
/* 011624 80010A24 00000000 */  nop   
.L80010A28:
/* 011628 80010A28 1C400003 */  bgtz  $v0, .L80010A38
/* 01162C 80010A2C 3C048012 */   lui   $a0, %hi(playerCount) # $a0, 0x8012
/* 011630 80010A30 3C018012 */  lui   $at, %hi(D_8011ADB0) # $at, 0x8012
/* 011634 80010A34 AC20ADB0 */  sw    $zero, %lo(D_8011ADB0)($at)
.L80010A38:
/* 011638 80010A38 3C028012 */  lui   $v0, %hi(D_8011AD20+1) # $v0, 0x8012
/* 01163C 80010A3C 3C018012 */  lui   $at, %hi(D_8011AD3D) # $at, 0x8012
/* 011640 80010A40 2442AD21 */  addiu $v0, %lo(D_8011AD20+1) # addiu $v0, $v0, -0x52df
/* 011644 80010A44 A020AD3D */  sb    $zero, %lo(D_8011AD3D)($at)
/* 011648 80010A48 80480000 */  lb    $t0, ($v0)
/* 01164C 80010A4C 24090001 */  li    $t1, 1
/* 011650 80010A50 01285023 */  subu  $t2, $t1, $t0
/* 011654 80010A54 A04A0000 */  sb    $t2, ($v0)
/* 011658 80010A58 804B0000 */  lb    $t3, ($v0)
/* 01165C 80010A5C 3C018012 */  lui   $at, %hi(D_8011AD22) # $at, 0x8012
/* 011660 80010A60 002B0821 */  addu  $at, $at, $t3
/* 011664 80010A64 2484AEF0 */  addiu $a0, %lo(playerCount) # addiu $a0, $a0, -0x5110
/* 011668 80010A68 A020AD22 */  sb    $zero, %lo(D_8011AD22)($at)
/* 01166C 80010A6C 8C8C0000 */  lw    $t4, ($a0)
/* 011670 80010A70 00009825 */  move  $s3, $zero
/* 011674 80010A74 19800021 */  blez  $t4, .L80010AFC
/* 011678 80010A78 3C158012 */   lui   $s5, %hi(playerStructArray_Ptr) # $s5, 0x8012
/* 01167C 80010A7C 26B5AEE4 */  addiu $s5, %lo(playerStructArray_Ptr) # addiu $s5, $s5, -0x511c
/* 011680 80010A80 00001825 */  move  $v1, $zero
.L80010A84:
/* 011684 80010A84 8EAD0000 */  lw    $t5, ($s5)
/* 011688 80010A88 26730001 */  addiu $s3, $s3, 1
/* 01168C 80010A8C 01A37021 */  addu  $t6, $t5, $v1
/* 011690 80010A90 8DC20000 */  lw    $v0, ($t6)
/* 011694 80010A94 00000000 */  nop   
/* 011698 80010A98 8C450064 */  lw    $a1, 0x64($v0)
/* 01169C 80010A9C C444000C */  lwc1  $f4, 0xc($v0)
/* 0116A0 80010AA0 00000000 */  nop   
/* 0116A4 80010AA4 E4A4005C */  swc1  $f4, 0x5c($a1)
/* 0116A8 80010AA8 8EAF0000 */  lw    $t7, ($s5)
/* 0116AC 80010AAC 00000000 */  nop   
/* 0116B0 80010AB0 01E3C021 */  addu  $t8, $t7, $v1
/* 0116B4 80010AB4 8F190000 */  lw    $t9, ($t8)
/* 0116B8 80010AB8 00000000 */  nop   
/* 0116BC 80010ABC C7260010 */  lwc1  $f6, 0x10($t9)
/* 0116C0 80010AC0 00000000 */  nop   
/* 0116C4 80010AC4 E4A60060 */  swc1  $f6, 0x60($a1)
/* 0116C8 80010AC8 8EA90000 */  lw    $t1, ($s5)
/* 0116CC 80010ACC 00000000 */  nop   
/* 0116D0 80010AD0 01234021 */  addu  $t0, $t1, $v1
/* 0116D4 80010AD4 8D0A0000 */  lw    $t2, ($t0)
/* 0116D8 80010AD8 24630004 */  addiu $v1, $v1, 4
/* 0116DC 80010ADC C5480014 */  lwc1  $f8, 0x14($t2)
/* 0116E0 80010AE0 00000000 */  nop   
/* 0116E4 80010AE4 E4A80064 */  swc1  $f8, 0x64($a1)
/* 0116E8 80010AE8 8C8B0000 */  lw    $t3, ($a0)
/* 0116EC 80010AEC 00000000 */  nop   
/* 0116F0 80010AF0 026B082A */  slt   $at, $s3, $t3
/* 0116F4 80010AF4 1420FFE3 */  bnez  $at, .L80010A84
/* 0116F8 80010AF8 00000000 */   nop   
.L80010AFC:
/* 0116FC 80010AFC 3C158012 */  lui   $s5, %hi(playerStructArray_Ptr) # $s5, 0x8012
/* 011700 80010B00 0C0050AE */  jal   func_800142B8
/* 011704 80010B04 26B5AEE4 */   addiu $s5, %lo(playerStructArray_Ptr) # addiu $s5, $s5, -0x511c
/* 011708 80010B08 0C00556E */  jal   func_800155B8
/* 01170C 80010B0C 00000000 */   nop   
/* 011710 80010B10 0C007A27 */  jal   func_8001E89C
/* 011714 80010B14 00000000 */   nop   
/* 011718 80010B18 3C138012 */  lui   $s3, %hi(D_8011AE70) # $s3, 0x8012
/* 01171C 80010B1C 2673AE70 */  addiu $s3, %lo(D_8011AE70) # addiu $s3, $s3, -0x5190
/* 011720 80010B20 8E6C0000 */  lw    $t4, ($s3)
/* 011724 80010B24 00008825 */  move  $s1, $zero
/* 011728 80010B28 1980000F */  blez  $t4, .L80010B68
/* 01172C 80010B2C 3C108012 */   lui   $s0, %hi(D_8011AE6C) # $s0, 0x8012
/* 011730 80010B30 2610AE6C */  addiu $s0, %lo(D_8011AE6C) # addiu $s0, $s0, -0x5194
/* 011734 80010B34 00009025 */  move  $s2, $zero
.L80010B38:
/* 011738 80010B38 8E0D0000 */  lw    $t5, ($s0)
/* 01173C 80010B3C 02802825 */  move  $a1, $s4
/* 011740 80010B40 01B27021 */  addu  $t6, $t5, $s2
/* 011744 80010B44 8DC40000 */  lw    $a0, ($t6)
/* 011748 80010B48 0C008FD2 */  jal   func_80023F48
/* 01174C 80010B4C 00000000 */   nop   
/* 011750 80010B50 8E6F0000 */  lw    $t7, ($s3)
/* 011754 80010B54 26310001 */  addiu $s1, $s1, 1
/* 011758 80010B58 022F082A */  slt   $at, $s1, $t7
/* 01175C 80010B5C 1420FFF6 */  bnez  $at, .L80010B38
/* 011760 80010B60 26520004 */   addiu $s2, $s2, 4
/* 011764 80010B64 00008825 */  move  $s1, $zero
.L80010B68:
/* 011768 80010B68 3C108012 */  lui   $s0, %hi(D_8011AE6C) # $s0, 0x8012
/* 01176C 80010B6C 2610AE6C */  addiu $s0, %lo(D_8011AE6C) # addiu $s0, $s0, -0x5194
/* 011770 80010B70 0C0079BB */  jal   func_8001E6EC
/* 011774 80010B74 24040001 */   li    $a0, 1
/* 011778 80010B78 8E780000 */  lw    $t8, ($s3)
/* 01177C 80010B7C 00000000 */  nop   
/* 011780 80010B80 1B00000C */  blez  $t8, .L80010BB4
/* 011784 80010B84 00009025 */   move  $s2, $zero
.L80010B88:
/* 011788 80010B88 8E190000 */  lw    $t9, ($s0)
/* 01178C 80010B8C 00000000 */  nop   
/* 011790 80010B90 03324821 */  addu  $t1, $t9, $s2
/* 011794 80010B94 8D240000 */  lw    $a0, ($t1)
/* 011798 80010B98 0C005C27 */  jal   func_8001709C
/* 01179C 80010B9C 00000000 */   nop   
/* 0117A0 80010BA0 8E680000 */  lw    $t0, ($s3)
/* 0117A4 80010BA4 26310001 */  addiu $s1, $s1, 1
/* 0117A8 80010BA8 0228082A */  slt   $at, $s1, $t0
/* 0117AC 80010BAC 1420FFF6 */  bnez  $at, .L80010B88
/* 0117B0 80010BB0 26520004 */   addiu $s2, $s2, 4
.L80010BB4:
/* 0117B4 80010BB4 3C138012 */  lui   $s3, %hi(objCount) # $s3, 0x8012
/* 0117B8 80010BB8 3C118012 */  lui   $s1, %hi(D_8011AE60) # $s1, 0x8012
/* 0117BC 80010BBC 8E73AE5C */  lw    $s3, %lo(objCount)($s3)
/* 0117C0 80010BC0 8E31AE60 */  lw    $s1, %lo(D_8011AE60)($s1)
/* 0117C4 80010BC4 00000000 */  nop   
/* 0117C8 80010BC8 0233082A */  slt   $at, $s1, $s3
/* 0117CC 80010BCC 1020004C */  beqz  $at, .L80010D00
/* 0117D0 80010BD0 00119080 */   sll   $s2, $s1, 2
/* 0117D4 80010BD4 00135080 */  sll   $t2, $s3, 2
/* 0117D8 80010BD8 3C168012 */  lui   $s6, %hi(objPtrList) # $s6, 0x8012
/* 0117DC 80010BDC 26D6AE58 */  addiu $s6, %lo(objPtrList) # addiu $s6, $s6, -0x51a8
/* 0117E0 80010BE0 AFAA0038 */  sw    $t2, 0x38($sp)
/* 0117E4 80010BE4 24110021 */  li    $s1, 33
.L80010BE8:
/* 0117E8 80010BE8 8ECB0000 */  lw    $t3, ($s6)
/* 0117EC 80010BEC 00000000 */  nop   
/* 0117F0 80010BF0 01726021 */  addu  $t4, $t3, $s2
/* 0117F4 80010BF4 8D900000 */  lw    $s0, ($t4)
/* 0117F8 80010BF8 00000000 */  nop   
/* 0117FC 80010BFC 860D0006 */  lh    $t5, 6($s0)
/* 011800 80010C00 00000000 */  nop   
/* 011804 80010C04 31AE8000 */  andi  $t6, $t5, 0x8000
/* 011808 80010C08 15C00039 */  bnez  $t6, .L80010CF0
/* 01180C 80010C0C 8FAB0038 */   lw    $t3, 0x38($sp)
/* 011810 80010C10 86020048 */  lh    $v0, 0x48($s0)
/* 011814 80010C14 24010005 */  li    $at, 5
/* 011818 80010C18 12220035 */  beq   $s1, $v0, .L80010CF0
/* 01181C 80010C1C 8FAB0038 */   lw    $t3, 0x38($sp)
/* 011820 80010C20 10410032 */  beq   $v0, $at, .L80010CEC
/* 011824 80010C24 2401000F */   li    $at, 15
/* 011828 80010C28 10410031 */  beq   $v0, $at, .L80010CF0
/* 01182C 80010C2C 8FAB0038 */   lw    $t3, 0x38($sp)
/* 011830 80010C30 8E02004C */  lw    $v0, 0x4c($s0)
/* 011834 80010C34 02002025 */  move  $a0, $s0
/* 011838 80010C38 10400009 */  beqz  $v0, .L80010C60
/* 01183C 80010C3C 00000000 */   nop   
/* 011840 80010C40 904F0011 */  lbu   $t7, 0x11($v0)
/* 011844 80010C44 24010002 */  li    $at, 2
/* 011848 80010C48 11E10007 */  beq   $t7, $at, .L80010C68
/* 01184C 80010C4C 02002025 */   move  $a0, $s0
/* 011850 80010C50 0C008FD2 */  jal   func_80023F48
/* 011854 80010C54 02802825 */   move  $a1, $s4
/* 011858 80010C58 10000004 */  b     .L80010C6C
/* 01185C 80010C5C 8E060040 */   lw    $a2, 0x40($s0)
.L80010C60:
/* 011860 80010C60 0C008FD2 */  jal   func_80023F48
/* 011864 80010C64 02802825 */   move  $a1, $s4
.L80010C68:
/* 011868 80010C68 8E060040 */  lw    $a2, 0x40($s0)
.L80010C6C:
/* 01186C 80010C6C 00000000 */  nop   
/* 011870 80010C70 80D80053 */  lb    $t8, 0x53($a2)
/* 011874 80010C74 00000000 */  nop   
/* 011878 80010C78 1700001D */  bnez  $t8, .L80010CF0
/* 01187C 80010C7C 8FAB0038 */   lw    $t3, 0x38($sp)
/* 011880 80010C80 80C40055 */  lb    $a0, 0x55($a2)
/* 011884 80010C84 00002825 */  move  $a1, $zero
/* 011888 80010C88 18800012 */  blez  $a0, .L80010CD4
/* 01188C 80010C8C 00001025 */   move  $v0, $zero
.L80010C90:
/* 011890 80010C90 8E190068 */  lw    $t9, 0x68($s0)
/* 011894 80010C94 24A50001 */  addiu $a1, $a1, 1
/* 011898 80010C98 03224821 */  addu  $t1, $t9, $v0
/* 01189C 80010C9C 8D230000 */  lw    $v1, ($t1)
/* 0118A0 80010CA0 00000000 */  nop   
/* 0118A4 80010CA4 10600009 */  beqz  $v1, .L80010CCC
/* 0118A8 80010CA8 00A4082A */   slt   $at, $a1, $a0
/* 0118AC 80010CAC 8C680000 */  lw    $t0, ($v1)
/* 0118B0 80010CB0 00000000 */  nop   
/* 0118B4 80010CB4 A5140052 */  sh    $s4, 0x52($t0)
/* 0118B8 80010CB8 8E060040 */  lw    $a2, 0x40($s0)
/* 0118BC 80010CBC 00000000 */  nop   
/* 0118C0 80010CC0 80C40055 */  lb    $a0, 0x55($a2)
/* 0118C4 80010CC4 00000000 */  nop   
/* 0118C8 80010CC8 00A4082A */  slt   $at, $a1, $a0
.L80010CCC:
/* 0118CC 80010CCC 1420FFF0 */  bnez  $at, .L80010C90
/* 0118D0 80010CD0 24420004 */   addiu $v0, $v0, 4
.L80010CD4:
/* 0118D4 80010CD4 90CA0072 */  lbu   $t2, 0x72($a2)
/* 0118D8 80010CD8 240100FF */  li    $at, 255
/* 0118DC 80010CDC 11410003 */  beq   $t2, $at, .L80010CEC
/* 0118E0 80010CE0 02002025 */   move  $a0, $s0
/* 0118E4 80010CE4 0C005024 */  jal   func_80014090
/* 0118E8 80010CE8 02802825 */   move  $a1, $s4
.L80010CEC:
/* 0118EC 80010CEC 8FAB0038 */  lw    $t3, 0x38($sp)
.L80010CF0:
/* 0118F0 80010CF0 26520004 */  addiu $s2, $s2, 4
/* 0118F4 80010CF4 024B082A */  slt   $at, $s2, $t3
/* 0118F8 80010CF8 1420FFBB */  bnez  $at, .L80010BE8
/* 0118FC 80010CFC 00000000 */   nop   
.L80010D00:
/* 011900 80010D00 3C0C8012 */  lui   $t4, %hi(playerCount) # $t4, 0x8012
/* 011904 80010D04 8D8CAEF0 */  lw    $t4, %lo(playerCount)($t4)
/* 011908 80010D08 3C168012 */  lui   $s6, %hi(objPtrList) # $s6, 0x8012
/* 01190C 80010D0C 26D6AE58 */  addiu $s6, %lo(objPtrList) # addiu $s6, $s6, -0x51a8
/* 011910 80010D10 1980000E */  blez  $t4, .L80010D4C
/* 011914 80010D14 00008825 */   move  $s1, $zero
/* 011918 80010D18 00009025 */  move  $s2, $zero
.L80010D1C:
/* 01191C 80010D1C 8EAD0000 */  lw    $t5, ($s5)
/* 011920 80010D20 02802825 */  move  $a1, $s4
/* 011924 80010D24 01B27021 */  addu  $t6, $t5, $s2
/* 011928 80010D28 8DC40000 */  lw    $a0, ($t6)
/* 01192C 80010D2C 0C01378E */  jal   func_8004DE38
/* 011930 80010D30 00000000 */   nop   
/* 011934 80010D34 3C0F8012 */  lui   $t7, %hi(playerCount) # $t7, 0x8012
/* 011938 80010D38 8DEFAEF0 */  lw    $t7, %lo(playerCount)($t7)
/* 01193C 80010D3C 26310001 */  addiu $s1, $s1, 1
/* 011940 80010D40 022F082A */  slt   $at, $s1, $t7
/* 011944 80010D44 1420FFF5 */  bnez  $at, .L80010D1C
/* 011948 80010D48 26520004 */   addiu $s2, $s2, 4
.L80010D4C:
/* 01194C 80010D4C 0C01AF66 */  jal   func_8006BD98
/* 011950 80010D50 00000000 */   nop   
/* 011954 80010D54 1440001C */  bnez  $v0, .L80010DC8
/* 011958 80010D58 3C078012 */   lui   $a3, %hi(playerCount) # $a3, 0x8012
/* 01195C 80010D5C 8CE7AEF0 */  lw    $a3, %lo(playerCount)($a3)
/* 011960 80010D60 00008825 */  move  $s1, $zero
/* 011964 80010D64 18E00018 */  blez  $a3, .L80010DC8
/* 011968 80010D68 2412FFFF */   li    $s2, -1
/* 01196C 80010D6C 3C108012 */  lui   $s0, %hi(D_8011AEE8) # $s0, 0x8012
/* 011970 80010D70 2610AEE8 */  addiu $s0, %lo(D_8011AEE8) # addiu $s0, $s0, -0x5118
.L80010D74:
/* 011974 80010D74 8E180000 */  lw    $t8, ($s0)
/* 011978 80010D78 0011C880 */  sll   $t9, $s1, 2
/* 01197C 80010D7C 03194821 */  addu  $t1, $t8, $t9
/* 011980 80010D80 8D240000 */  lw    $a0, ($t1)
/* 011984 80010D84 00000000 */  nop   
/* 011988 80010D88 8C850064 */  lw    $a1, 0x64($a0)
/* 01198C 80010D8C 00000000 */  nop   
/* 011990 80010D90 84A80000 */  lh    $t0, ($a1)
/* 011994 80010D94 00000000 */  nop   
/* 011998 80010D98 12480008 */  beq   $s2, $t0, .L80010DBC
/* 01199C 80010D9C 26310001 */   addiu $s1, $s1, 1
/* 0119A0 80010DA0 0C010FB3 */  jal   func_80043ECC
/* 0119A4 80010DA4 02803025 */   move  $a2, $s4
/* 0119A8 80010DA8 3C078012 */  lui   $a3, %hi(playerCount) # $a3, 0x8012
/* 0119AC 80010DAC 8CE7AEF0 */  lw    $a3, %lo(playerCount)($a3)
/* 0119B0 80010DB0 00000000 */  nop   
/* 0119B4 80010DB4 00E08825 */  move  $s1, $a3
/* 0119B8 80010DB8 26310001 */  addiu $s1, $s1, 1
.L80010DBC:
/* 0119BC 80010DBC 0227082A */  slt   $at, $s1, $a3
/* 0119C0 80010DC0 1420FFEC */  bnez  $at, .L80010D74
/* 0119C4 80010DC4 00000000 */   nop   
.L80010DC8:
/* 0119C8 80010DC8 0C002EB7 */  jal   func_8000BADC
/* 0119CC 80010DCC 02802025 */   move  $a0, $s4
/* 0119D0 80010DD0 3C118012 */  lui   $s1, %hi(D_8011AE60) # $s1, 0x8012
/* 0119D4 80010DD4 8E31AE60 */  lw    $s1, %lo(D_8011AE60)($s1)
/* 0119D8 80010DD8 00000000 */  nop   
/* 0119DC 80010DDC 0233082A */  slt   $at, $s1, $s3
/* 0119E0 80010DE0 1020001D */  beqz  $at, .L80010E58
/* 0119E4 80010DE4 00119080 */   sll   $s2, $s1, 2
/* 0119E8 80010DE8 00131080 */  sll   $v0, $s3, 2
.L80010DEC:
/* 0119EC 80010DEC 8ECA0000 */  lw    $t2, ($s6)
/* 0119F0 80010DF0 00000000 */  nop   
/* 0119F4 80010DF4 01525821 */  addu  $t3, $t2, $s2
/* 0119F8 80010DF8 8D700000 */  lw    $s0, ($t3)
/* 0119FC 80010DFC 00000000 */  nop   
/* 011A00 80010E00 860C0006 */  lh    $t4, 6($s0)
/* 011A04 80010E04 00000000 */  nop   
/* 011A08 80010E08 318D8000 */  andi  $t5, $t4, 0x8000
/* 011A0C 80010E0C 15A00005 */  bnez  $t5, .L80010E24
/* 011A10 80010E10 00000000 */   nop   
/* 011A14 80010E14 860E0048 */  lh    $t6, 0x48($s0)
/* 011A18 80010E18 24010005 */  li    $at, 5
/* 011A1C 80010E1C 11C10005 */  beq   $t6, $at, .L80010E34
/* 011A20 80010E20 02002025 */   move  $a0, $s0
.L80010E24:
/* 011A24 80010E24 860F0048 */  lh    $t7, 0x48($s0)
/* 011A28 80010E28 2401000F */  li    $at, 15
/* 011A2C 80010E2C 15E10006 */  bne   $t7, $at, .L80010E48
/* 011A30 80010E30 02002025 */   move  $a0, $s0
.L80010E34:
/* 011A34 80010E34 02802825 */  move  $a1, $s4
/* 011A38 80010E38 0C008FD2 */  jal   func_80023F48
/* 011A3C 80010E3C AFA20044 */   sw    $v0, 0x44($sp)
/* 011A40 80010E40 8FA20044 */  lw    $v0, 0x44($sp)
/* 011A44 80010E44 00000000 */  nop   
.L80010E48:
/* 011A48 80010E48 26520004 */  addiu $s2, $s2, 4
/* 011A4C 80010E4C 0242082A */  slt   $at, $s2, $v0
/* 011A50 80010E50 1420FFE6 */  bnez  $at, .L80010DEC
/* 011A54 80010E54 00000000 */   nop   
.L80010E58:
/* 011A58 80010E58 3C188012 */  lui   $t8, %hi(D_8011AE64) # $t8, 0x8012
/* 011A5C 80010E5C 8F18AE64 */  lw    $t8, %lo(D_8011AE64)($t8)
/* 011A60 80010E60 00000000 */  nop   
/* 011A64 80010E64 1B000018 */  blez  $t8, .L80010EC8
/* 011A68 80010E68 3C118012 */   lui   $s1, %hi(D_8011AE60) # $s1, 0x8012
/* 011A6C 80010E6C 8E31AE60 */  lw    $s1, %lo(D_8011AE60)($s1)
/* 011A70 80010E70 00131080 */  sll   $v0, $s3, 2
/* 011A74 80010E74 0233082A */  slt   $at, $s1, $s3
/* 011A78 80010E78 10200013 */  beqz  $at, .L80010EC8
/* 011A7C 80010E7C 00119080 */   sll   $s2, $s1, 2
.L80010E80:
/* 011A80 80010E80 8ED90000 */  lw    $t9, ($s6)
/* 011A84 80010E84 02802825 */  move  $a1, $s4
/* 011A88 80010E88 03324821 */  addu  $t1, $t9, $s2
/* 011A8C 80010E8C 8D300000 */  lw    $s0, ($t1)
/* 011A90 80010E90 00000000 */  nop   
/* 011A94 80010E94 86080006 */  lh    $t0, 6($s0)
/* 011A98 80010E98 02002025 */  move  $a0, $s0
/* 011A9C 80010E9C 310A8000 */  andi  $t2, $t0, 0x8000
/* 011AA0 80010EA0 11400005 */  beqz  $t2, .L80010EB8
/* 011AA4 80010EA4 00000000 */   nop   
/* 011AA8 80010EA8 0C02C8BF */  jal   func_800B22FC
/* 011AAC 80010EAC AFA20044 */   sw    $v0, 0x44($sp)
/* 011AB0 80010EB0 8FA20044 */  lw    $v0, 0x44($sp)
/* 011AB4 80010EB4 00000000 */  nop   
.L80010EB8:
/* 011AB8 80010EB8 26520004 */  addiu $s2, $s2, 4
/* 011ABC 80010EBC 0242082A */  slt   $at, $s2, $v0
/* 011AC0 80010EC0 1420FFEF */  bnez  $at, .L80010E80
/* 011AC4 80010EC4 00000000 */   nop   
.L80010EC8:
/* 011AC8 80010EC8 0C00C8E6 */  jal   func_80032398
/* 011ACC 80010ECC 02802025 */   move  $a0, $s4
/* 011AD0 80010ED0 0C00CB1B */  jal   func_80032C6C
/* 011AD4 80010ED4 00000000 */   nop   
/* 011AD8 80010ED8 1840001F */  blez  $v0, .L80010F58
/* 011ADC 80010EDC 3C118012 */   lui   $s1, %hi(D_8011AE60) # $s1, 0x8012
/* 011AE0 80010EE0 3C028012 */  lui   $v0, %hi(objCount) # $v0, 0x8012
/* 011AE4 80010EE4 8C42AE5C */  lw    $v0, %lo(objCount)($v0)
/* 011AE8 80010EE8 8E31AE60 */  lw    $s1, %lo(D_8011AE60)($s1)
/* 011AEC 80010EEC 00000000 */  nop   
/* 011AF0 80010EF0 0222082A */  slt   $at, $s1, $v0
/* 011AF4 80010EF4 10200018 */  beqz  $at, .L80010F58
/* 011AF8 80010EF8 00119080 */   sll   $s2, $s1, 2
.L80010EFC:
/* 011AFC 80010EFC 8ECB0000 */  lw    $t3, ($s6)
/* 011B00 80010F00 00000000 */  nop   
/* 011B04 80010F04 01726021 */  addu  $t4, $t3, $s2
/* 011B08 80010F08 8D900000 */  lw    $s0, ($t4)
/* 011B0C 80010F0C 00000000 */  nop   
/* 011B10 80010F10 860D0006 */  lh    $t5, 6($s0)
/* 011B14 80010F14 00000000 */  nop   
/* 011B18 80010F18 31AE8000 */  andi  $t6, $t5, 0x8000
/* 011B1C 80010F1C 15C0000A */  bnez  $t6, .L80010F48
/* 011B20 80010F20 00000000 */   nop   
/* 011B24 80010F24 8E0F0054 */  lw    $t7, 0x54($s0)
/* 011B28 80010F28 00000000 */  nop   
/* 011B2C 80010F2C 11E00006 */  beqz  $t7, .L80010F48
/* 011B30 80010F30 00000000 */   nop   
/* 011B34 80010F34 0C00CB1F */  jal   func_80032C7C
/* 011B38 80010F38 02002025 */   move  $a0, $s0
/* 011B3C 80010F3C 3C028012 */  lui   $v0, %hi(objCount) # $v0, 0x8012
/* 011B40 80010F40 8C42AE5C */  lw    $v0, %lo(objCount)($v0)
/* 011B44 80010F44 00000000 */  nop   
.L80010F48:
/* 011B48 80010F48 26310001 */  addiu $s1, $s1, 1
/* 011B4C 80010F4C 0222082A */  slt   $at, $s1, $v0
/* 011B50 80010F50 1420FFEA */  bnez  $at, .L80010EFC
/* 011B54 80010F54 26520004 */   addiu $s2, $s2, 4
.L80010F58:
/* 011B58 80010F58 0C0079BB */  jal   func_8001E6EC
/* 011B5C 80010F5C 00002025 */   move  $a0, $zero
/* 011B60 80010F60 3C188012 */  lui   $t8, %hi(D_8011AEF7) # $t8, 0x8012
/* 011B64 80010F64 8318AEF7 */  lb    $t8, %lo(D_8011AEF7)($t8)
/* 011B68 80010F68 00000000 */  nop   
/* 011B6C 80010F6C 13000003 */  beqz  $t8, .L80010F7C
/* 011B70 80010F70 00000000 */   nop   
/* 011B74 80010F74 0C008A52 */  jal   func_80022948
/* 011B78 80010F78 00000000 */   nop   
.L80010F7C:
/* 011B7C 80010F7C 3C108012 */  lui   $s0, %hi(D_8011ADAC) # $s0, 0x8012
/* 011B80 80010F80 2610ADAC */  addiu $s0, %lo(D_8011ADAC) # addiu $s0, $s0, -0x5254
/* 011B84 80010F84 8E190000 */  lw    $t9, ($s0)
/* 011B88 80010F88 00000000 */  nop   
/* 011B8C 80010F8C 17200009 */  bnez  $t9, .L80010FB4
/* 011B90 80010F90 00000000 */   nop   
/* 011B94 80010F94 0C004013 */  jal   particlePtrList_flush
/* 011B98 80010F98 00000000 */   nop   
/* 011B9C 80010F9C 0C005FA6 */  jal   func_80017E98
/* 011BA0 80010FA0 00000000 */   nop   
/* 011BA4 80010FA4 0C006F15 */  jal   func_8001BC54
/* 011BA8 80010FA8 00000000 */   nop   
/* 011BAC 80010FAC 0C007A4F */  jal   func_8001E93C
/* 011BB0 80010FB0 00000000 */   nop   
.L80010FB4:
/* 011BB4 80010FB4 3C078012 */  lui   $a3, %hi(playerCount) # $a3, 0x8012
/* 011BB8 80010FB8 8CE7AEF0 */  lw    $a3, %lo(playerCount)($a3)
/* 011BBC 80010FBC 3C098012 */  lui   $t1, %hi(D_8011AD4E) # $t1, 0x8012
/* 011BC0 80010FC0 10E00010 */  beqz  $a3, .L80011004
/* 011BC4 80010FC4 00000000 */   nop   
/* 011BC8 80010FC8 8529AD4E */  lh    $t1, %lo(D_8011AD4E)($t1)
/* 011BCC 80010FCC 00000000 */  nop   
/* 011BD0 80010FD0 15200007 */  bnez  $t1, .L80010FF0
/* 011BD4 80010FD4 00000000 */   nop   
/* 011BD8 80010FD8 0C006602 */  jal   func_80019808
/* 011BDC 80010FDC 02802025 */   move  $a0, $s4
/* 011BE0 80010FE0 3C078012 */  lui   $a3, %hi(playerCount) # $a3, 0x8012
/* 011BE4 80010FE4 8CE7AEF0 */  lw    $a3, %lo(playerCount)($a3)
/* 011BE8 80010FE8 10000006 */  b     .L80011004
/* 011BEC 80010FEC 00000000 */   nop   
.L80010FF0:
/* 011BF0 80010FF0 0C006A3D */  jal   func_8001A8F4
/* 011BF4 80010FF4 02802025 */   move  $a0, $s4
/* 011BF8 80010FF8 3C078012 */  lui   $a3, %hi(playerCount) # $a3, 0x8012
/* 011BFC 80010FFC 8CE7AEF0 */  lw    $a3, %lo(playerCount)($a3)
/* 011C00 80011000 00000000 */  nop   
.L80011004:
/* 011C04 80011004 3C048012 */  lui   $a0, %hi(D_8011AEEC) # $a0, 0x8012
/* 011C08 80011008 8C84AEEC */  lw    $a0, %lo(D_8011AEEC)($a0)
/* 011C0C 8001100C 00E02825 */  move  $a1, $a3
/* 011C10 80011010 0C00210E */  jal   func_80008438
/* 011C14 80011014 02803025 */   move  $a2, $s4
/* 011C18 80011018 44945000 */  mtc1  $s4, $f10
/* 011C1C 8001101C 24080001 */  li    $t0, 1
/* 011C20 80011020 46805420 */  cvt.s.w $f16, $f10
/* 011C24 80011024 AE080000 */  sw    $t0, ($s0)
/* 011C28 80011028 3C018012 */  lui   $at, %hi(D_8011ADA8) # $at, 0x8012
/* 011C2C 8001102C E430ADA8 */  swc1  $f16, %lo(D_8011ADA8)($at)
/* 011C30 80011030 3C018012 */  lui   $at, %hi(D_8011AD24) # $at, 0x8012
/* 011C34 80011034 A020AD24 */  sb    $zero, %lo(D_8011AD24)($at)
/* 011C38 80011038 3C018012 */  lui   $at, %hi(D_8011AD53) # $at, 0x8012
/* 011C3C 8001103C 0C0038AD */  jal   func_8000E2B4
/* 011C40 80011040 A020AD53 */   sb    $zero, %lo(D_8011AD53)($at)
/* 011C44 80011044 0C0273EC */  jal   func_8009CFB0
/* 011C48 80011048 00000000 */   nop   
/* 011C4C 8001104C 0C005E74 */  jal   func_800179D0
/* 011C50 80011050 00000000 */   nop   
/* 011C54 80011054 3C038012 */  lui   $v1, %hi(D_8011AF00) # $v1, 0x8012
/* 011C58 80011058 2463AF00 */  addiu $v1, %lo(D_8011AF00) # addiu $v1, $v1, -0x5100
/* 011C5C 8001105C 80620000 */  lb    $v0, ($v1)
/* 011C60 80011060 24010001 */  li    $at, 1
/* 011C64 80011064 14410026 */  bne   $v0, $at, .L80011100
/* 011C68 80011068 3C0A8012 */   lui   $t2, %hi(D_8011ADB0) # $t2, 0x8012
/* 011C6C 8001106C 8D4AADB0 */  lw    $t2, %lo(D_8011ADB0)($t2)
/* 011C70 80011070 24010050 */  li    $at, 80
/* 011C74 80011074 15410025 */  bne   $t2, $at, .L8001110C
/* 011C78 80011078 3C0B8012 */   lui   $t3, %hi(D_8011AE7A) # $t3, 0x8012
/* 011C7C 8001107C 856BAE7A */  lh    $t3, %lo(D_8011AE7A)($t3)
/* 011C80 80011080 00002825 */  move  $a1, $zero
/* 011C84 80011084 15600021 */  bnez  $t3, .L8001110C
/* 011C88 80011088 00009825 */   move  $s3, $zero
/* 011C8C 8001108C 24100004 */  li    $s0, 4
.L80011090:
/* 011C90 80011090 02602025 */  move  $a0, $s3
/* 011C94 80011094 0C01A955 */  jal   func_8006A554
/* 011C98 80011098 AFA50054 */   sw    $a1, 0x54($sp)
/* 011C9C 8001109C 8FA50054 */  lw    $a1, 0x54($sp)
/* 011CA0 800110A0 26730001 */  addiu $s3, $s3, 1
/* 011CA4 800110A4 1670FFFA */  bne   $s3, $s0, .L80011090
/* 011CA8 800110A8 00A22825 */   or    $a1, $a1, $v0
/* 011CAC 800110AC 30AC8000 */  andi  $t4, $a1, 0x8000
/* 011CB0 800110B0 11800005 */  beqz  $t4, .L800110C8
/* 011CB4 800110B4 30AD4000 */   andi  $t5, $a1, 0x4000
/* 011CB8 800110B8 0C007917 */  jal   func_8001E45C
/* 011CBC 800110BC 24040064 */   li    $a0, 100
/* 011CC0 800110C0 10000013 */  b     .L80011110
/* 011CC4 800110C4 8FBF0034 */   lw    $ra, 0x34($sp)
.L800110C8:
/* 011CC8 800110C8 11A00011 */  beqz  $t5, .L80011110
/* 011CCC 800110CC 8FBF0034 */   lw    $ra, 0x34($sp)
/* 011CD0 800110D0 0C02658B */  jal   get_trophy_race_world_id
/* 011CD4 800110D4 00000000 */   nop   
/* 011CD8 800110D8 1440000D */  bnez  $v0, .L80011110
/* 011CDC 800110DC 8FBF0034 */   lw    $ra, 0x34($sp)
/* 011CE0 800110E0 0C0270B4 */  jal   is_in_tracks_mode
/* 011CE4 800110E4 00000000 */   nop   
/* 011CE8 800110E8 14400009 */  bnez  $v0, .L80011110
/* 011CEC 800110EC 8FBF0034 */   lw    $ra, 0x34($sp)
/* 011CF0 800110F0 0C01BC50 */  jal   func_8006F140
/* 011CF4 800110F4 24040001 */   li    $a0, 1
/* 011CF8 800110F8 10000005 */  b     .L80011110
/* 011CFC 800110FC 8FBF0034 */   lw    $ra, 0x34($sp)
.L80011100:
/* 011D00 80011100 14400002 */  bnez  $v0, .L8001110C
/* 011D04 80011104 240E0001 */   li    $t6, 1
/* 011D08 80011108 A06E0000 */  sb    $t6, ($v1)
.L8001110C:
/* 011D0C 8001110C 8FBF0034 */  lw    $ra, 0x34($sp)
.L80011110:
/* 011D10 80011110 8FB00018 */  lw    $s0, 0x18($sp)
/* 011D14 80011114 8FB1001C */  lw    $s1, 0x1c($sp)
/* 011D18 80011118 8FB20020 */  lw    $s2, 0x20($sp)
/* 011D1C 8001111C 8FB30024 */  lw    $s3, 0x24($sp)
/* 011D20 80011120 8FB40028 */  lw    $s4, 0x28($sp)
/* 011D24 80011124 8FB5002C */  lw    $s5, 0x2c($sp)
/* 011D28 80011128 8FB60030 */  lw    $s6, 0x30($sp)
/* 011D2C 8001112C 03E00008 */  jr    $ra
/* 011D30 80011130 27BD0068 */   addiu $sp, $sp, 0x68

