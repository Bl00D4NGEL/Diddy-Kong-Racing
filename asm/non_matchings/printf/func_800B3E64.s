glabel func_800B3E64
/* 0B4A64 800B3E64 27BDFF70 */  addiu $sp, $sp, -0x90
/* 0B4A68 800B3E68 AFBF0044 */  sw    $ra, 0x44($sp)
/* 0B4A6C 800B3E6C AFBE0040 */  sw    $fp, 0x40($sp)
/* 0B4A70 800B3E70 AFB7003C */  sw    $s7, 0x3c($sp)
/* 0B4A74 800B3E74 AFB60038 */  sw    $s6, 0x38($sp)
/* 0B4A78 800B3E78 AFB50034 */  sw    $s5, 0x34($sp)
/* 0B4A7C 800B3E7C AFB40030 */  sw    $s4, 0x30($sp)
/* 0B4A80 800B3E80 AFB3002C */  sw    $s3, 0x2c($sp)
/* 0B4A84 800B3E84 AFB20028 */  sw    $s2, 0x28($sp)
/* 0B4A88 800B3E88 AFB10024 */  sw    $s1, 0x24($sp)
/* 0B4A8C 800B3E8C AFB00020 */  sw    $s0, 0x20($sp)
/* 0B4A90 800B3E90 E7B50018 */  swc1  $f21, 0x18($sp)
/* 0B4A94 800B3E94 E7B4001C */  swc1  $f20, 0x1c($sp)
/* 0B4A98 800B3E98 8C960070 */  lw    $s6, 0x70($a0)
/* 0B4A9C 800B3E9C 0000A825 */  move  $s5, $zero
/* 0B4AA0 800B3EA0 12C0016B */  beqz  $s6, .L800B4450
/* 0B4AA4 800B3EA4 00009825 */   move  $s3, $zero
/* 0B4AA8 800B3EA8 8ECE000C */  lw    $t6, 0xc($s6)
/* 0B4AAC 800B3EAC 00000000 */  nop   
/* 0B4AB0 800B3EB0 11C00168 */  beqz  $t6, .L800B4454
/* 0B4AB4 800B3EB4 8FBF0044 */   lw    $ra, 0x44($sp)
/* 0B4AB8 800B3EB8 92C20006 */  lbu   $v0, 6($s6)
/* 0B4ABC 800B3EBC 27BE007C */  addiu $fp, $sp, 0x7c
/* 0B4AC0 800B3EC0 2442FFFF */  addiu $v0, $v0, -1
/* 0B4AC4 800B3EC4 04400162 */  bltz  $v0, .L800B4450
/* 0B4AC8 800B3EC8 00029080 */   sll   $s2, $v0, 2
/* 0B4ACC 800B3ECC 4480A000 */  mtc1  $zero, $f20
/* 0B4AD0 800B3ED0 27B70070 */  addiu $s7, $sp, 0x70
/* 0B4AD4 800B3ED4 2414000A */  li    $s4, 10
.L800B3ED8:
/* 0B4AD8 800B3ED8 8ECF000C */  lw    $t7, 0xc($s6)
/* 0B4ADC 800B3EDC 02E02825 */  move  $a1, $s7
/* 0B4AE0 800B3EE0 01F2C021 */  addu  $t8, $t7, $s2
/* 0B4AE4 800B3EE4 8F100000 */  lw    $s0, ($t8)
/* 0B4AE8 800B3EE8 00000000 */  nop   
/* 0B4AEC 800B3EEC 8619003A */  lh    $t9, 0x3a($s0)
/* 0B4AF0 800B3EF0 02002025 */  move  $a0, $s0
/* 0B4AF4 800B3EF4 13200157 */  beqz  $t9, .L800B4454
/* 0B4AF8 800B3EF8 8FBF0044 */   lw    $ra, 0x44($sp)
/* 0B4AFC 800B3EFC C6040008 */  lwc1  $f4, 8($s0)
/* 0B4B00 800B3F00 8E110044 */  lw    $s1, 0x44($s0)
/* 0B4B04 800B3F04 E7B40074 */  swc1  $f20, 0x74($sp)
/* 0B4B08 800B3F08 E7B40078 */  swc1  $f20, 0x78($sp)
/* 0B4B0C 800B3F0C 0C01C0C8 */  jal   func_80070320
/* 0B4B10 800B3F10 E7A40070 */   swc1  $f4, 0x70($sp)
/* 0B4B14 800B3F14 E7B4007C */  swc1  $f20, 0x7c($sp)
/* 0B4B18 800B3F18 C6060008 */  lwc1  $f6, 8($s0)
/* 0B4B1C 800B3F1C E7B40084 */  swc1  $f20, 0x84($sp)
/* 0B4B20 800B3F20 02002025 */  move  $a0, $s0
/* 0B4B24 800B3F24 03C02825 */  move  $a1, $fp
/* 0B4B28 800B3F28 0C01C0C8 */  jal   func_80070320
/* 0B4B2C 800B3F2C E7A60080 */   swc1  $f6, 0x80($sp)
/* 0B4B30 800B3F30 92090075 */  lbu   $t1, 0x75($s0)
/* 0B4B34 800B3F34 C7A80070 */  lwc1  $f8, 0x70($sp)
/* 0B4B38 800B3F38 000950C0 */  sll   $t2, $t1, 3
/* 0B4B3C 800B3F3C 01540019 */  multu $t2, $s4
/* 0B4B40 800B3F40 C60A000C */  lwc1  $f10, 0xc($s0)
/* 0B4B44 800B3F44 8E280008 */  lw    $t0, 8($s1)
/* 0B4B48 800B3F48 460A4400 */  add.s $f16, $f8, $f10
/* 0B4B4C 800B3F4C 444CF800 */  cfc1  $t4, $31
/* 0B4B50 800B3F50 00000000 */  nop   
/* 0B4B54 800B3F54 35810003 */  ori   $at, $t4, 3
/* 0B4B58 800B3F58 38210002 */  xori  $at, $at, 2
/* 0B4B5C 800B3F5C 44C1F800 */  ctc1  $at, $31
/* 0B4B60 800B3F60 00000000 */  nop   
/* 0B4B64 800B3F64 460084A4 */  cvt.w.s $f18, $f16
/* 0B4B68 800B3F68 00005812 */  mflo  $t3
/* 0B4B6C 800B3F6C 440D9000 */  mfc1  $t5, $f18
/* 0B4B70 800B3F70 010B1821 */  addu  $v1, $t0, $t3
/* 0B4B74 800B3F74 A46D0028 */  sh    $t5, 0x28($v1)
/* 0B4B78 800B3F78 44CCF800 */  ctc1  $t4, $31
/* 0B4B7C 800B3F7C C6060010 */  lwc1  $f6, 0x10($s0)
/* 0B4B80 800B3F80 C7A40074 */  lwc1  $f4, 0x74($sp)
/* 0B4B84 800B3F84 24630046 */  addiu $v1, $v1, 0x46
/* 0B4B88 800B3F88 46062200 */  add.s $f8, $f4, $f6
/* 0B4B8C 800B3F8C 444EF800 */  cfc1  $t6, $31
/* 0B4B90 800B3F90 00000000 */  nop   
/* 0B4B94 800B3F94 35C10003 */  ori   $at, $t6, 3
/* 0B4B98 800B3F98 38210002 */  xori  $at, $at, 2
/* 0B4B9C 800B3F9C 44C1F800 */  ctc1  $at, $31
/* 0B4BA0 800B3FA0 00000000 */  nop   
/* 0B4BA4 800B3FA4 460042A4 */  cvt.w.s $f10, $f8
/* 0B4BA8 800B3FA8 440F5000 */  mfc1  $t7, $f10
/* 0B4BAC 800B3FAC 44CEF800 */  ctc1  $t6, $31
/* 0B4BB0 800B3FB0 A46FFFE4 */  sh    $t7, -0x1c($v1)
/* 0B4BB4 800B3FB4 C6120014 */  lwc1  $f18, 0x14($s0)
/* 0B4BB8 800B3FB8 C7B00078 */  lwc1  $f16, 0x78($sp)
/* 0B4BBC 800B3FBC 00000000 */  nop   
/* 0B4BC0 800B3FC0 46128100 */  add.s $f4, $f16, $f18
/* 0B4BC4 800B3FC4 4458F800 */  cfc1  $t8, $31
/* 0B4BC8 800B3FC8 00000000 */  nop   
/* 0B4BCC 800B3FCC 37010003 */  ori   $at, $t8, 3
/* 0B4BD0 800B3FD0 38210002 */  xori  $at, $at, 2
/* 0B4BD4 800B3FD4 44C1F800 */  ctc1  $at, $31
/* 0B4BD8 800B3FD8 00000000 */  nop   
/* 0B4BDC 800B3FDC 460021A4 */  cvt.w.s $f6, $f4
/* 0B4BE0 800B3FE0 44193000 */  mfc1  $t9, $f6
/* 0B4BE4 800B3FE4 44D8F800 */  ctc1  $t8, $31
/* 0B4BE8 800B3FE8 A479FFE6 */  sh    $t9, -0x1a($v1)
/* 0B4BEC 800B3FEC 9209006C */  lbu   $t1, 0x6c($s0)
/* 0B4BF0 800B3FF0 00000000 */  nop   
/* 0B4BF4 800B3FF4 A069FFE8 */  sb    $t1, -0x18($v1)
/* 0B4BF8 800B3FF8 920A006D */  lbu   $t2, 0x6d($s0)
/* 0B4BFC 800B3FFC 00000000 */  nop   
/* 0B4C00 800B4000 A06AFFE9 */  sb    $t2, -0x17($v1)
/* 0B4C04 800B4004 9208006E */  lbu   $t0, 0x6e($s0)
/* 0B4C08 800B4008 00000000 */  nop   
/* 0B4C0C 800B400C A068FFEA */  sb    $t0, -0x16($v1)
/* 0B4C10 800B4010 860B005C */  lh    $t3, 0x5c($s0)
/* 0B4C14 800B4014 00000000 */  nop   
/* 0B4C18 800B4018 000B6203 */  sra   $t4, $t3, 8
/* 0B4C1C 800B401C A06CFFEB */  sb    $t4, -0x15($v1)
/* 0B4C20 800B4020 C7A8007C */  lwc1  $f8, 0x7c($sp)
/* 0B4C24 800B4024 C60A000C */  lwc1  $f10, 0xc($s0)
/* 0B4C28 800B4028 00000000 */  nop   
/* 0B4C2C 800B402C 460A4400 */  add.s $f16, $f8, $f10
/* 0B4C30 800B4030 444DF800 */  cfc1  $t5, $31
/* 0B4C34 800B4034 00000000 */  nop   
/* 0B4C38 800B4038 35A10003 */  ori   $at, $t5, 3
/* 0B4C3C 800B403C 38210002 */  xori  $at, $at, 2
/* 0B4C40 800B4040 44C1F800 */  ctc1  $at, $31
/* 0B4C44 800B4044 00000000 */  nop   
/* 0B4C48 800B4048 460084A4 */  cvt.w.s $f18, $f16
/* 0B4C4C 800B404C 440E9000 */  mfc1  $t6, $f18
/* 0B4C50 800B4050 44CDF800 */  ctc1  $t5, $31
/* 0B4C54 800B4054 A46EFFEC */  sh    $t6, -0x14($v1)
/* 0B4C58 800B4058 C7A40080 */  lwc1  $f4, 0x80($sp)
/* 0B4C5C 800B405C C6060010 */  lwc1  $f6, 0x10($s0)
/* 0B4C60 800B4060 00000000 */  nop   
/* 0B4C64 800B4064 46062200 */  add.s $f8, $f4, $f6
/* 0B4C68 800B4068 444FF800 */  cfc1  $t7, $31
/* 0B4C6C 800B406C 00000000 */  nop   
/* 0B4C70 800B4070 35E10003 */  ori   $at, $t7, 3
/* 0B4C74 800B4074 38210002 */  xori  $at, $at, 2
/* 0B4C78 800B4078 44C1F800 */  ctc1  $at, $31
/* 0B4C7C 800B407C 00000000 */  nop   
/* 0B4C80 800B4080 460042A4 */  cvt.w.s $f10, $f8
/* 0B4C84 800B4084 44185000 */  mfc1  $t8, $f10
/* 0B4C88 800B4088 44CFF800 */  ctc1  $t7, $31
/* 0B4C8C 800B408C A478FFEE */  sh    $t8, -0x12($v1)
/* 0B4C90 800B4090 C7B00084 */  lwc1  $f16, 0x84($sp)
/* 0B4C94 800B4094 C6120014 */  lwc1  $f18, 0x14($s0)
/* 0B4C98 800B4098 00000000 */  nop   
/* 0B4C9C 800B409C 46128100 */  add.s $f4, $f16, $f18
/* 0B4CA0 800B40A0 4459F800 */  cfc1  $t9, $31
/* 0B4CA4 800B40A4 00000000 */  nop   
/* 0B4CA8 800B40A8 37210003 */  ori   $at, $t9, 3
/* 0B4CAC 800B40AC 38210002 */  xori  $at, $at, 2
/* 0B4CB0 800B40B0 44C1F800 */  ctc1  $at, $31
/* 0B4CB4 800B40B4 00000000 */  nop   
/* 0B4CB8 800B40B8 460021A4 */  cvt.w.s $f6, $f4
/* 0B4CBC 800B40BC 44093000 */  mfc1  $t1, $f6
/* 0B4CC0 800B40C0 44D9F800 */  ctc1  $t9, $31
/* 0B4CC4 800B40C4 A469FFF0 */  sh    $t1, -0x10($v1)
/* 0B4CC8 800B40C8 920A006C */  lbu   $t2, 0x6c($s0)
/* 0B4CCC 800B40CC 00000000 */  nop   
/* 0B4CD0 800B40D0 A06AFFF2 */  sb    $t2, -0xe($v1)
/* 0B4CD4 800B40D4 9208006D */  lbu   $t0, 0x6d($s0)
/* 0B4CD8 800B40D8 00000000 */  nop   
/* 0B4CDC 800B40DC A068FFF3 */  sb    $t0, -0xd($v1)
/* 0B4CE0 800B40E0 920B006E */  lbu   $t3, 0x6e($s0)
/* 0B4CE4 800B40E4 00000000 */  nop   
/* 0B4CE8 800B40E8 A06BFFF4 */  sb    $t3, -0xc($v1)
/* 0B4CEC 800B40EC 860C005C */  lh    $t4, 0x5c($s0)
/* 0B4CF0 800B40F0 00000000 */  nop   
/* 0B4CF4 800B40F4 000C6A03 */  sra   $t5, $t4, 8
/* 0B4CF8 800B40F8 A06DFFF5 */  sb    $t5, -0xb($v1)
/* 0B4CFC 800B40FC C608000C */  lwc1  $f8, 0xc($s0)
/* 0B4D00 800B4100 C7AA0070 */  lwc1  $f10, 0x70($sp)
/* 0B4D04 800B4104 00000000 */  nop   
/* 0B4D08 800B4108 460A4401 */  sub.s $f16, $f8, $f10
/* 0B4D0C 800B410C 444EF800 */  cfc1  $t6, $31
/* 0B4D10 800B4110 00000000 */  nop   
/* 0B4D14 800B4114 35C10003 */  ori   $at, $t6, 3
/* 0B4D18 800B4118 38210002 */  xori  $at, $at, 2
/* 0B4D1C 800B411C 44C1F800 */  ctc1  $at, $31
/* 0B4D20 800B4120 00000000 */  nop   
/* 0B4D24 800B4124 460084A4 */  cvt.w.s $f18, $f16
/* 0B4D28 800B4128 440F9000 */  mfc1  $t7, $f18
/* 0B4D2C 800B412C 44CEF800 */  ctc1  $t6, $31
/* 0B4D30 800B4130 A46FFFF6 */  sh    $t7, -0xa($v1)
/* 0B4D34 800B4134 C6040010 */  lwc1  $f4, 0x10($s0)
/* 0B4D38 800B4138 C7A60074 */  lwc1  $f6, 0x74($sp)
/* 0B4D3C 800B413C 00000000 */  nop   
/* 0B4D40 800B4140 46062201 */  sub.s $f8, $f4, $f6
/* 0B4D44 800B4144 4458F800 */  cfc1  $t8, $31
/* 0B4D48 800B4148 00000000 */  nop   
/* 0B4D4C 800B414C 37010003 */  ori   $at, $t8, 3
/* 0B4D50 800B4150 38210002 */  xori  $at, $at, 2
/* 0B4D54 800B4154 44C1F800 */  ctc1  $at, $31
/* 0B4D58 800B4158 00000000 */  nop   
/* 0B4D5C 800B415C 460042A4 */  cvt.w.s $f10, $f8
/* 0B4D60 800B4160 44195000 */  mfc1  $t9, $f10
/* 0B4D64 800B4164 44D8F800 */  ctc1  $t8, $31
/* 0B4D68 800B4168 A479FFF8 */  sh    $t9, -8($v1)
/* 0B4D6C 800B416C C6100014 */  lwc1  $f16, 0x14($s0)
/* 0B4D70 800B4170 C7B20078 */  lwc1  $f18, 0x78($sp)
/* 0B4D74 800B4174 00000000 */  nop   
/* 0B4D78 800B4178 46128101 */  sub.s $f4, $f16, $f18
/* 0B4D7C 800B417C 4449F800 */  cfc1  $t1, $31
/* 0B4D80 800B4180 00000000 */  nop   
/* 0B4D84 800B4184 35210003 */  ori   $at, $t1, 3
/* 0B4D88 800B4188 38210002 */  xori  $at, $at, 2
/* 0B4D8C 800B418C 44C1F800 */  ctc1  $at, $31
/* 0B4D90 800B4190 00000000 */  nop   
/* 0B4D94 800B4194 460021A4 */  cvt.w.s $f6, $f4
/* 0B4D98 800B4198 440A3000 */  mfc1  $t2, $f6
/* 0B4D9C 800B419C 44C9F800 */  ctc1  $t1, $31
/* 0B4DA0 800B41A0 A46AFFFA */  sh    $t2, -6($v1)
/* 0B4DA4 800B41A4 9208006C */  lbu   $t0, 0x6c($s0)
/* 0B4DA8 800B41A8 00000000 */  nop   
/* 0B4DAC 800B41AC A068FFFC */  sb    $t0, -4($v1)
/* 0B4DB0 800B41B0 920B006D */  lbu   $t3, 0x6d($s0)
/* 0B4DB4 800B41B4 00000000 */  nop   
/* 0B4DB8 800B41B8 A06BFFFD */  sb    $t3, -3($v1)
/* 0B4DBC 800B41BC 920C006E */  lbu   $t4, 0x6e($s0)
/* 0B4DC0 800B41C0 00000000 */  nop   
/* 0B4DC4 800B41C4 A06CFFFE */  sb    $t4, -2($v1)
/* 0B4DC8 800B41C8 860D005C */  lh    $t5, 0x5c($s0)
/* 0B4DCC 800B41CC 00000000 */  nop   
/* 0B4DD0 800B41D0 000D7203 */  sra   $t6, $t5, 8
/* 0B4DD4 800B41D4 A06EFFFF */  sb    $t6, -1($v1)
/* 0B4DD8 800B41D8 C7AA007C */  lwc1  $f10, 0x7c($sp)
/* 0B4DDC 800B41DC C608000C */  lwc1  $f8, 0xc($s0)
/* 0B4DE0 800B41E0 00000000 */  nop   
/* 0B4DE4 800B41E4 460A4401 */  sub.s $f16, $f8, $f10
/* 0B4DE8 800B41E8 444FF800 */  cfc1  $t7, $31
/* 0B4DEC 800B41EC 00000000 */  nop   
/* 0B4DF0 800B41F0 35E10003 */  ori   $at, $t7, 3
/* 0B4DF4 800B41F4 38210002 */  xori  $at, $at, 2
/* 0B4DF8 800B41F8 44C1F800 */  ctc1  $at, $31
/* 0B4DFC 800B41FC 00000000 */  nop   
/* 0B4E00 800B4200 460084A4 */  cvt.w.s $f18, $f16
/* 0B4E04 800B4204 44189000 */  mfc1  $t8, $f18
/* 0B4E08 800B4208 44CFF800 */  ctc1  $t7, $31
/* 0B4E0C 800B420C A4780000 */  sh    $t8, ($v1)
/* 0B4E10 800B4210 C7A60080 */  lwc1  $f6, 0x80($sp)
/* 0B4E14 800B4214 C6040010 */  lwc1  $f4, 0x10($s0)
/* 0B4E18 800B4218 00000000 */  nop   
/* 0B4E1C 800B421C 46062201 */  sub.s $f8, $f4, $f6
/* 0B4E20 800B4220 4459F800 */  cfc1  $t9, $31
/* 0B4E24 800B4224 00000000 */  nop   
/* 0B4E28 800B4228 37210003 */  ori   $at, $t9, 3
/* 0B4E2C 800B422C 38210002 */  xori  $at, $at, 2
/* 0B4E30 800B4230 44C1F800 */  ctc1  $at, $31
/* 0B4E34 800B4234 00000000 */  nop   
/* 0B4E38 800B4238 460042A4 */  cvt.w.s $f10, $f8
/* 0B4E3C 800B423C 44095000 */  mfc1  $t1, $f10
/* 0B4E40 800B4240 44D9F800 */  ctc1  $t9, $31
/* 0B4E44 800B4244 A4690002 */  sh    $t1, 2($v1)
/* 0B4E48 800B4248 C7B20084 */  lwc1  $f18, 0x84($sp)
/* 0B4E4C 800B424C C6100014 */  lwc1  $f16, 0x14($s0)
/* 0B4E50 800B4250 00000000 */  nop   
/* 0B4E54 800B4254 46128101 */  sub.s $f4, $f16, $f18
/* 0B4E58 800B4258 444AF800 */  cfc1  $t2, $31
/* 0B4E5C 800B425C 00000000 */  nop   
/* 0B4E60 800B4260 35410003 */  ori   $at, $t2, 3
/* 0B4E64 800B4264 38210002 */  xori  $at, $at, 2
/* 0B4E68 800B4268 44C1F800 */  ctc1  $at, $31
/* 0B4E6C 800B426C 00000000 */  nop   
/* 0B4E70 800B4270 460021A4 */  cvt.w.s $f6, $f4
/* 0B4E74 800B4274 44083000 */  mfc1  $t0, $f6
/* 0B4E78 800B4278 44CAF800 */  ctc1  $t2, $31
/* 0B4E7C 800B427C A4680004 */  sh    $t0, 4($v1)
/* 0B4E80 800B4280 920B006C */  lbu   $t3, 0x6c($s0)
/* 0B4E84 800B4284 00000000 */  nop   
/* 0B4E88 800B4288 A06B0006 */  sb    $t3, 6($v1)
/* 0B4E8C 800B428C 920C006D */  lbu   $t4, 0x6d($s0)
/* 0B4E90 800B4290 00000000 */  nop   
/* 0B4E94 800B4294 A06C0007 */  sb    $t4, 7($v1)
/* 0B4E98 800B4298 920D006E */  lbu   $t5, 0x6e($s0)
/* 0B4E9C 800B429C 00000000 */  nop   
/* 0B4EA0 800B42A0 A06D0008 */  sb    $t5, 8($v1)
/* 0B4EA4 800B42A4 860E005C */  lh    $t6, 0x5c($s0)
/* 0B4EA8 800B42A8 00000000 */  nop   
/* 0B4EAC 800B42AC 000E7A03 */  sra   $t7, $t6, 8
/* 0B4EB0 800B42B0 A06F0009 */  sb    $t7, 9($v1)
/* 0B4EB4 800B42B4 92190075 */  lbu   $t9, 0x75($s0)
/* 0B4EB8 800B42B8 8E380008 */  lw    $t8, 8($s1)
/* 0B4EBC 800B42BC 001948C0 */  sll   $t1, $t9, 3
/* 0B4EC0 800B42C0 01340019 */  multu $t1, $s4
/* 0B4EC4 800B42C4 00005012 */  mflo  $t2
/* 0B4EC8 800B42C8 030A2021 */  addu  $a0, $t8, $t2
/* 0B4ECC 800B42CC 12600009 */  beqz  $s3, .L800B42F4
/* 0B4ED0 800B42D0 00801825 */   move  $v1, $a0
/* 0B4ED4 800B42D4 92AB0075 */  lbu   $t3, 0x75($s5)
/* 0B4ED8 800B42D8 8E680008 */  lw    $t0, 8($s3)
/* 0B4EDC 800B42DC 000B60C0 */  sll   $t4, $t3, 3
/* 0B4EE0 800B42E0 01940019 */  multu $t4, $s4
/* 0B4EE4 800B42E4 00006812 */  mflo  $t5
/* 0B4EE8 800B42E8 010D1021 */  addu  $v0, $t0, $t5
/* 0B4EEC 800B42EC 10000002 */  b     .L800B42F8
/* 0B4EF0 800B42F0 24420028 */   addiu $v0, $v0, 0x28
.L800B42F4:
/* 0B4EF4 800B42F4 24820028 */  addiu $v0, $a0, 0x28
.L800B42F8:
/* 0B4EF8 800B42F8 844E0000 */  lh    $t6, ($v0)
/* 0B4EFC 800B42FC 2652FFFC */  addiu $s2, $s2, -4
/* 0B4F00 800B4300 A46E0000 */  sh    $t6, ($v1)
/* 0B4F04 800B4304 844F0002 */  lh    $t7, 2($v0)
/* 0B4F08 800B4308 2463001E */  addiu $v1, $v1, 0x1e
/* 0B4F0C 800B430C A46FFFE4 */  sh    $t7, -0x1c($v1)
/* 0B4F10 800B4310 84590004 */  lh    $t9, 4($v0)
/* 0B4F14 800B4314 2442001E */  addiu $v0, $v0, 0x1e
/* 0B4F18 800B4318 A479FFE6 */  sh    $t9, -0x1a($v1)
/* 0B4F1C 800B431C 9049FFE8 */  lbu   $t1, -0x18($v0)
/* 0B4F20 800B4320 0200A825 */  move  $s5, $s0
/* 0B4F24 800B4324 A069FFE8 */  sb    $t1, -0x18($v1)
/* 0B4F28 800B4328 9058FFE9 */  lbu   $t8, -0x17($v0)
/* 0B4F2C 800B432C 02209825 */  move  $s3, $s1
/* 0B4F30 800B4330 A078FFE9 */  sb    $t8, -0x17($v1)
/* 0B4F34 800B4334 904AFFEA */  lbu   $t2, -0x16($v0)
/* 0B4F38 800B4338 00000000 */  nop   
/* 0B4F3C 800B433C A06AFFEA */  sb    $t2, -0x16($v1)
/* 0B4F40 800B4340 904BFFEB */  lbu   $t3, -0x15($v0)
/* 0B4F44 800B4344 00000000 */  nop   
/* 0B4F48 800B4348 A06BFFEB */  sb    $t3, -0x15($v1)
/* 0B4F4C 800B434C 844CFFEC */  lh    $t4, -0x14($v0)
/* 0B4F50 800B4350 00000000 */  nop   
/* 0B4F54 800B4354 A46CFFEC */  sh    $t4, -0x14($v1)
/* 0B4F58 800B4358 8448FFEE */  lh    $t0, -0x12($v0)
/* 0B4F5C 800B435C 00000000 */  nop   
/* 0B4F60 800B4360 A468FFEE */  sh    $t0, -0x12($v1)
/* 0B4F64 800B4364 844DFFF0 */  lh    $t5, -0x10($v0)
/* 0B4F68 800B4368 00000000 */  nop   
/* 0B4F6C 800B436C A46DFFF0 */  sh    $t5, -0x10($v1)
/* 0B4F70 800B4370 904EFFF2 */  lbu   $t6, -0xe($v0)
/* 0B4F74 800B4374 00000000 */  nop   
/* 0B4F78 800B4378 A06EFFF2 */  sb    $t6, -0xe($v1)
/* 0B4F7C 800B437C 904FFFF3 */  lbu   $t7, -0xd($v0)
/* 0B4F80 800B4380 00000000 */  nop   
/* 0B4F84 800B4384 A06FFFF3 */  sb    $t7, -0xd($v1)
/* 0B4F88 800B4388 9059FFF4 */  lbu   $t9, -0xc($v0)
/* 0B4F8C 800B438C 00000000 */  nop   
/* 0B4F90 800B4390 A079FFF4 */  sb    $t9, -0xc($v1)
/* 0B4F94 800B4394 9049FFF5 */  lbu   $t1, -0xb($v0)
/* 0B4F98 800B4398 00000000 */  nop   
/* 0B4F9C 800B439C A069FFF5 */  sb    $t1, -0xb($v1)
/* 0B4FA0 800B43A0 8458FFF6 */  lh    $t8, -0xa($v0)
/* 0B4FA4 800B43A4 00000000 */  nop   
/* 0B4FA8 800B43A8 A478FFF6 */  sh    $t8, -0xa($v1)
/* 0B4FAC 800B43AC 844AFFF8 */  lh    $t2, -8($v0)
/* 0B4FB0 800B43B0 00000000 */  nop   
/* 0B4FB4 800B43B4 A46AFFF8 */  sh    $t2, -8($v1)
/* 0B4FB8 800B43B8 844BFFFA */  lh    $t3, -6($v0)
/* 0B4FBC 800B43BC 00000000 */  nop   
/* 0B4FC0 800B43C0 A46BFFFA */  sh    $t3, -6($v1)
/* 0B4FC4 800B43C4 904CFFFC */  lbu   $t4, -4($v0)
/* 0B4FC8 800B43C8 00000000 */  nop   
/* 0B4FCC 800B43CC A06CFFFC */  sb    $t4, -4($v1)
/* 0B4FD0 800B43D0 9048FFFD */  lbu   $t0, -3($v0)
/* 0B4FD4 800B43D4 00000000 */  nop   
/* 0B4FD8 800B43D8 A068FFFD */  sb    $t0, -3($v1)
/* 0B4FDC 800B43DC 904DFFFE */  lbu   $t5, -2($v0)
/* 0B4FE0 800B43E0 2408FFFF */  li    $t0, -1
/* 0B4FE4 800B43E4 A06DFFFE */  sb    $t5, -2($v1)
/* 0B4FE8 800B43E8 904EFFFF */  lbu   $t6, -1($v0)
/* 0B4FEC 800B43EC 00000000 */  nop   
/* 0B4FF0 800B43F0 A06EFFFF */  sb    $t6, -1($v1)
/* 0B4FF4 800B43F4 844F0000 */  lh    $t7, ($v0)
/* 0B4FF8 800B43F8 00000000 */  nop   
/* 0B4FFC 800B43FC A46F0000 */  sh    $t7, ($v1)
/* 0B5000 800B4400 84590002 */  lh    $t9, 2($v0)
/* 0B5004 800B4404 00000000 */  nop   
/* 0B5008 800B4408 A4790002 */  sh    $t9, 2($v1)
/* 0B500C 800B440C 84490004 */  lh    $t1, 4($v0)
/* 0B5010 800B4410 00000000 */  nop   
/* 0B5014 800B4414 A4690004 */  sh    $t1, 4($v1)
/* 0B5018 800B4418 90580006 */  lbu   $t8, 6($v0)
/* 0B501C 800B441C 00000000 */  nop   
/* 0B5020 800B4420 A0780006 */  sb    $t8, 6($v1)
/* 0B5024 800B4424 904A0007 */  lbu   $t2, 7($v0)
/* 0B5028 800B4428 00000000 */  nop   
/* 0B502C 800B442C A06A0007 */  sb    $t2, 7($v1)
/* 0B5030 800B4430 904B0008 */  lbu   $t3, 8($v0)
/* 0B5034 800B4434 00000000 */  nop   
/* 0B5038 800B4438 A06B0008 */  sb    $t3, 8($v1)
/* 0B503C 800B443C 904C0009 */  lbu   $t4, 9($v0)
/* 0B5040 800B4440 00000000 */  nop   
/* 0B5044 800B4444 A06C0009 */  sb    $t4, 9($v1)
/* 0B5048 800B4448 0641FEA3 */  bgez  $s2, .L800B3ED8
/* 0B504C 800B444C A2080077 */   sb    $t0, 0x77($s0)
.L800B4450:
/* 0B5050 800B4450 8FBF0044 */  lw    $ra, 0x44($sp)
.L800B4454:
/* 0B5054 800B4454 C7B50018 */  lwc1  $f21, 0x18($sp)
/* 0B5058 800B4458 C7B4001C */  lwc1  $f20, 0x1c($sp)
/* 0B505C 800B445C 8FB00020 */  lw    $s0, 0x20($sp)
/* 0B5060 800B4460 8FB10024 */  lw    $s1, 0x24($sp)
/* 0B5064 800B4464 8FB20028 */  lw    $s2, 0x28($sp)
/* 0B5068 800B4468 8FB3002C */  lw    $s3, 0x2c($sp)
/* 0B506C 800B446C 8FB40030 */  lw    $s4, 0x30($sp)
/* 0B5070 800B4470 8FB50034 */  lw    $s5, 0x34($sp)
/* 0B5074 800B4474 8FB60038 */  lw    $s6, 0x38($sp)
/* 0B5078 800B4478 8FB7003C */  lw    $s7, 0x3c($sp)
/* 0B507C 800B447C 8FBE0040 */  lw    $fp, 0x40($sp)
/* 0B5080 800B4480 03E00008 */  jr    $ra
/* 0B5084 800B4484 27BD0090 */   addiu $sp, $sp, 0x90

