.late_rodata
glabel D_800E4CF8
.double 0.001

.text
glabel func_80007FA4
/* 008BA4 80007FA4 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 008BA8 80007FA8 44818000 */  mtc1  $at, $f16
/* 008BAC 80007FAC 3C01800E */  lui   $at, %hi(D_800E4CFC) # $at, 0x800e
/* 008BB0 80007FB0 46106101 */  sub.s $f4, $f12, $f16
/* 008BB4 80007FB4 C4334CF8 */  lwc1  $f19, %lo(D_800E4CF8)($at)
/* 008BB8 80007FB8 460C8180 */  add.s $f6, $f16, $f12
/* 008BBC 80007FBC C4324CFC */  lwc1  $f18, %lo(D_800E4CFC)($at)
/* 008BC0 80007FC0 46062303 */  div.s $f12, $f4, $f6
/* 008BC4 80007FC4 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 008BC8 80007FC8 44801000 */  mtc1  $zero, $f2
/* 008BCC 80007FCC 44814000 */  mtc1  $at, $f8
/* 008BD0 80007FD0 24020001 */  li    $v0, 1
/* 008BD4 80007FD4 46081281 */  sub.s $f10, $f2, $f8
/* 008BD8 80007FD8 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 008BDC 80007FDC 46005121 */  cvt.d.s $f4, $f10
/* 008BE0 80007FE0 4624903C */  c.lt.d $f18, $f4
/* 008BE4 80007FE4 00000000 */  nop   
/* 008BE8 80007FE8 45000010 */  bc1f  .L8000802C
/* 008BEC 80007FEC 46006386 */   mov.s $f14, $f12
/* 008BF0 80007FF0 460C6402 */  mul.s $f16, $f12, $f12
/* 008BF4 80007FF4 00000000 */  nop   
.L80007FF8:
/* 008BF8 80007FF8 44823000 */  mtc1  $v0, $f6
/* 008BFC 80007FFC 46001006 */  mov.s $f0, $f2
/* 008C00 80008000 46803220 */  cvt.s.w $f8, $f6
/* 008C04 80008004 24420002 */  addiu $v0, $v0, 2
/* 008C08 80008008 46087283 */  div.s $f10, $f14, $f8
/* 008C0C 8000800C 46107382 */  mul.s $f14, $f14, $f16
/* 008C10 80008010 460A1080 */  add.s $f2, $f2, $f10
/* 008C14 80008014 46001101 */  sub.s $f4, $f2, $f0
/* 008C18 80008018 460021A1 */  cvt.d.s $f6, $f4
/* 008C1C 8000801C 4626903C */  c.lt.d $f18, $f6
/* 008C20 80008020 00000000 */  nop   
/* 008C24 80008024 4501FFF4 */  bc1t  .L80007FF8
/* 008C28 80008028 00000000 */   nop   
.L8000802C:
/* 008C2C 8000802C 44814000 */  mtc1  $at, $f8
/* 008C30 80008030 00000000 */  nop   
/* 008C34 80008034 46081002 */  mul.s $f0, $f2, $f8
/* 008C38 80008038 03E00008 */  jr    $ra
/* 008C3C 8000803C 00000000 */   nop   

