glabel func_800C8380
/* 0C8F80 800C8380 44852000 */  mtc1  $a1, $f4
/* 0C8F84 800C8384 44864000 */  mtc1  $a2, $f8
/* 0C8F88 800C8388 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 0C8F8C 800C838C 468021A0 */  cvt.s.w $f6, $f4
/* 0C8F90 800C8390 04C10004 */  bgez  $a2, .L800C83A4
/* 0C8F94 800C8394 468042A0 */   cvt.s.w $f10, $f8
/* 0C8F98 800C8398 44818000 */  mtc1  $at, $f16
/* 0C8F9C 800C839C 00000000 */  nop   
/* 0C8FA0 800C83A0 46105280 */  add.s $f10, $f10, $f16
.L800C83A4:
/* 0C8FA4 800C83A4 8C8E0000 */  lw    $t6, ($a0)
/* 0C8FA8 800C83A8 460A3482 */  mul.s $f18, $f6, $f10
/* 0C8FAC 800C83AC 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 0C8FB0 800C83B0 8DCF0040 */  lw    $t7, 0x40($t6)
/* 0C8FB4 800C83B4 448F4000 */  mtc1  $t7, $f8
/* 0C8FB8 800C83B8 46009121 */  cvt.d.s $f4, $f18
/* 0C8FBC 800C83BC 05E10004 */  bgez  $t7, .L800C83D0
/* 0C8FC0 800C83C0 46804420 */   cvt.s.w $f16, $f8
/* 0C8FC4 800C83C4 44813000 */  mtc1  $at, $f6
/* 0C8FC8 800C83C8 00000000 */  nop   
/* 0C8FCC 800C83CC 46068400 */  add.s $f16, $f16, $f6
.L800C83D0:
/* 0C8FD0 800C83D0 3C01800F */  lui   $at, %hi(D_800E94B8) # $at, 0x800f
/* 0C8FD4 800C83D4 D43294B8 */  ldc1  $f18, %lo(D_800E94B8)($at)
/* 0C8FD8 800C83D8 460082A1 */  cvt.d.s $f10, $f16
/* 0C8FDC 800C83DC 46325202 */  mul.d $f8, $f10, $f18
/* 0C8FE0 800C83E0 46282183 */  div.d $f6, $f4, $f8
/* 0C8FE4 800C83E4 03E00008 */  jr    $ra
/* 0C8FE8 800C83E8 46203020 */   cvt.s.d $f0, $f6