/* 0B5088 800B4488 3C03800E */  lui   $v1, %hi(gParticlesAssetTableCount) # $v1, 0x800e
/* 0B508C 800B448C 8C632CE8 */  lw    $v1, %lo(gParticlesAssetTableCount)($v1)
/* 0B5090 800B4490 3C0E800E */  lui   $t6, %hi(gParticlesAssetTable) # $t6, 0x800e
/* 0B5094 800B4494 0083082A */  slt   $at, $a0, $v1
/* 0B5098 800B4498 10200007 */  beqz  $at, .L800B44B8
/* 0B509C 800B449C 3C19800E */   lui   $t9, %hi(gParticlesAssetTable) # $t9, 0x800e
/* 0B50A0 800B44A0 8DCE2CF0 */  lw    $t6, %lo(gParticlesAssetTable)($t6)
/* 0B50A4 800B44A4 00047880 */  sll   $t7, $a0, 2
/* 0B50A8 800B44A8 01CFC021 */  addu  $t8, $t6, $t7
/* 0B50AC 800B44AC 8F020000 */  lw    $v0, ($t8)
/* 0B50B0 800B44B0 03E00008 */  jr    $ra
/* 0B50B4 800B44B4 00000000 */   nop   

.L800B44B8:
/* 0B50B8 800B44B8 8F392CF0 */  lw    $t9, %lo(gParticlesAssetTable)($t9)
/* 0B50BC 800B44BC 00034080 */  sll   $t0, $v1, 2
/* 0B50C0 800B44C0 03284821 */  addu  $t1, $t9, $t0
/* 0B50C4 800B44C4 8D22FFFC */  lw    $v0, -4($t1)
/* 0B50C8 800B44C8 00000000 */  nop   
/* 0B50CC 800B44CC 03E00008 */  jr    $ra
/* 0B50D0 800B44D0 00000000 */   nop   

