glabel func_800A7FBC
/* 0A8BBC 800A7FBC 27BDFF80 */  addiu $sp, $sp, -0x80
/* 0A8BC0 800A7FC0 44842000 */  mtc1  $a0, $f4
/* 0A8BC4 800A7FC4 44854000 */  mtc1  $a1, $f8
/* 0A8BC8 800A7FC8 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0A8BCC 800A7FCC 468021A0 */  cvt.s.w $f6, $f4
/* 0A8BD0 800A7FD0 44818000 */  mtc1  $at, $f16
/* 0A8BD4 800A7FD4 44809000 */  mtc1  $zero, $f18
/* 0A8BD8 800A7FD8 468042A0 */  cvt.s.w $f10, $f8
/* 0A8BDC 800A7FDC 8FAE0094 */  lw    $t6, 0x94($sp)
/* 0A8BE0 800A7FE0 AFBF0034 */  sw    $ra, 0x34($sp)
/* 0A8BE4 800A7FE4 AFB50030 */  sw    $s5, 0x30($sp)
/* 0A8BE8 800A7FE8 AFB4002C */  sw    $s4, 0x2c($sp)
/* 0A8BEC 800A7FEC AFB30028 */  sw    $s3, 0x28($sp)
/* 0A8BF0 800A7FF0 AFB20024 */  sw    $s2, 0x24($sp)
/* 0A8BF4 800A7FF4 AFB10020 */  sw    $s1, 0x20($sp)
/* 0A8BF8 800A7FF8 AFB0001C */  sw    $s0, 0x1c($sp)
/* 0A8BFC 800A7FFC E7B50010 */  swc1  $f21, 0x10($sp)
/* 0A8C00 800A8000 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A8C04 800A8004 AFA60088 */  sw    $a2, 0x88($sp)
/* 0A8C08 800A8008 AFA7008C */  sw    $a3, 0x8c($sp)
/* 0A8C0C 800A800C E7A6006C */  swc1  $f6, 0x6c($sp)
/* 0A8C10 800A8010 E7AA0070 */  swc1  $f10, 0x70($sp)
/* 0A8C14 800A8014 A7A00064 */  sh    $zero, 0x64($sp)
/* 0A8C18 800A8018 A7A00062 */  sh    $zero, 0x62($sp)
/* 0A8C1C 800A801C A7A00060 */  sh    $zero, 0x60($sp)
/* 0A8C20 800A8020 E7B00068 */  swc1  $f16, 0x68($sp)
/* 0A8C24 800A8024 15C0000A */  bnez  $t6, .L800A8050
/* 0A8C28 800A8028 E7B20074 */   swc1  $f18, 0x74($sp)
/* 0A8C2C 800A802C 240F000A */  li    $t7, 10
/* 0A8C30 800A8030 2418000B */  li    $t8, 11
/* 0A8C34 800A8034 2402000B */  li    $v0, 11
/* 0A8C38 800A8038 2403000A */  li    $v1, 10
/* 0A8C3C 800A803C AFAF0054 */  sw    $t7, 0x54($sp)
/* 0A8C40 800A8040 24080002 */  li    $t0, 2
/* 0A8C44 800A8044 24140009 */  li    $s4, 9
/* 0A8C48 800A8048 10000009 */  b     .L800A8070
/* 0A8C4C 800A804C AFB80048 */   sw    $t8, 0x48($sp)
.L800A8050:
/* 0A8C50 800A8050 24190007 */  li    $t9, 7
/* 0A8C54 800A8054 2409000C */  li    $t1, 12
/* 0A8C58 800A8058 2402000A */  li    $v0, 10
/* 0A8C5C 800A805C 24030008 */  li    $v1, 8
/* 0A8C60 800A8060 AFB90054 */  sw    $t9, 0x54($sp)
/* 0A8C64 800A8064 00004025 */  move  $t0, $zero
/* 0A8C68 800A8068 2414000A */  li    $s4, 10
/* 0A8C6C 800A806C AFA90048 */  sw    $t1, 0x48($sp)
.L800A8070:
/* 0A8C70 800A8070 8FAA0088 */  lw    $t2, 0x88($sp)
/* 0A8C74 800A8074 2415000A */  li    $s5, 10
/* 0A8C78 800A8078 0155001A */  div   $zero, $t2, $s5
/* 0A8C7C 800A807C 3C108012 */  lui   $s0, %hi(gHUDCurrDisplayList) # $s0, 0x8012
/* 0A8C80 800A8080 3C118012 */  lui   $s1, %hi(D_80126D00) # $s1, 0x8012
/* 0A8C84 800A8084 3C128012 */  lui   $s2, %hi(D_80126D04) # $s2, 0x8012
/* 0A8C88 800A8088 26526D04 */  addiu $s2, %lo(D_80126D04) # addiu $s2, $s2, 0x6d04
/* 0A8C8C 800A808C 26316D00 */  addiu $s1, %lo(D_80126D00) # addiu $s1, $s1, 0x6d00
/* 0A8C90 800A8090 26106CFC */  addiu $s0, %lo(gHUDCurrDisplayList) # addiu $s0, $s0, 0x6cfc
/* 0A8C94 800A8094 27B30060 */  addiu $s3, $sp, 0x60
/* 0A8C98 800A8098 A7B40066 */  sh    $s4, 0x66($sp)
/* 0A8C9C 800A809C 16A00002 */  bnez  $s5, .L800A80A8
/* 0A8CA0 800A80A0 00000000 */   nop   
/* 0A8CA4 800A80A4 0007000D */  break 7
.L800A80A8:
/* 0A8CA8 800A80A8 2401FFFF */  li    $at, -1
/* 0A8CAC 800A80AC 16A10004 */  bne   $s5, $at, .L800A80C0
/* 0A8CB0 800A80B0 3C018000 */   lui   $at, 0x8000
/* 0A8CB4 800A80B4 15410002 */  bne   $t2, $at, .L800A80C0
/* 0A8CB8 800A80B8 00000000 */   nop   
/* 0A8CBC 800A80BC 0006000D */  break 6
.L800A80C0:
/* 0A8CC0 800A80C0 02603825 */  move  $a3, $s3
/* 0A8CC4 800A80C4 02002025 */  move  $a0, $s0
/* 0A8CC8 800A80C8 02202825 */  move  $a1, $s1
/* 0A8CCC 800A80CC 02403025 */  move  $a2, $s2
/* 0A8CD0 800A80D0 AFA2005C */  sw    $v0, 0x5c($sp)
/* 0A8CD4 800A80D4 AFA30058 */  sw    $v1, 0x58($sp)
/* 0A8CD8 800A80D8 AFA80050 */  sw    $t0, 0x50($sp)
/* 0A8CDC 800A80DC 00005812 */  mflo  $t3
/* 0A8CE0 800A80E0 A7AB0078 */  sh    $t3, 0x78($sp)
/* 0A8CE4 800A80E4 0C02A980 */  jal   func_800AA600
/* 0A8CE8 800A80E8 00000000 */   nop   
/* 0A8CEC 800A80EC 8FAC0088 */  lw    $t4, 0x88($sp)
/* 0A8CF0 800A80F0 8FA2005C */  lw    $v0, 0x5c($sp)
/* 0A8CF4 800A80F4 0195001A */  div   $zero, $t4, $s5
/* 0A8CF8 800A80F8 44822000 */  mtc1  $v0, $f4
/* 0A8CFC 800A80FC C7A6006C */  lwc1  $f6, 0x6c($sp)
/* 0A8D00 800A8100 46802020 */  cvt.s.w $f0, $f4
/* 0A8D04 800A8104 8FA30058 */  lw    $v1, 0x58($sp)
/* 0A8D08 800A8108 8FA80050 */  lw    $t0, 0x50($sp)
/* 0A8D0C 800A810C 46003200 */  add.s $f8, $f6, $f0
/* 0A8D10 800A8110 E7A00044 */  swc1  $f0, 0x44($sp)
/* 0A8D14 800A8114 E7A8006C */  swc1  $f8, 0x6c($sp)
/* 0A8D18 800A8118 16A00002 */  bnez  $s5, .L800A8124
/* 0A8D1C 800A811C 00000000 */   nop   
/* 0A8D20 800A8120 0007000D */  break 7
.L800A8124:
/* 0A8D24 800A8124 2401FFFF */  li    $at, -1
/* 0A8D28 800A8128 16A10004 */  bne   $s5, $at, .L800A813C
/* 0A8D2C 800A812C 3C018000 */   lui   $at, 0x8000
/* 0A8D30 800A8130 15810002 */  bne   $t4, $at, .L800A813C
/* 0A8D34 800A8134 00000000 */   nop   
/* 0A8D38 800A8138 0006000D */  break 6
.L800A813C:
/* 0A8D3C 800A813C 02002025 */  move  $a0, $s0
/* 0A8D40 800A8140 02202825 */  move  $a1, $s1
/* 0A8D44 800A8144 02403025 */  move  $a2, $s2
/* 0A8D48 800A8148 02603825 */  move  $a3, $s3
/* 0A8D4C 800A814C 00006810 */  mfhi  $t5
/* 0A8D50 800A8150 A7AD0078 */  sh    $t5, 0x78($sp)
/* 0A8D54 800A8154 0C02A980 */  jal   func_800AA600
/* 0A8D58 800A8158 00000000 */   nop   
/* 0A8D5C 800A815C 8FA30058 */  lw    $v1, 0x58($sp)
/* 0A8D60 800A8160 8FA80050 */  lw    $t0, 0x50($sp)
/* 0A8D64 800A8164 44835000 */  mtc1  $v1, $f10
/* 0A8D68 800A8168 44882000 */  mtc1  $t0, $f4
/* 0A8D6C 800A816C 46805020 */  cvt.s.w $f0, $f10
/* 0A8D70 800A8170 C7B0006C */  lwc1  $f16, 0x6c($sp)
/* 0A8D74 800A8174 C7A60070 */  lwc1  $f6, 0x70($sp)
/* 0A8D78 800A8178 46802520 */  cvt.s.w $f20, $f4
/* 0A8D7C 800A817C 8FAE0048 */  lw    $t6, 0x48($sp)
/* 0A8D80 800A8180 A7A00078 */  sh    $zero, 0x78($sp)
/* 0A8D84 800A8184 46008480 */  add.s $f18, $f16, $f0
/* 0A8D88 800A8188 E7A00040 */  swc1  $f0, 0x40($sp)
/* 0A8D8C 800A818C 46143200 */  add.s $f8, $f6, $f20
/* 0A8D90 800A8190 E7B2006C */  swc1  $f18, 0x6c($sp)
/* 0A8D94 800A8194 E7A80070 */  swc1  $f8, 0x70($sp)
/* 0A8D98 800A8198 02002025 */  move  $a0, $s0
/* 0A8D9C 800A819C 02202825 */  move  $a1, $s1
/* 0A8DA0 800A81A0 02403025 */  move  $a2, $s2
/* 0A8DA4 800A81A4 02603825 */  move  $a3, $s3
/* 0A8DA8 800A81A8 0C02A980 */  jal   func_800AA600
/* 0A8DAC 800A81AC A7AE0066 */   sh    $t6, 0x66($sp)
/* 0A8DB0 800A81B0 8FB8008C */  lw    $t8, 0x8c($sp)
/* 0A8DB4 800A81B4 8FAF0054 */  lw    $t7, 0x54($sp)
/* 0A8DB8 800A81B8 0315001A */  div   $zero, $t8, $s5
/* 0A8DBC 800A81BC 448F5000 */  mtc1  $t7, $f10
/* 0A8DC0 800A81C0 C7B0006C */  lwc1  $f16, 0x6c($sp)
/* 0A8DC4 800A81C4 46805020 */  cvt.s.w $f0, $f10
/* 0A8DC8 800A81C8 C7A40070 */  lwc1  $f4, 0x70($sp)
/* 0A8DCC 800A81CC A7B40066 */  sh    $s4, 0x66($sp)
/* 0A8DD0 800A81D0 46008480 */  add.s $f18, $f16, $f0
/* 0A8DD4 800A81D4 E7A00038 */  swc1  $f0, 0x38($sp)
/* 0A8DD8 800A81D8 46142181 */  sub.s $f6, $f4, $f20
/* 0A8DDC 800A81DC E7B2006C */  swc1  $f18, 0x6c($sp)
/* 0A8DE0 800A81E0 E7A60070 */  swc1  $f6, 0x70($sp)
/* 0A8DE4 800A81E4 16A00002 */  bnez  $s5, .L800A81F0
/* 0A8DE8 800A81E8 00000000 */   nop   
/* 0A8DEC 800A81EC 0007000D */  break 7
.L800A81F0:
/* 0A8DF0 800A81F0 2401FFFF */  li    $at, -1
/* 0A8DF4 800A81F4 16A10004 */  bne   $s5, $at, .L800A8208
/* 0A8DF8 800A81F8 3C018000 */   lui   $at, 0x8000
/* 0A8DFC 800A81FC 17010002 */  bne   $t8, $at, .L800A8208
/* 0A8E00 800A8200 00000000 */   nop   
/* 0A8E04 800A8204 0006000D */  break 6
.L800A8208:
/* 0A8E08 800A8208 02002025 */  move  $a0, $s0
/* 0A8E0C 800A820C 02202825 */  move  $a1, $s1
/* 0A8E10 800A8210 02403025 */  move  $a2, $s2
/* 0A8E14 800A8214 02603825 */  move  $a3, $s3
/* 0A8E18 800A8218 0000C812 */  mflo  $t9
/* 0A8E1C 800A821C A7B90078 */  sh    $t9, 0x78($sp)
/* 0A8E20 800A8220 0C02A980 */  jal   func_800AA600
/* 0A8E24 800A8224 00000000 */   nop   
/* 0A8E28 800A8228 8FA9008C */  lw    $t1, 0x8c($sp)
/* 0A8E2C 800A822C C7A8006C */  lwc1  $f8, 0x6c($sp)
/* 0A8E30 800A8230 0135001A */  div   $zero, $t1, $s5
/* 0A8E34 800A8234 C7AA0044 */  lwc1  $f10, 0x44($sp)
/* 0A8E38 800A8238 02002025 */  move  $a0, $s0
/* 0A8E3C 800A823C 460A4400 */  add.s $f16, $f8, $f10
/* 0A8E40 800A8240 02202825 */  move  $a1, $s1
/* 0A8E44 800A8244 E7B0006C */  swc1  $f16, 0x6c($sp)
/* 0A8E48 800A8248 16A00002 */  bnez  $s5, .L800A8254
/* 0A8E4C 800A824C 00000000 */   nop   
/* 0A8E50 800A8250 0007000D */  break 7
.L800A8254:
/* 0A8E54 800A8254 2401FFFF */  li    $at, -1
/* 0A8E58 800A8258 16A10004 */  bne   $s5, $at, .L800A826C
/* 0A8E5C 800A825C 3C018000 */   lui   $at, 0x8000
/* 0A8E60 800A8260 15210002 */  bne   $t1, $at, .L800A826C
/* 0A8E64 800A8264 00000000 */   nop   
/* 0A8E68 800A8268 0006000D */  break 6
.L800A826C:
/* 0A8E6C 800A826C 02403025 */  move  $a2, $s2
/* 0A8E70 800A8270 02603825 */  move  $a3, $s3
/* 0A8E74 800A8274 00005010 */  mfhi  $t2
/* 0A8E78 800A8278 A7AA0078 */  sh    $t2, 0x78($sp)
/* 0A8E7C 800A827C 0C02A980 */  jal   func_800AA600
/* 0A8E80 800A8280 00000000 */   nop   
/* 0A8E84 800A8284 C7B2006C */  lwc1  $f18, 0x6c($sp)
/* 0A8E88 800A8288 C7A40040 */  lwc1  $f4, 0x40($sp)
/* 0A8E8C 800A828C C7A80070 */  lwc1  $f8, 0x70($sp)
/* 0A8E90 800A8290 8FAB0048 */  lw    $t3, 0x48($sp)
/* 0A8E94 800A8294 46049180 */  add.s $f6, $f18, $f4
/* 0A8E98 800A8298 A7A00078 */  sh    $zero, 0x78($sp)
/* 0A8E9C 800A829C 46144280 */  add.s $f10, $f8, $f20
/* 0A8EA0 800A82A0 E7A6006C */  swc1  $f6, 0x6c($sp)
/* 0A8EA4 800A82A4 E7AA0070 */  swc1  $f10, 0x70($sp)
/* 0A8EA8 800A82A8 02002025 */  move  $a0, $s0
/* 0A8EAC 800A82AC 02202825 */  move  $a1, $s1
/* 0A8EB0 800A82B0 02403025 */  move  $a2, $s2
/* 0A8EB4 800A82B4 02603825 */  move  $a3, $s3
/* 0A8EB8 800A82B8 0C02A980 */  jal   func_800AA600
/* 0A8EBC 800A82BC A7AB0066 */   sh    $t3, 0x66($sp)
/* 0A8EC0 800A82C0 8FAC0090 */  lw    $t4, 0x90($sp)
/* 0A8EC4 800A82C4 C7B0006C */  lwc1  $f16, 0x6c($sp)
/* 0A8EC8 800A82C8 0195001A */  div   $zero, $t4, $s5
/* 0A8ECC 800A82CC C7B20038 */  lwc1  $f18, 0x38($sp)
/* 0A8ED0 800A82D0 C7A60070 */  lwc1  $f6, 0x70($sp)
/* 0A8ED4 800A82D4 46128100 */  add.s $f4, $f16, $f18
/* 0A8ED8 800A82D8 A7B40066 */  sh    $s4, 0x66($sp)
/* 0A8EDC 800A82DC 46143201 */  sub.s $f8, $f6, $f20
/* 0A8EE0 800A82E0 E7A4006C */  swc1  $f4, 0x6c($sp)
/* 0A8EE4 800A82E4 E7A80070 */  swc1  $f8, 0x70($sp)
/* 0A8EE8 800A82E8 16A00002 */  bnez  $s5, .L800A82F4
/* 0A8EEC 800A82EC 00000000 */   nop   
/* 0A8EF0 800A82F0 0007000D */  break 7
.L800A82F4:
/* 0A8EF4 800A82F4 2401FFFF */  li    $at, -1
/* 0A8EF8 800A82F8 16A10004 */  bne   $s5, $at, .L800A830C
/* 0A8EFC 800A82FC 3C018000 */   lui   $at, 0x8000
/* 0A8F00 800A8300 15810002 */  bne   $t4, $at, .L800A830C
/* 0A8F04 800A8304 00000000 */   nop   
/* 0A8F08 800A8308 0006000D */  break 6
.L800A830C:
/* 0A8F0C 800A830C 02002025 */  move  $a0, $s0
/* 0A8F10 800A8310 02202825 */  move  $a1, $s1
/* 0A8F14 800A8314 02403025 */  move  $a2, $s2
/* 0A8F18 800A8318 02603825 */  move  $a3, $s3
/* 0A8F1C 800A831C 00006812 */  mflo  $t5
/* 0A8F20 800A8320 A7AD0078 */  sh    $t5, 0x78($sp)
/* 0A8F24 800A8324 0C02A980 */  jal   func_800AA600
/* 0A8F28 800A8328 00000000 */   nop   
/* 0A8F2C 800A832C 8FAE0090 */  lw    $t6, 0x90($sp)
/* 0A8F30 800A8330 C7AA006C */  lwc1  $f10, 0x6c($sp)
/* 0A8F34 800A8334 01D5001A */  div   $zero, $t6, $s5
/* 0A8F38 800A8338 C7B00044 */  lwc1  $f16, 0x44($sp)
/* 0A8F3C 800A833C 02002025 */  move  $a0, $s0
/* 0A8F40 800A8340 46105480 */  add.s $f18, $f10, $f16
/* 0A8F44 800A8344 02202825 */  move  $a1, $s1
/* 0A8F48 800A8348 E7B2006C */  swc1  $f18, 0x6c($sp)
/* 0A8F4C 800A834C 16A00002 */  bnez  $s5, .L800A8358
/* 0A8F50 800A8350 00000000 */   nop   
/* 0A8F54 800A8354 0007000D */  break 7
.L800A8358:
/* 0A8F58 800A8358 2401FFFF */  li    $at, -1
/* 0A8F5C 800A835C 16A10004 */  bne   $s5, $at, .L800A8370
/* 0A8F60 800A8360 3C018000 */   lui   $at, 0x8000
/* 0A8F64 800A8364 15C10002 */  bne   $t6, $at, .L800A8370
/* 0A8F68 800A8368 00000000 */   nop   
/* 0A8F6C 800A836C 0006000D */  break 6
.L800A8370:
/* 0A8F70 800A8370 02403025 */  move  $a2, $s2
/* 0A8F74 800A8374 02603825 */  move  $a3, $s3
/* 0A8F78 800A8378 00007810 */  mfhi  $t7
/* 0A8F7C 800A837C A7AF0078 */  sh    $t7, 0x78($sp)
/* 0A8F80 800A8380 0C02A980 */  jal   func_800AA600
/* 0A8F84 800A8384 00000000 */   nop   
/* 0A8F88 800A8388 8FBF0034 */  lw    $ra, 0x34($sp)
/* 0A8F8C 800A838C C7B50010 */  lwc1  $f21, 0x10($sp)
/* 0A8F90 800A8390 C7B40014 */  lwc1  $f20, 0x14($sp)
/* 0A8F94 800A8394 8FB0001C */  lw    $s0, 0x1c($sp)
/* 0A8F98 800A8398 8FB10020 */  lw    $s1, 0x20($sp)
/* 0A8F9C 800A839C 8FB20024 */  lw    $s2, 0x24($sp)
/* 0A8FA0 800A83A0 8FB30028 */  lw    $s3, 0x28($sp)
/* 0A8FA4 800A83A4 8FB4002C */  lw    $s4, 0x2c($sp)
/* 0A8FA8 800A83A8 8FB50030 */  lw    $s5, 0x30($sp)
/* 0A8FAC 800A83AC 03E00008 */  jr    $ra
/* 0A8FB0 800A83B0 27BD0080 */   addiu $sp, $sp, 0x80

