.late_rodata
glabel D_800E5F48
.float 1.4
glabel D_800E5F4C
.float 0.714
glabel D_800E5F50
.float 0.005

.text
glabel func_8002E234
/* 02EE34 8002E234 27BDFF00 */  addiu $sp, $sp, -0x100
/* 02EE38 8002E238 444EF800 */  cfc1  $t6, $31
/* 02EE3C 8002E23C AFBF0044 */  sw    $ra, 0x44($sp)
/* 02EE40 8002E240 35C10003 */  ori   $at, $t6, 3
/* 02EE44 8002E244 AFB60040 */  sw    $s6, 0x40($sp)
/* 02EE48 8002E248 AFB5003C */  sw    $s5, 0x3c($sp)
/* 02EE4C 8002E24C AFB40038 */  sw    $s4, 0x38($sp)
/* 02EE50 8002E250 AFB30034 */  sw    $s3, 0x34($sp)
/* 02EE54 8002E254 AFB20030 */  sw    $s2, 0x30($sp)
/* 02EE58 8002E258 AFB1002C */  sw    $s1, 0x2c($sp)
/* 02EE5C 8002E25C AFB00028 */  sw    $s0, 0x28($sp)
/* 02EE60 8002E260 38210002 */  xori  $at, $at, 2
/* 02EE64 8002E264 44C1F800 */  ctc1  $at, $31
/* 02EE68 8002E268 C4840010 */  lwc1  $f4, 0x10($a0)
/* 02EE6C 8002E26C 848F0048 */  lh    $t7, 0x48($a0)
/* 02EE70 8002E270 460021A4 */  cvt.w.s $f6, $f4
/* 02EE74 8002E274 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 02EE78 8002E278 24120001 */  li    $s2, 1
/* 02EE7C 8002E27C 44103000 */  mfc1  $s0, $f6
/* 02EE80 8002E280 44819000 */  mtc1  $at, $f18
/* 02EE84 8002E284 44CEF800 */  ctc1  $t6, $31
/* 02EE88 8002E288 0080A825 */  move  $s5, $a0
/* 02EE8C 8002E28C 164F000F */  bne   $s2, $t7, .L8002E2CC
/* 02EE90 8002E290 00A0B025 */   move  $s6, $a1
/* 02EE94 8002E294 0C0270C3 */  jal   func_8009C30C
/* 02EE98 8002E298 E7B2006C */   swc1  $f18, 0x6c($sp)
/* 02EE9C 8002E29C C7B2006C */  lwc1  $f18, 0x6c($sp)
/* 02EEA0 8002E2A0 30580010 */  andi  $t8, $v0, 0x10
/* 02EEA4 8002E2A4 13000005 */  beqz  $t8, .L8002E2BC
/* 02EEA8 8002E2A8 30590020 */   andi  $t9, $v0, 0x20
/* 02EEAC 8002E2AC 3C01800E */  lui   $at, %hi(D_800E5F48) # $at, 0x800e
/* 02EEB0 8002E2B0 C4325F48 */  lwc1  $f18, %lo(D_800E5F48)($at)
/* 02EEB4 8002E2B4 10000006 */  b     .L8002E2D0
/* 02EEB8 8002E2B8 3C014000 */   lui   $at, 0x4000
.L8002E2BC:
/* 02EEBC 8002E2BC 13200003 */  beqz  $t9, .L8002E2CC
/* 02EEC0 8002E2C0 3C01800E */   lui   $at, %hi(D_800E5F4C) # $at, 0x800e
/* 02EEC4 8002E2C4 C4325F4C */  lwc1  $f18, %lo(D_800E5F4C)($at)
/* 02EEC8 8002E2C8 00000000 */  nop   
.L8002E2CC:
/* 02EECC 8002E2CC 3C014000 */  li    $at, 0x40000000 # 2.000000
.L8002E2D0:
/* 02EED0 8002E2D0 44814000 */  mtc1  $at, $f8
/* 02EED4 8002E2D4 3C118012 */  lui   $s1, %hi(D_8011D0C8) # $s1, 0x8012
/* 02EED8 8002E2D8 3C138012 */  lui   $s3, %hi(D_8011D0C4) # $s3, 0x8012
/* 02EEDC 8002E2DC 2673D0C4 */  addiu $s3, %lo(D_8011D0C4) # addiu $s3, $s3, -0x2f3c
/* 02EEE0 8002E2E0 2631D0C8 */  addiu $s1, %lo(D_8011D0C8) # addiu $s1, $s1, -0x2f38
/* 02EEE4 8002E2E4 AE750000 */  sw    $s5, ($s3)
/* 02EEE8 8002E2E8 12C00042 */  beqz  $s6, .L8002E3F4
/* 02EEEC 8002E2EC E6280000 */   swc1  $f8, ($s1)
/* 02EEF0 8002E2F0 3C018012 */  lui   $at, %hi(D_8011D0B8) # $at, 0x8012
/* 02EEF4 8002E2F4 AC20D0B8 */  sw    $zero, %lo(D_8011D0B8)($at)
/* 02EEF8 8002E2F8 3C088012 */  lui   $t0, %hi(D_8011D364) # $t0, 0x8012
/* 02EEFC 8002E2FC 8D08D364 */  lw    $t0, %lo(D_8011D364)($t0)
/* 02EF00 8002E300 8EA90058 */  lw    $t1, 0x58($s5)
/* 02EF04 8002E304 00000000 */  nop   
/* 02EF08 8002E308 A5280008 */  sh    $t0, 8($t1)
/* 02EF0C 8002E30C 8EA20058 */  lw    $v0, 0x58($s5)
/* 02EF10 8002E310 00000000 */  nop   
/* 02EF14 8002E314 8445000C */  lh    $a1, 0xc($v0)
/* 02EF18 8002E318 8C440004 */  lw    $a0, 4($v0)
/* 02EF1C 8002E31C 00055200 */  sll   $t2, $a1, 8
/* 02EF20 8002E320 01402825 */  move  $a1, $t2
/* 02EF24 8002E324 0C01ED1B */  jal   func_8007B46C
/* 02EF28 8002E328 E7B2006C */   swc1  $f18, 0x6c($sp)
/* 02EF2C 8002E32C 3C018012 */  lui   $at, %hi(D_8011D0C0) # $at, 0x8012
/* 02EF30 8002E330 AC22D0C0 */  sw    $v0, %lo(D_8011D0C0)($at)
/* 02EF34 8002E334 8EAB0040 */  lw    $t3, 0x40($s5)
/* 02EF38 8002E338 3C148012 */  lui   $s4, %hi(D_8011D0CE) # $s4, 0x8012
/* 02EF3C 8002E33C 856C0048 */  lh    $t4, 0x48($t3)
/* 02EF40 8002E340 2694D0CE */  addiu $s4, %lo(D_8011D0CE) # addiu $s4, $s4, -0x2f32
/* 02EF44 8002E344 01906821 */  addu  $t5, $t4, $s0
/* 02EF48 8002E348 A68D0000 */  sh    $t5, ($s4)
/* 02EF4C 8002E34C 8EAE0040 */  lw    $t6, 0x40($s5)
/* 02EF50 8002E350 3C198012 */  lui   $t9, %hi(D_8011D384) # $t9, 0x8012
/* 02EF54 8002E354 85CF0046 */  lh    $t7, 0x46($t6)
/* 02EF58 8002E358 8F39D384 */  lw    $t9, %lo(D_8011D384)($t9)
/* 02EF5C 8002E35C C7B2006C */  lwc1  $f18, 0x6c($sp)
/* 02EF60 8002E360 3C018012 */  lui   $at, %hi(D_8011D0CC) # $at, 0x8012
/* 02EF64 8002E364 01F0C021 */  addu  $t8, $t7, $s0
/* 02EF68 8002E368 13200006 */  beqz  $t9, .L8002E384
/* 02EF6C 8002E36C A438D0CC */   sh    $t8, %lo(D_8011D0CC)($at)
/* 02EF70 8002E370 0C019884 */  jal   func_80066210
/* 02EF74 8002E374 E7B2006C */   swc1  $f18, 0x6c($sp)
/* 02EF78 8002E378 C7B2006C */  lwc1  $f18, 0x6c($sp)
/* 02EF7C 8002E37C 1C400004 */  bgtz  $v0, .L8002E390
/* 02EF80 8002E380 00000000 */   nop   
.L8002E384:
/* 02EF84 8002E384 44805000 */  mtc1  $zero, $f10
/* 02EF88 8002E388 00000000 */  nop   
/* 02EF8C 8002E38C E62A0000 */  swc1  $f10, ($s1)
.L8002E390:
/* 02EF90 8002E390 8EA80058 */  lw    $t0, 0x58($s5)
/* 02EF94 8002E394 3C038012 */  lui   $v1, %hi(D_8011D0D8) # $v1, 0x8012
/* 02EF98 8002E398 C5040000 */  lwc1  $f4, ($t0)
/* 02EF9C 8002E39C 2463D0D8 */  addiu $v1, %lo(D_8011D0D8) # addiu $v1, $v1, -0x2f28
/* 02EFA0 8002E3A0 46122182 */  mul.s $f6, $f4, $f18
/* 02EFA4 8002E3A4 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 02EFA8 8002E3A8 44814000 */  mtc1  $at, $f8
/* 02EFAC 8002E3AC 3C018012 */  lui   $at, %hi(D_8011D0DC) # $at, 0x8012
/* 02EFB0 8002E3B0 E4660000 */  swc1  $f6, ($v1)
/* 02EFB4 8002E3B4 C4700000 */  lwc1  $f16, ($v1)
/* 02EFB8 8002E3B8 3C028012 */  lui   $v0, %hi(D_8011D0F0) # $v0, 0x8012
/* 02EFBC 8002E3BC 46088002 */  mul.s $f0, $f16, $f8
/* 02EFC0 8002E3C0 2442D0F0 */  addiu $v0, %lo(D_8011D0F0) # addiu $v0, $v0, -0x2f10
/* 02EFC4 8002E3C4 E420D0DC */  swc1  $f0, %lo(D_8011D0DC)($at)
/* 02EFC8 8002E3C8 3C018012 */  lui   $at, %hi(D_8011D0E0) # $at, 0x8012
/* 02EFCC 8002E3CC E420D0E0 */  swc1  $f0, %lo(D_8011D0E0)($at)
/* 02EFD0 8002E3D0 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 02EFD4 8002E3D4 44815000 */  mtc1  $at, $f10
/* 02EFD8 8002E3D8 3C018012 */  lui   $at, %hi(D_8011D0DC) # $at, 0x8012
/* 02EFDC 8002E3DC E44A0000 */  swc1  $f10, ($v0)
/* 02EFE0 8002E3E0 C42CD0DC */  lwc1  $f12, %lo(D_8011D0DC)($at)
/* 02EFE4 8002E3E4 3C018012 */  lui   $at, %hi(D_8011D0E0) # $at, 0x8012
/* 02EFE8 8002E3E8 C42ED0E0 */  lwc1  $f14, %lo(D_8011D0E0)($at)
/* 02EFEC 8002E3EC 10000076 */  b     .L8002E5C8
/* 02EFF0 8002E3F0 3C014310 */   lui   $at, 0x4310
.L8002E3F4:
/* 02EFF4 8002E3F4 3C098012 */  lui   $t1, %hi(D_8011D364) # $t1, 0x8012
/* 02EFF8 8002E3F8 8D29D364 */  lw    $t1, %lo(D_8011D364)($t1)
/* 02EFFC 8002E3FC 8EAA0050 */  lw    $t2, 0x50($s5)
/* 02F000 8002E400 3C018012 */  lui   $at, %hi(D_8011D0C0) # $at, 0x8012
/* 02F004 8002E404 A5490008 */  sh    $t1, 8($t2)
/* 02F008 8002E408 8EAB0050 */  lw    $t3, 0x50($s5)
/* 02F00C 8002E40C 3C148012 */  lui   $s4, %hi(D_8011D0CE) # $s4, 0x8012
/* 02F010 8002E410 8D6C0004 */  lw    $t4, 4($t3)
/* 02F014 8002E414 2694D0CE */  addiu $s4, %lo(D_8011D0CE) # addiu $s4, $s4, -0x2f32
/* 02F018 8002E418 AC2CD0C0 */  sw    $t4, %lo(D_8011D0C0)($at)
/* 02F01C 8002E41C 8EAD0040 */  lw    $t5, 0x40($s5)
/* 02F020 8002E420 3C018012 */  lui   $at, %hi(D_8011D0CC) # $at, 0x8012
/* 02F024 8002E424 85AE0044 */  lh    $t6, 0x44($t5)
/* 02F028 8002E428 00000000 */  nop   
/* 02F02C 8002E42C 01D07821 */  addu  $t7, $t6, $s0
/* 02F030 8002E430 A68F0000 */  sh    $t7, ($s4)
/* 02F034 8002E434 8EB80040 */  lw    $t8, 0x40($s5)
/* 02F038 8002E438 00000000 */  nop   
/* 02F03C 8002E43C 87190042 */  lh    $t9, 0x42($t8)
/* 02F040 8002E440 00000000 */  nop   
/* 02F044 8002E444 03304021 */  addu  $t0, $t9, $s0
/* 02F048 8002E448 A428D0CC */  sh    $t0, %lo(D_8011D0CC)($at)
/* 02F04C 8002E44C 86A90048 */  lh    $t1, 0x48($s5)
/* 02F050 8002E450 00000000 */  nop   
/* 02F054 8002E454 12490025 */  beq   $s2, $t1, .L8002E4EC
/* 02F058 8002E458 00000000 */   nop   
/* 02F05C 8002E45C C6A20030 */  lwc1  $f2, 0x30($s5)
/* 02F060 8002E460 44806800 */  mtc1  $zero, $f13
/* 02F064 8002E464 44806000 */  mtc1  $zero, $f12
/* 02F068 8002E468 46001021 */  cvt.d.s $f0, $f2
/* 02F06C 8002E46C 462C003C */  c.lt.d $f0, $f12
/* 02F070 8002E470 44802000 */  mtc1  $zero, $f4
/* 02F074 8002E474 45000003 */  bc1f  .L8002E484
/* 02F078 8002E478 3C014080 */   li    $at, 0x40800000 # 4.000000
/* 02F07C 8002E47C 46001087 */  neg.s $f2, $f2
/* 02F080 8002E480 46001021 */  cvt.d.s $f0, $f2
.L8002E484:
/* 02F084 8002E484 44812800 */  mtc1  $at, $f5
/* 02F088 8002E488 3C014090 */  li    $at, 0x40900000 # 4.500000
/* 02F08C 8002E48C 46240181 */  sub.d $f6, $f0, $f4
/* 02F090 8002E490 44814800 */  mtc1  $at, $f9
/* 02F094 8002E494 462030A0 */  cvt.s.d $f2, $f6
/* 02F098 8002E498 44804000 */  mtc1  $zero, $f8
/* 02F09C 8002E49C 46001021 */  cvt.d.s $f0, $f2
/* 02F0A0 8002E4A0 462C003C */  c.lt.d $f0, $f12
/* 02F0A4 8002E4A4 3C014480 */  li    $at, 0x44800000 # 1024.000000
/* 02F0A8 8002E4A8 45000004 */  bc1f  .L8002E4BC
/* 02F0AC 8002E4AC 00000000 */   nop   
/* 02F0B0 8002E4B0 44801000 */  mtc1  $zero, $f2
/* 02F0B4 8002E4B4 00000000 */  nop   
/* 02F0B8 8002E4B8 46001021 */  cvt.d.s $f0, $f2
.L8002E4BC:
/* 02F0BC 8002E4BC 4620403C */  c.lt.d $f8, $f0
/* 02F0C0 8002E4C0 00000000 */  nop   
/* 02F0C4 8002E4C4 45000003 */  bc1f  .L8002E4D4
/* 02F0C8 8002E4C8 00000000 */   nop   
/* 02F0CC 8002E4CC 44811000 */  mtc1  $at, $f2
/* 02F0D0 8002E4D0 00000000 */  nop   
.L8002E4D4:
/* 02F0D4 8002E4D4 3C01800E */  lui   $at, %hi(D_800E5F50) # $at, 0x800e
/* 02F0D8 8002E4D8 C4245F50 */  lwc1  $f4, %lo(D_800E5F50)($at)
/* 02F0DC 8002E4DC C62A0000 */  lwc1  $f10, ($s1)
/* 02F0E0 8002E4E0 46041182 */  mul.s $f6, $f2, $f4
/* 02F0E4 8002E4E4 46065200 */  add.s $f8, $f10, $f6
/* 02F0E8 8002E4E8 E6280000 */  swc1  $f8, ($s1)
.L8002E4EC:
/* 02F0EC 8002E4EC 8EAA0050 */  lw    $t2, 0x50($s5)
/* 02F0F0 8002E4F0 3C038012 */  lui   $v1, %hi(D_8011D0D8) # $v1, 0x8012
/* 02F0F4 8002E4F4 C5440000 */  lwc1  $f4, ($t2)
/* 02F0F8 8002E4F8 2463D0D8 */  addiu $v1, %lo(D_8011D0D8) # addiu $v1, $v1, -0x2f28
/* 02F0FC 8002E4FC 46122282 */  mul.s $f10, $f4, $f18
/* 02F100 8002E500 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 02F104 8002E504 44813000 */  mtc1  $at, $f6
/* 02F108 8002E508 3C018012 */  lui   $at, %hi(D_8011D0DC) # $at, 0x8012
/* 02F10C 8002E50C E46A0000 */  swc1  $f10, ($v1)
/* 02F110 8002E510 C4700000 */  lwc1  $f16, ($v1)
/* 02F114 8002E514 3C028012 */  lui   $v0, %hi(D_8011D0F0) # $v0, 0x8012
/* 02F118 8002E518 46068002 */  mul.s $f0, $f16, $f6
/* 02F11C 8002E51C 2442D0F0 */  addiu $v0, %lo(D_8011D0F0) # addiu $v0, $v0, -0x2f10
/* 02F120 8002E520 E420D0DC */  swc1  $f0, %lo(D_8011D0DC)($at)
/* 02F124 8002E524 3C018012 */  lui   $at, %hi(D_8011D0E0) # $at, 0x8012
/* 02F128 8002E528 E420D0E0 */  swc1  $f0, %lo(D_8011D0E0)($at)
/* 02F12C 8002E52C 3C018012 */  lui   $at, %hi(D_8011D0DC) # $at, 0x8012
/* 02F130 8002E530 C42CD0DC */  lwc1  $f12, %lo(D_8011D0DC)($at)
/* 02F134 8002E534 3C018012 */  lui   $at, %hi(D_8011D0E0) # $at, 0x8012
/* 02F138 8002E538 C42ED0E0 */  lwc1  $f14, %lo(D_8011D0E0)($at)
/* 02F13C 8002E53C 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 02F140 8002E540 44814000 */  mtc1  $at, $f8
/* 02F144 8002E544 3C018012 */  lui   $at, %hi(D_8011D0E4) # $at, 0x8012
/* 02F148 8002E548 460C4102 */  mul.s $f4, $f8, $f12
/* 02F14C 8002E54C 00000000 */  nop   
/* 02F150 8002E550 460E2282 */  mul.s $f10, $f4, $f14
/* 02F154 8002E554 E42AD0E4 */  swc1  $f10, %lo(D_8011D0E4)($at)
/* 02F158 8002E558 8EAB0040 */  lw    $t3, 0x40($s5)
/* 02F15C 8002E55C 3C013E00 */  li    $at, 0x3E000000 # 0.125000
/* 02F160 8002E560 856C0042 */  lh    $t4, 0x42($t3)
/* 02F164 8002E564 44812000 */  mtc1  $at, $f4
/* 02F168 8002E568 448C3000 */  mtc1  $t4, $f6
/* 02F16C 8002E56C 3C0140E0 */  li    $at, 0x40E00000 # 7.000000
/* 02F170 8002E570 46803220 */  cvt.s.w $f8, $f6
/* 02F174 8002E574 44803000 */  mtc1  $zero, $f6
/* 02F178 8002E578 46044282 */  mul.s $f10, $f8, $f4
/* 02F17C 8002E57C 44812000 */  mtc1  $at, $f4
/* 02F180 8002E580 E44A0000 */  swc1  $f10, ($v0)
/* 02F184 8002E584 C4420000 */  lwc1  $f2, ($v0)
/* 02F188 8002E588 00000000 */  nop   
/* 02F18C 8002E58C 4606103C */  c.lt.s $f2, $f6
/* 02F190 8002E590 00000000 */  nop   
/* 02F194 8002E594 45000005 */  bc1f  .L8002E5AC
/* 02F198 8002E598 00000000 */   nop   
/* 02F19C 8002E59C 46001207 */  neg.s $f8, $f2
/* 02F1A0 8002E5A0 E4480000 */  swc1  $f8, ($v0)
/* 02F1A4 8002E5A4 C4420000 */  lwc1  $f2, ($v0)
/* 02F1A8 8002E5A8 00000000 */  nop   
.L8002E5AC:
/* 02F1AC 8002E5AC 46022282 */  mul.s $f10, $f4, $f2
/* 02F1B0 8002E5B0 3C018012 */  lui   $at, %hi(D_8011D0F4) # $at, 0x8012
/* 02F1B4 8002E5B4 240D8000 */  li    $t5, -32768
/* 02F1B8 8002E5B8 E42AD0F4 */  swc1  $f10, %lo(D_8011D0F4)($at)
/* 02F1BC 8002E5BC 3C018012 */  lui   $at, %hi(D_8011D0D0) # $at, 0x8012
/* 02F1C0 8002E5C0 A42DD0D0 */  sh    $t5, %lo(D_8011D0D0)($at)
/* 02F1C4 8002E5C4 3C014310 */  li    $at, 0x43100000 # 144.000000
.L8002E5C8:
/* 02F1C8 8002E5C8 44813000 */  mtc1  $at, $f6
/* 02F1CC 8002E5CC 8E620000 */  lw    $v0, ($s3)
/* 02F1D0 8002E5D0 46103203 */  div.s $f8, $f6, $f16
/* 02F1D4 8002E5D4 868C0000 */  lh    $t4, ($s4)
/* 02F1D8 8002E5D8 3C068012 */  lui   $a2, %hi(D_8011D0CC) # $a2, 0x8012
/* 02F1DC 8002E5DC 27A40078 */  addiu $a0, $sp, 0x78
/* 02F1E0 8002E5E0 E4680000 */  swc1  $f8, ($v1)
/* 02F1E4 8002E5E4 C440000C */  lwc1  $f0, 0xc($v0)
/* 02F1E8 8002E5E8 C4420014 */  lwc1  $f2, 0x14($v0)
/* 02F1EC 8002E5EC 460C0101 */  sub.s $f4, $f0, $f12
/* 02F1F0 8002E5F0 84C6D0CC */  lh    $a2, %lo(D_8011D0CC)($a2)
/* 02F1F4 8002E5F4 444EF800 */  cfc1  $t6, $31
/* 02F1F8 8002E5F8 AFAC0014 */  sw    $t4, 0x14($sp)
/* 02F1FC 8002E5FC 35C10003 */  ori   $at, $t6, 3
/* 02F200 8002E600 38210002 */  xori  $at, $at, 2
/* 02F204 8002E604 44C1F800 */  ctc1  $at, $31
/* 02F208 8002E608 00000000 */  nop   
/* 02F20C 8002E60C 460022A4 */  cvt.w.s $f10, $f4
/* 02F210 8002E610 44CEF800 */  ctc1  $t6, $31
/* 02F214 8002E614 44055000 */  mfc1  $a1, $f10
/* 02F218 8002E618 460E1181 */  sub.s $f6, $f2, $f14
/* 02F21C 8002E61C 00057C00 */  sll   $t7, $a1, 0x10
/* 02F220 8002E620 4459F800 */  cfc1  $t9, $31
/* 02F224 8002E624 000F2C03 */  sra   $a1, $t7, 0x10
/* 02F228 8002E628 37210003 */  ori   $at, $t9, 3
/* 02F22C 8002E62C 38210002 */  xori  $at, $at, 2
/* 02F230 8002E630 44C1F800 */  ctc1  $at, $31
/* 02F234 8002E634 00000000 */  nop   
/* 02F238 8002E638 46003224 */  cvt.w.s $f8, $f6
/* 02F23C 8002E63C 44D9F800 */  ctc1  $t9, $31
/* 02F240 8002E640 44074000 */  mfc1  $a3, $f8
/* 02F244 8002E644 460C0100 */  add.s $f4, $f0, $f12
/* 02F248 8002E648 00074400 */  sll   $t0, $a3, 0x10
/* 02F24C 8002E64C 444AF800 */  cfc1  $t2, $31
/* 02F250 8002E650 00083C03 */  sra   $a3, $t0, 0x10
/* 02F254 8002E654 35410003 */  ori   $at, $t2, 3
/* 02F258 8002E658 38210002 */  xori  $at, $at, 2
/* 02F25C 8002E65C 44C1F800 */  ctc1  $at, $31
/* 02F260 8002E660 00000000 */  nop   
/* 02F264 8002E664 460022A4 */  cvt.w.s $f10, $f4
/* 02F268 8002E668 44CAF800 */  ctc1  $t2, $31
/* 02F26C 8002E66C 440B5000 */  mfc1  $t3, $f10
/* 02F270 8002E670 460E1180 */  add.s $f6, $f2, $f14
/* 02F274 8002E674 AFAB0010 */  sw    $t3, 0x10($sp)
/* 02F278 8002E678 444DF800 */  cfc1  $t5, $31
/* 02F27C 8002E67C 00000000 */  nop   
/* 02F280 8002E680 35A10003 */  ori   $at, $t5, 3
/* 02F284 8002E684 38210002 */  xori  $at, $at, 2
/* 02F288 8002E688 44C1F800 */  ctc1  $at, $31
/* 02F28C 8002E68C 00000000 */  nop   
/* 02F290 8002E690 46003224 */  cvt.w.s $f8, $f6
/* 02F294 8002E694 440E4000 */  mfc1  $t6, $f8
/* 02F298 8002E698 44CDF800 */  ctc1  $t5, $31
/* 02F29C 8002E69C 0C00A84D */  jal   func_8002A134
/* 02F2A0 8002E6A0 AFAE0018 */   sw    $t6, 0x18($sp)
/* 02F2A4 8002E6A4 3C018012 */  lui   $at, %hi(D_8011C230) # $at, 0x8012
/* 02F2A8 8002E6A8 AC20C230 */  sw    $zero, %lo(D_8011C230)($at)
/* 02F2AC 8002E6AC 3C018012 */  lui   $at, %hi(D_8011B118) # $at, 0x8012
/* 02F2B0 8002E6B0 3C038012 */  lui   $v1, %hi(D_8011B320) # $v1, 0x8012
/* 02F2B4 8002E6B4 3C048012 */  lui   $a0, %hi(D_8011B330) # $a0, 0x8012
/* 02F2B8 8002E6B8 AFA20070 */  sw    $v0, 0x70($sp)
/* 02F2BC 8002E6BC AC20B118 */  sw    $zero, %lo(D_8011B118)($at)
/* 02F2C0 8002E6C0 2484B330 */  addiu $a0, %lo(D_8011B330) # addiu $a0, $a0, -0x4cd0
/* 02F2C4 8002E6C4 2463B320 */  addiu $v1, %lo(D_8011B320) # addiu $v1, $v1, -0x4ce0
.L8002E6C8:
/* 02F2C8 8002E6C8 24630004 */  addiu $v1, $v1, 4
/* 02F2CC 8002E6CC 0064082B */  sltu  $at, $v1, $a0
/* 02F2D0 8002E6D0 1420FFFD */  bnez  $at, .L8002E6C8
/* 02F2D4 8002E6D4 AC60FFFC */   sw    $zero, -4($v1)
/* 02F2D8 8002E6D8 2403FFFF */  li    $v1, -1
/* 02F2DC 8002E6DC 3C018012 */  lui   $at, %hi(D_8011D0E8) # $at, 0x8012
/* 02F2E0 8002E6E0 AC23D0E8 */  sw    $v1, %lo(D_8011D0E8)($at)
/* 02F2E4 8002E6E4 3C018012 */  lui   $at, %hi(D_8011D0EC) # $at, 0x8012
/* 02F2E8 8002E6E8 AC23D0EC */  sw    $v1, %lo(D_8011D0EC)($at)
/* 02F2EC 8002E6EC 1840005C */  blez  $v0, .L8002E860
/* 02F2F0 8002E6F0 00009025 */   move  $s2, $zero
/* 02F2F4 8002E6F4 3C13800E */  lui   $s3, %hi(D_800DC918) # $s3, 0x800e
/* 02F2F8 8002E6F8 2673C918 */  addiu $s3, %lo(D_800DC918) # addiu $s3, $s3, -0x36e8
/* 02F2FC 8002E6FC 27B10078 */  addiu $s1, $sp, 0x78
/* 02F300 8002E700 24140044 */  li    $s4, 68
.L8002E704:
/* 02F304 8002E704 8E300000 */  lw    $s0, ($s1)
/* 02F308 8002E708 00000000 */  nop   
/* 02F30C 8002E70C 06000051 */  bltz  $s0, .L8002E854
/* 02F310 8002E710 8FAD0070 */   lw    $t5, 0x70($sp)
/* 02F314 8002E714 12C00013 */  beqz  $s6, .L8002E764
/* 02F318 8002E718 3C018012 */   lui   $at, %hi(D_8011D0DC) # $at, 0x8012
/* 02F31C 8002E71C 02140019 */  multu $s0, $s4
/* 02F320 8002E720 8E6F0000 */  lw    $t7, ($s3)
/* 02F324 8002E724 3C0A8012 */  lui   $t2, %hi(D_8011D384) # $t2, 0x8012
/* 02F328 8002E728 8DF80004 */  lw    $t8, 4($t7)
/* 02F32C 8002E72C 0000C812 */  mflo  $t9
/* 02F330 8002E730 03194021 */  addu  $t0, $t8, $t9
/* 02F334 8002E734 8109002B */  lb    $t1, 0x2b($t0)
/* 02F338 8002E738 00000000 */  nop   
/* 02F33C 8002E73C 11200009 */  beqz  $t1, .L8002E764
/* 02F340 8002E740 00000000 */   nop   
/* 02F344 8002E744 8D4AD384 */  lw    $t2, %lo(D_8011D384)($t2)
/* 02F348 8002E748 00000000 */  nop   
/* 02F34C 8002E74C 11400005 */  beqz  $t2, .L8002E764
/* 02F350 8002E750 00000000 */   nop   
/* 02F354 8002E754 0C00BBBB */  jal   func_8002EEEC
/* 02F358 8002E758 02002025 */   move  $a0, $s0
/* 02F35C 8002E75C 1000003D */  b     .L8002E854
/* 02F360 8002E760 8FAD0070 */   lw    $t5, 0x70($sp)
.L8002E764:
/* 02F364 8002E764 C6A0000C */  lwc1  $f0, 0xc($s5)
/* 02F368 8002E768 C42CD0DC */  lwc1  $f12, %lo(D_8011D0DC)($at)
/* 02F36C 8002E76C C6A20014 */  lwc1  $f2, 0x14($s5)
/* 02F370 8002E770 460C0101 */  sub.s $f4, $f0, $f12
/* 02F374 8002E774 8E6C0000 */  lw    $t4, ($s3)
/* 02F378 8002E778 444EF800 */  cfc1  $t6, $31
/* 02F37C 8002E77C 00105880 */  sll   $t3, $s0, 2
/* 02F380 8002E780 35C10003 */  ori   $at, $t6, 3
/* 02F384 8002E784 38210002 */  xori  $at, $at, 2
/* 02F388 8002E788 44C1F800 */  ctc1  $at, $31
/* 02F38C 8002E78C 3C018012 */  lui   $at, %hi(D_8011D0E0) # $at, 0x8012
/* 02F390 8002E790 460022A4 */  cvt.w.s $f10, $f4
/* 02F394 8002E794 C42ED0E0 */  lwc1  $f14, %lo(D_8011D0E0)($at)
/* 02F398 8002E798 44CEF800 */  ctc1  $t6, $31
/* 02F39C 8002E79C 44055000 */  mfc1  $a1, $f10
/* 02F3A0 8002E7A0 460E1181 */  sub.s $f6, $f2, $f14
/* 02F3A4 8002E7A4 8D8D0008 */  lw    $t5, 8($t4)
/* 02F3A8 8002E7A8 444FF800 */  cfc1  $t7, $31
/* 02F3AC 8002E7AC 01705823 */  subu  $t3, $t3, $s0
/* 02F3B0 8002E7B0 35E10003 */  ori   $at, $t7, 3
/* 02F3B4 8002E7B4 38210002 */  xori  $at, $at, 2
/* 02F3B8 8002E7B8 44C1F800 */  ctc1  $at, $31
/* 02F3BC 8002E7BC 000B5880 */  sll   $t3, $t3, 2
/* 02F3C0 8002E7C0 46003224 */  cvt.w.s $f8, $f6
/* 02F3C4 8002E7C4 016D2021 */  addu  $a0, $t3, $t5
/* 02F3C8 8002E7C8 44CFF800 */  ctc1  $t7, $31
/* 02F3CC 8002E7CC 44064000 */  mfc1  $a2, $f8
/* 02F3D0 8002E7D0 460C0100 */  add.s $f4, $f0, $f12
/* 02F3D4 8002E7D4 4458F800 */  cfc1  $t8, $31
/* 02F3D8 8002E7D8 00000000 */  nop   
/* 02F3DC 8002E7DC 37010003 */  ori   $at, $t8, 3
/* 02F3E0 8002E7E0 38210002 */  xori  $at, $at, 2
/* 02F3E4 8002E7E4 44C1F800 */  ctc1  $at, $31
/* 02F3E8 8002E7E8 00000000 */  nop   
/* 02F3EC 8002E7EC 460022A4 */  cvt.w.s $f10, $f4
/* 02F3F0 8002E7F0 44D8F800 */  ctc1  $t8, $31
/* 02F3F4 8002E7F4 44075000 */  mfc1  $a3, $f10
/* 02F3F8 8002E7F8 460E1180 */  add.s $f6, $f2, $f14
/* 02F3FC 8002E7FC 4459F800 */  cfc1  $t9, $31
/* 02F400 8002E800 00000000 */  nop   
/* 02F404 8002E804 37210003 */  ori   $at, $t9, 3
/* 02F408 8002E808 38210002 */  xori  $at, $at, 2
/* 02F40C 8002E80C 44C1F800 */  ctc1  $at, $31
/* 02F410 8002E810 00000000 */  nop   
/* 02F414 8002E814 46003224 */  cvt.w.s $f8, $f6
/* 02F418 8002E818 44084000 */  mfc1  $t0, $f8
/* 02F41C 8002E81C 44D9F800 */  ctc1  $t9, $31
/* 02F420 8002E820 0C00C537 */  jal   func_800314DC
/* 02F424 8002E824 AFA80010 */   sw    $t0, 0x10($sp)
/* 02F428 8002E828 8E290000 */  lw    $t1, ($s1)
/* 02F42C 8002E82C 8E6C0000 */  lw    $t4, ($s3)
/* 02F430 8002E830 01340019 */  multu $t1, $s4
/* 02F434 8002E834 8D8B0004 */  lw    $t3, 4($t4)
/* 02F438 8002E838 00402825 */  move  $a1, $v0
/* 02F43C 8002E83C 02C03025 */  move  $a2, $s6
/* 02F440 8002E840 00005012 */  mflo  $t2
/* 02F444 8002E844 014B2021 */  addu  $a0, $t2, $t3
/* 02F448 8002E848 0C00BA41 */  jal   func_8002E904
/* 02F44C 8002E84C 00000000 */   nop   
/* 02F450 8002E850 8FAD0070 */  lw    $t5, 0x70($sp)
.L8002E854:
/* 02F454 8002E854 26520001 */  addiu $s2, $s2, 1
/* 02F458 8002E858 164DFFAA */  bne   $s2, $t5, .L8002E704
/* 02F45C 8002E85C 26310004 */   addiu $s1, $s1, 4
.L8002E860:
/* 02F460 8002E860 3C0E8012 */  lui   $t6, %hi(D_8011C230) # $t6, 0x8012
/* 02F464 8002E864 8DCEC230 */  lw    $t6, %lo(D_8011C230)($t6)
/* 02F468 8002E868 00000000 */  nop   
/* 02F46C 8002E86C 19C00010 */  blez  $t6, .L8002E8B0
/* 02F470 8002E870 00000000 */   nop   
/* 02F474 8002E874 8EAF0054 */  lw    $t7, 0x54($s5)
/* 02F478 8002E878 00000000 */  nop   
/* 02F47C 8002E87C 11E00008 */  beqz  $t7, .L8002E8A0
/* 02F480 8002E880 00000000 */   nop   
/* 02F484 8002E884 16C00006 */  bnez  $s6, .L8002E8A0
/* 02F488 8002E888 00000000 */   nop   
/* 02F48C 8002E88C 0C00BE99 */  jal   func_8002FA64
/* 02F490 8002E890 00000000 */   nop   
/* 02F494 8002E894 8EB80054 */  lw    $t8, 0x54($s5)
/* 02F498 8002E898 00000000 */  nop   
/* 02F49C 8002E89C E7000000 */  swc1  $f0, ($t8)
.L8002E8A0:
/* 02F4A0 8002E8A0 0C00BCAB */  jal   func_8002F2AC
/* 02F4A4 8002E8A4 00000000 */   nop   
/* 02F4A8 8002E8A8 0C00BD10 */  jal   func_8002F440
/* 02F4AC 8002E8AC 00000000 */   nop   
.L8002E8B0:
/* 02F4B0 8002E8B0 16C00006 */  bnez  $s6, .L8002E8CC
/* 02F4B4 8002E8B4 3C098012 */   lui   $t1, %hi(D_8011D364) # $t1, 0x8012
/* 02F4B8 8002E8B8 3C198012 */  lui   $t9, %hi(D_8011D364) # $t9, 0x8012
/* 02F4BC 8002E8BC 8F39D364 */  lw    $t9, %lo(D_8011D364)($t9)
/* 02F4C0 8002E8C0 8EA80050 */  lw    $t0, 0x50($s5)
/* 02F4C4 8002E8C4 10000005 */  b     .L8002E8DC
/* 02F4C8 8002E8C8 A519000A */   sh    $t9, 0xa($t0)
.L8002E8CC:
/* 02F4CC 8002E8CC 8D29D364 */  lw    $t1, %lo(D_8011D364)($t1)
/* 02F4D0 8002E8D0 8EAC0058 */  lw    $t4, 0x58($s5)
/* 02F4D4 8002E8D4 00000000 */  nop   
/* 02F4D8 8002E8D8 A589000A */  sh    $t1, 0xa($t4)
.L8002E8DC:
/* 02F4DC 8002E8DC 8FBF0044 */  lw    $ra, 0x44($sp)
/* 02F4E0 8002E8E0 8FB00028 */  lw    $s0, 0x28($sp)
/* 02F4E4 8002E8E4 8FB1002C */  lw    $s1, 0x2c($sp)
/* 02F4E8 8002E8E8 8FB20030 */  lw    $s2, 0x30($sp)
/* 02F4EC 8002E8EC 8FB30034 */  lw    $s3, 0x34($sp)
/* 02F4F0 8002E8F0 8FB40038 */  lw    $s4, 0x38($sp)
/* 02F4F4 8002E8F4 8FB5003C */  lw    $s5, 0x3c($sp)
/* 02F4F8 8002E8F8 8FB60040 */  lw    $s6, 0x40($sp)
/* 02F4FC 8002E8FC 03E00008 */  jr    $ra
/* 02F500 8002E900 27BD0100 */   addiu $sp, $sp, 0x100