/* 0B50D4 800B44D4 8C8E0000 */  lw    $t6, ($a0)
/* 0B50D8 800B44D8 3C05800E */  lui   $a1, %hi(gParticlesAssetTableCount) # $a1, 0x800e
/* 0B50DC 800B44DC 25C30001 */  addiu $v1, $t6, 1
/* 0B50E0 800B44E0 24A52CE8 */  addiu $a1, %lo(gParticlesAssetTableCount) # addiu $a1, $a1, 0x2ce8
/* 0B50E4 800B44E4 AC830000 */  sw    $v1, ($a0)
/* 0B50E8 800B44E8 8CA20000 */  lw    $v0, ($a1)
/* 0B50EC 800B44EC 3C19800E */  lui   $t9, %hi(gParticlesAssetTable) # $t9, 0x800e
/* 0B50F0 800B44F0 0062082A */  slt   $at, $v1, $v0
/* 0B50F4 800B44F4 14200007 */  bnez  $at, .L800B4514
/* 0B50F8 800B44F8 0062C023 */   subu  $t8, $v1, $v0
.L800B44FC:
/* 0B50FC 800B44FC AC980000 */  sw    $t8, ($a0)
/* 0B5100 800B4500 8CA20000 */  lw    $v0, ($a1)
/* 0B5104 800B4504 03001825 */  move  $v1, $t8
/* 0B5108 800B4508 0302082A */  slt   $at, $t8, $v0
/* 0B510C 800B450C 1020FFFB */  beqz  $at, .L800B44FC
/* 0B5110 800B4510 0062C023 */   subu  $t8, $v1, $v0
.L800B4514:
/* 0B5114 800B4514 8F392CF0 */  lw    $t9, %lo(gParticlesAssetTable)($t9)
/* 0B5118 800B4518 00034080 */  sll   $t0, $v1, 2
/* 0B511C 800B451C 03284821 */  addu  $t1, $t9, $t0
/* 0B5120 800B4520 8D220000 */  lw    $v0, ($t1)
/* 0B5124 800B4524 03E00008 */  jr    $ra
/* 0B5128 800B4528 00000000 */   nop   

