glabel func_800230D0
/* 023CD0 800230D0 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 023CD4 800230D4 3C028012 */  lui   $v0, %hi(D_8011AED0) # $v0, 0x8012
/* 023CD8 800230D8 8C42AED0 */  lw    $v0, %lo(D_8011AED0)($v0)
/* 023CDC 800230DC AFB10018 */  sw    $s1, 0x18($sp)
/* 023CE0 800230E0 AFB00014 */  sw    $s0, 0x14($sp)
/* 023CE4 800230E4 00808025 */  move  $s0, $a0
/* 023CE8 800230E8 00A08825 */  move  $s1, $a1
/* 023CEC 800230EC 14400032 */  bnez  $v0, .L800231B8
/* 023CF0 800230F0 AFBF001C */   sw    $ra, 0x1c($sp)
/* 023CF4 800230F4 3C078012 */  lui   $a3, %hi(objCount) # $a3, 0x8012
/* 023CF8 800230F8 24E7AE5C */  addiu $a3, %lo(objCount) # addiu $a3, $a3, -0x51a4
/* 023CFC 800230FC 8CE40000 */  lw    $a0, ($a3)
/* 023D00 80023100 00004025 */  move  $t0, $zero
/* 023D04 80023104 1880002A */  blez  $a0, .L800231B0
/* 023D08 80023108 00001025 */   move  $v0, $zero
/* 023D0C 8002310C 3C058012 */  lui   $a1, %hi(gObjPtrList) # $a1, 0x8012
/* 023D10 80023110 24A5AE58 */  addiu $a1, %lo(gObjPtrList) # addiu $a1, $a1, -0x51a8
/* 023D14 80023114 2406000B */  li    $a2, 11
.L80023118:
/* 023D18 80023118 8CAE0000 */  lw    $t6, ($a1)
/* 023D1C 8002311C 00027880 */  sll   $t7, $v0, 2
/* 023D20 80023120 01CFC021 */  addu  $t8, $t6, $t7
/* 023D24 80023124 8F030000 */  lw    $v1, ($t8)
/* 023D28 80023128 00000000 */  nop   
/* 023D2C 8002312C 84790006 */  lh    $t9, 6($v1)
/* 023D30 80023130 00000000 */  nop   
/* 023D34 80023134 33298000 */  andi  $t1, $t9, 0x8000
/* 023D38 80023138 15200018 */  bnez  $t1, .L8002319C
/* 023D3C 8002313C 00000000 */   nop   
/* 023D40 80023140 846A0048 */  lh    $t2, 0x48($v1)
/* 023D44 80023144 00000000 */  nop   
/* 023D48 80023148 14CA0014 */  bne   $a2, $t2, .L8002319C
/* 023D4C 8002314C 00000000 */   nop   
/* 023D50 80023150 8C6B0078 */  lw    $t3, 0x78($v1)
/* 023D54 80023154 00000000 */  nop   
/* 023D58 80023158 15600011 */  bnez  $t3, .L800231A0
/* 023D5C 8002315C 24420001 */   addiu $v0, $v0, 1
/* 023D60 80023160 C464000C */  lwc1  $f4, 0xc($v1)
/* 023D64 80023164 00000000 */  nop   
/* 023D68 80023168 E604000C */  swc1  $f4, 0xc($s0)
/* 023D6C 8002316C C4660010 */  lwc1  $f6, 0x10($v1)
/* 023D70 80023170 00000000 */  nop   
/* 023D74 80023174 E6060010 */  swc1  $f6, 0x10($s0)
/* 023D78 80023178 C4680014 */  lwc1  $f8, 0x14($v1)
/* 023D7C 8002317C 00000000 */  nop   
/* 023D80 80023180 E6080014 */  swc1  $f8, 0x14($s0)
/* 023D84 80023184 846C002E */  lh    $t4, 0x2e($v1)
/* 023D88 80023188 00000000 */  nop   
/* 023D8C 8002318C A60C002E */  sh    $t4, 0x2e($s0)
/* 023D90 80023190 8CE40000 */  lw    $a0, ($a3)
/* 023D94 80023194 00000000 */  nop   
/* 023D98 80023198 00801025 */  move  $v0, $a0
.L8002319C:
/* 023D9C 8002319C 24420001 */  addiu $v0, $v0, 1
.L800231A0:
/* 023DA0 800231A0 0044082A */  slt   $at, $v0, $a0
/* 023DA4 800231A4 1420FFDC */  bnez  $at, .L80023118
/* 023DA8 800231A8 00000000 */   nop   
/* 023DAC 800231AC AFA3002C */  sw    $v1, 0x2c($sp)
.L800231B0:
/* 023DB0 800231B0 1000001E */  b     .L8002322C
/* 023DB4 800231B4 8604002E */   lh    $a0, 0x2e($s0)
.L800231B8:
/* 023DB8 800231B8 00026900 */  sll   $t5, $v0, 4
/* 023DBC 800231BC 3C0E8012 */  lui   $t6, %hi(D_8011AECC) # $t6, 0x8012
/* 023DC0 800231C0 8DCEAECC */  lw    $t6, %lo(D_8011AECC)($t6)
/* 023DC4 800231C4 01A26823 */  subu  $t5, $t5, $v0
/* 023DC8 800231C8 000D6880 */  sll   $t5, $t5, 2
/* 023DCC 800231CC 3C01420C */  li    $at, 0x420C0000 # 35.000000
/* 023DD0 800231D0 01AE4021 */  addu  $t0, $t5, $t6
/* 023DD4 800231D4 44810000 */  mtc1  $at, $f0
/* 023DD8 800231D8 C510FFCC */  lwc1  $f16, -0x34($t0)
/* 023DDC 800231DC C50AFFD4 */  lwc1  $f10, -0x2c($t0)
/* 023DE0 800231E0 46008482 */  mul.s $f18, $f16, $f0
/* 023DE4 800231E4 2508FFC4 */  addiu $t0, $t0, -0x3c
/* 023DE8 800231E8 46125101 */  sub.s $f4, $f10, $f18
/* 023DEC 800231EC E604000C */  swc1  $f4, 0xc($s0)
/* 023DF0 800231F0 C5060014 */  lwc1  $f6, 0x14($t0)
/* 023DF4 800231F4 C60C000C */  lwc1  $f12, 0xc($s0)
/* 023DF8 800231F8 E6060010 */  swc1  $f6, 0x10($s0)
/* 023DFC 800231FC C5100000 */  lwc1  $f16, ($t0)
/* 023E00 80023200 C5080018 */  lwc1  $f8, 0x18($t0)
/* 023E04 80023204 46008282 */  mul.s $f10, $f16, $f0
/* 023E08 80023208 C60E0010 */  lwc1  $f14, 0x10($s0)
/* 023E0C 8002320C 460A4480 */  add.s $f18, $f8, $f10
/* 023E10 80023210 E6120014 */  swc1  $f18, 0x14($s0)
/* 023E14 80023214 8E060014 */  lw    $a2, 0x14($s0)
/* 023E18 80023218 0C00A7C6 */  jal   get_level_segment_index_from_position
/* 023E1C 8002321C AFA8005C */   sw    $t0, 0x5c($sp)
/* 023E20 80023220 8FA8005C */  lw    $t0, 0x5c($sp)
/* 023E24 80023224 A602002E */  sh    $v0, 0x2e($s0)
/* 023E28 80023228 8604002E */  lh    $a0, 0x2e($s0)
.L8002322C:
/* 023E2C 8002322C 8E05000C */  lw    $a1, 0xc($s0)
/* 023E30 80023230 8E060014 */  lw    $a2, 0x14($s0)
/* 023E34 80023234 AFA8005C */  sw    $t0, 0x5c($sp)
/* 023E38 80023238 0C00AEAC */  jal   func_8002BAB0
/* 023E3C 8002323C 27A70030 */   addiu $a3, $sp, 0x30
/* 023E40 80023240 8FA3002C */  lw    $v1, 0x2c($sp)
/* 023E44 80023244 8FA8005C */  lw    $t0, 0x5c($sp)
/* 023E48 80023248 10400005 */  beqz  $v0, .L80023260
/* 023E4C 8002324C 00027880 */   sll   $t7, $v0, 2
/* 023E50 80023250 03AFC021 */  addu  $t8, $sp, $t7
/* 023E54 80023254 C704002C */  lwc1  $f4, 0x2c($t8)
/* 023E58 80023258 00000000 */  nop   
/* 023E5C 8002325C E6040010 */  swc1  $f4, 0x10($s0)
.L80023260:
/* 023E60 80023260 C606000C */  lwc1  $f6, 0xc($s0)
/* 023E64 80023264 00000000 */  nop   
/* 023E68 80023268 E626005C */  swc1  $f6, 0x5c($s1)
/* 023E6C 8002326C C6100010 */  lwc1  $f16, 0x10($s0)
/* 023E70 80023270 00000000 */  nop   
/* 023E74 80023274 E6300060 */  swc1  $f16, 0x60($s1)
/* 023E78 80023278 C6080014 */  lwc1  $f8, 0x14($s0)
/* 023E7C 8002327C 11000008 */  beqz  $t0, .L800232A0
/* 023E80 80023280 E6280064 */   swc1  $f8, 0x64($s1)
/* 023E84 80023284 C50C0000 */  lwc1  $f12, ($t0)
/* 023E88 80023288 C50E0008 */  lwc1  $f14, 8($t0)
/* 023E8C 8002328C 0C01C1D4 */  jal   arctan2_f
/* 023E90 80023290 AFA8005C */   sw    $t0, 0x5c($sp)
/* 023E94 80023294 8FA8005C */  lw    $t0, 0x5c($sp)
/* 023E98 80023298 10000004 */  b     .L800232AC
/* 023E9C 8002329C A62201A0 */   sh    $v0, 0x1a0($s1)
.L800232A0:
/* 023EA0 800232A0 84790000 */  lh    $t9, ($v1)
/* 023EA4 800232A4 00000000 */  nop   
/* 023EA8 800232A8 A63901A0 */  sh    $t9, 0x1a0($s1)
.L800232AC:
/* 023EAC 800232AC A2200192 */  sb    $zero, 0x192($s1)
/* 023EB0 800232B0 3C0A8012 */  lui   $t2, %hi(D_8011AED0) # $t2, 0x8012
/* 023EB4 800232B4 8D4AAED0 */  lw    $t2, %lo(D_8011AED0)($t2)
/* 023EB8 800232B8 82290193 */  lb    $t1, 0x193($s1)
/* 023EBC 800232BC 862C01A0 */  lh    $t4, 0x1a0($s1)
/* 023EC0 800232C0 012A0019 */  multu $t1, $t2
/* 023EC4 800232C4 3C014170 */  li    $at, 0x41700000 # 15.000000
/* 023EC8 800232C8 44810000 */  mtc1  $at, $f0
/* 023ECC 800232CC 2401FFFF */  li    $at, -1
/* 023ED0 800232D0 00005812 */  mflo  $t3
/* 023ED4 800232D4 A62B0190 */  sh    $t3, 0x190($s1)
/* 023ED8 800232D8 C60A000C */  lwc1  $f10, 0xc($s0)
/* 023EDC 800232DC A60C0000 */  sh    $t4, ($s0)
/* 023EE0 800232E0 E62A00D8 */  swc1  $f10, 0xd8($s1)
/* 023EE4 800232E4 C6120010 */  lwc1  $f18, 0x10($s0)
/* 023EE8 800232E8 00000000 */  nop   
/* 023EEC 800232EC 46009100 */  add.s $f4, $f18, $f0
/* 023EF0 800232F0 E62400DC */  swc1  $f4, 0xdc($s1)
/* 023EF4 800232F4 C6060014 */  lwc1  $f6, 0x14($s0)
/* 023EF8 800232F8 00000000 */  nop   
/* 023EFC 800232FC E62600E0 */  swc1  $f6, 0xe0($s1)
/* 023F00 80023300 C610000C */  lwc1  $f16, 0xc($s0)
/* 023F04 80023304 00000000 */  nop   
/* 023F08 80023308 E63000E4 */  swc1  $f16, 0xe4($s1)
/* 023F0C 8002330C C6080010 */  lwc1  $f8, 0x10($s0)
/* 023F10 80023310 00000000 */  nop   
/* 023F14 80023314 46004280 */  add.s $f10, $f8, $f0
/* 023F18 80023318 E62A00E8 */  swc1  $f10, 0xe8($s1)
/* 023F1C 8002331C C6120014 */  lwc1  $f18, 0x14($s0)
/* 023F20 80023320 00000000 */  nop   
/* 023F24 80023324 E63200EC */  swc1  $f18, 0xec($s1)
/* 023F28 80023328 C604000C */  lwc1  $f4, 0xc($s0)
/* 023F2C 8002332C 00000000 */  nop   
/* 023F30 80023330 E62400F0 */  swc1  $f4, 0xf0($s1)
/* 023F34 80023334 C6060010 */  lwc1  $f6, 0x10($s0)
/* 023F38 80023338 00000000 */  nop   
/* 023F3C 8002333C 46003400 */  add.s $f16, $f6, $f0
/* 023F40 80023340 E63000F4 */  swc1  $f16, 0xf4($s1)
/* 023F44 80023344 C6080014 */  lwc1  $f8, 0x14($s0)
/* 023F48 80023348 00000000 */  nop   
/* 023F4C 8002334C E62800F8 */  swc1  $f8, 0xf8($s1)
/* 023F50 80023350 C60A000C */  lwc1  $f10, 0xc($s0)
/* 023F54 80023354 00000000 */  nop   
/* 023F58 80023358 E62A00FC */  swc1  $f10, 0xfc($s1)
/* 023F5C 8002335C C6120010 */  lwc1  $f18, 0x10($s0)
/* 023F60 80023360 00000000 */  nop   
/* 023F64 80023364 46009100 */  add.s $f4, $f18, $f0
/* 023F68 80023368 44800000 */  mtc1  $zero, $f0
/* 023F6C 8002336C E6240100 */  swc1  $f4, 0x100($s1)
/* 023F70 80023370 C6060014 */  lwc1  $f6, 0x14($s0)
/* 023F74 80023374 00000000 */  nop   
/* 023F78 80023378 E6260104 */  swc1  $f6, 0x104($s1)
/* 023F7C 8002337C 8E0D004C */  lw    $t5, 0x4c($s0)
/* 023F80 80023380 C610000C */  lwc1  $f16, 0xc($s0)
/* 023F84 80023384 00000000 */  nop   
/* 023F88 80023388 E5B00004 */  swc1  $f16, 4($t5)
/* 023F8C 8002338C 8E0E004C */  lw    $t6, 0x4c($s0)
/* 023F90 80023390 C6080010 */  lwc1  $f8, 0x10($s0)
/* 023F94 80023394 00000000 */  nop   
/* 023F98 80023398 E5C80008 */  swc1  $f8, 8($t6)
/* 023F9C 8002339C 8E0F004C */  lw    $t7, 0x4c($s0)
/* 023FA0 800233A0 C60A0014 */  lwc1  $f10, 0x14($s0)
/* 023FA4 800233A4 00000000 */  nop   
/* 023FA8 800233A8 E5EA000C */  swc1  $f10, 0xc($t7)
/* 023FAC 800233AC E620002C */  swc1  $f0, 0x2c($s1)
/* 023FB0 800233B0 E6200030 */  swc1  $f0, 0x30($s1)
/* 023FB4 800233B4 E600001C */  swc1  $f0, 0x1c($s0)
/* 023FB8 800233B8 E6000024 */  swc1  $f0, 0x24($s0)
/* 023FBC 800233BC 823801D7 */  lb    $t8, 0x1d7($s1)
/* 023FC0 800233C0 86240000 */  lh    $a0, ($s1)
/* 023FC4 800233C4 A23801D6 */  sb    $t8, 0x1d6($s1)
/* 023FC8 800233C8 1081000F */  beq   $a0, $at, .L80023408
/* 023FCC 800233CC 8FBF001C */   lw    $ra, 0x1c($sp)
/* 023FD0 800233D0 0C01997A */  jal   set_object_stack_pos
/* 023FD4 800233D4 AFA8005C */   sw    $t0, 0x5c($sp)
/* 023FD8 800233D8 0C01A73F */  jal   func_80069CFC
/* 023FDC 800233DC 00000000 */   nop   
/* 023FE0 800233E0 C612000C */  lwc1  $f18, 0xc($s0)
/* 023FE4 800233E4 8FA8005C */  lw    $t0, 0x5c($sp)
/* 023FE8 800233E8 E452000C */  swc1  $f18, 0xc($v0)
/* 023FEC 800233EC C6040010 */  lwc1  $f4, 0x10($s0)
/* 023FF0 800233F0 00000000 */  nop   
/* 023FF4 800233F4 E4440010 */  swc1  $f4, 0x10($v0)
/* 023FF8 800233F8 C6060014 */  lwc1  $f6, 0x14($s0)
/* 023FFC 800233FC 00000000 */  nop   
/* 024000 80023400 E4460014 */  swc1  $f6, 0x14($v0)
/* 024004 80023404 8FBF001C */  lw    $ra, 0x1c($sp)
.L80023408:
/* 024008 80023408 8FB00014 */  lw    $s0, 0x14($sp)
/* 02400C 8002340C 8FB10018 */  lw    $s1, 0x18($sp)
/* 024010 80023410 27BD0060 */  addiu $sp, $sp, 0x60
/* 024014 80023414 03E00008 */  jr    $ra
/* 024018 80023418 01001025 */   move  $v0, $t0