/* 0B512C 800B452C 8C8E0000 */  lw    $t6, ($a0)
/* 0B5130 800B4530 3C08800E */  lui   $t0, %hi(gParticlesAssetTable) # $t0, 0x800e
/* 0B5134 800B4534 25C3FFFF */  addiu $v1, $t6, -1
/* 0B5138 800B4538 04610009 */  bgez  $v1, .L800B4560
/* 0B513C 800B453C AC830000 */   sw    $v1, ($a0)
/* 0B5140 800B4540 3C02800E */  lui   $v0, %hi(gParticlesAssetTableCount) # $v0, 0x800e
/* 0B5144 800B4544 24422CE8 */  addiu $v0, %lo(gParticlesAssetTableCount) # addiu $v0, $v0, 0x2ce8
.L800B4548:
/* 0B5148 800B4548 8C580000 */  lw    $t8, ($v0)
/* 0B514C 800B454C 00000000 */  nop   
/* 0B5150 800B4550 0078C821 */  addu  $t9, $v1, $t8
/* 0B5154 800B4554 AC990000 */  sw    $t9, ($a0)
/* 0B5158 800B4558 0720FFFB */  bltz  $t9, .L800B4548
/* 0B515C 800B455C 03201825 */   move  $v1, $t9
.L800B4560:
/* 0B5160 800B4560 8D082CF0 */  lw    $t0, %lo(gParticlesAssetTable)($t0)
/* 0B5164 800B4564 00034880 */  sll   $t1, $v1, 2
/* 0B5168 800B4568 01095021 */  addu  $t2, $t0, $t1
/* 0B516C 800B456C 8D420000 */  lw    $v0, ($t2)
/* 0B5170 800B4570 03E00008 */  jr    $ra
/* 0B5174 800B4574 00000000 */   nop   

/* 0B5178 800B4578 3C03800E */  lui   $v1, %hi(gParticleBehavioursAssetTableCount) # $v1, 0x800e
/* 0B517C 800B457C 8C632CF4 */  lw    $v1, %lo(gParticleBehavioursAssetTableCount)($v1)
/* 0B5180 800B4580 3C0E800E */  lui   $t6, %hi(gParticleBehavioursAssetTable) # $t6, 0x800e
/* 0B5184 800B4584 0083082A */  slt   $at, $a0, $v1
/* 0B5188 800B4588 10200007 */  beqz  $at, .L800B45A8
/* 0B518C 800B458C 3C19800E */   lui   $t9, %hi(gParticleBehavioursAssetTable) # $t9, 0x800e
/* 0B5190 800B4590 8DCE2CFC */  lw    $t6, %lo(gParticleBehavioursAssetTable)($t6)
/* 0B5194 800B4594 00047880 */  sll   $t7, $a0, 2
/* 0B5198 800B4598 01CFC021 */  addu  $t8, $t6, $t7
/* 0B519C 800B459C 8F020000 */  lw    $v0, ($t8)
/* 0B51A0 800B45A0 03E00008 */  jr    $ra
/* 0B51A4 800B45A4 00000000 */   nop   

.L800B45A8:
/* 0B51A8 800B45A8 8F392CFC */  lw    $t9, %lo(gParticleBehavioursAssetTable)($t9)
/* 0B51AC 800B45AC 00034080 */  sll   $t0, $v1, 2
/* 0B51B0 800B45B0 03284821 */  addu  $t1, $t9, $t0
/* 0B51B4 800B45B4 8D22FFFC */  lw    $v0, -4($t1)
/* 0B51B8 800B45B8 00000000 */  nop   
/* 0B51BC 800B45BC 03E00008 */  jr    $ra
/* 0B51C0 800B45C0 00000000 */   nop   

/* 0B51C4 800B45C4 8C8E0000 */  lw    $t6, ($a0)
/* 0B51C8 800B45C8 3C05800E */  lui   $a1, %hi(gParticleBehavioursAssetTableCount) # $a1, 0x800e
/* 0B51CC 800B45CC 25C30001 */  addiu $v1, $t6, 1
/* 0B51D0 800B45D0 24A52CF4 */  addiu $a1, %lo(gParticleBehavioursAssetTableCount) # addiu $a1, $a1, 0x2cf4
/* 0B51D4 800B45D4 AC830000 */  sw    $v1, ($a0)
/* 0B51D8 800B45D8 8CA20000 */  lw    $v0, ($a1)
/* 0B51DC 800B45DC 3C19800E */  lui   $t9, %hi(gParticleBehavioursAssetTable) # $t9, 0x800e
/* 0B51E0 800B45E0 0062082A */  slt   $at, $v1, $v0
/* 0B51E4 800B45E4 14200007 */  bnez  $at, .L800B4604
/* 0B51E8 800B45E8 0062C023 */   subu  $t8, $v1, $v0
.L800B45EC:
/* 0B51EC 800B45EC AC980000 */  sw    $t8, ($a0)
/* 0B51F0 800B45F0 8CA20000 */  lw    $v0, ($a1)
/* 0B51F4 800B45F4 03001825 */  move  $v1, $t8
/* 0B51F8 800B45F8 0302082A */  slt   $at, $t8, $v0
/* 0B51FC 800B45FC 1020FFFB */  beqz  $at, .L800B45EC
/* 0B5200 800B4600 0062C023 */   subu  $t8, $v1, $v0
.L800B4604:
/* 0B5204 800B4604 8F392CFC */  lw    $t9, %lo(gParticleBehavioursAssetTable)($t9)
/* 0B5208 800B4608 00034080 */  sll   $t0, $v1, 2
/* 0B520C 800B460C 03284821 */  addu  $t1, $t9, $t0
/* 0B5210 800B4610 8D220000 */  lw    $v0, ($t1)
/* 0B5214 800B4614 03E00008 */  jr    $ra
/* 0B5218 800B4618 00000000 */   nop   

/* 0B521C 800B461C 8C8E0000 */  lw    $t6, ($a0)
/* 0B5220 800B4620 3C08800E */  lui   $t0, %hi(gParticleBehavioursAssetTable) # $t0, 0x800e
/* 0B5224 800B4624 25C3FFFF */  addiu $v1, $t6, -1
/* 0B5228 800B4628 04610009 */  bgez  $v1, .L800B4650
/* 0B522C 800B462C AC830000 */   sw    $v1, ($a0)
/* 0B5230 800B4630 3C02800E */  lui   $v0, %hi(gParticleBehavioursAssetTableCount) # $v0, 0x800e
/* 0B5234 800B4634 24422CF4 */  addiu $v0, %lo(gParticleBehavioursAssetTableCount) # addiu $v0, $v0, 0x2cf4
.L800B4638:
/* 0B5238 800B4638 8C580000 */  lw    $t8, ($v0)
/* 0B523C 800B463C 00000000 */  nop   
/* 0B5240 800B4640 0078C821 */  addu  $t9, $v1, $t8
/* 0B5244 800B4644 AC990000 */  sw    $t9, ($a0)
/* 0B5248 800B4648 0720FFFB */  bltz  $t9, .L800B4638
/* 0B524C 800B464C 03201825 */   move  $v1, $t9
.L800B4650:
/* 0B5250 800B4650 8D082CFC */  lw    $t0, %lo(gParticleBehavioursAssetTable)($t0)
/* 0B5254 800B4654 00034880 */  sll   $t1, $v1, 2
/* 0B5258 800B4658 01095021 */  addu  $t2, $t0, $t1
/* 0B525C 800B465C 8D420000 */  lw    $v0, ($t2)
/* 0B5260 800B4660 03E00008 */  jr    $ra
/* 0B5264 800B4664 00000000 */   nop   

