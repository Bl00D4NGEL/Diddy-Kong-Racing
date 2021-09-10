/* The comment below is needed for this file to be picked up by generate_ld */
/* RAM_POS: 0x800B3140 */

#include "types.h"
#include "macros.h"
#include "f3ddkr.h"

#define RENDER_PRINTF_CMD_ARG_BYTE(val) *D_801285D8 = val; D_801285D8++;
#define RENDER_PRINTF_CMD_ARG_SHORT(val) RENDER_PRINTF_CMD_ARG_BYTE(val) RENDER_PRINTF_CMD_ARG_BYTE(val >> 8)

#define RENDER_PRINTF_CMD_END RENDER_PRINTF_CMD_ARG_BYTE(0)

#define RENDER_PRINTF_CMD_SET_COLOR(red, green, blue, alpha) \
    RENDER_PRINTF_CMD_ARG_BYTE(0x81)                         \
    RENDER_PRINTF_CMD_ARG_BYTE(red)                          \
    RENDER_PRINTF_CMD_ARG_BYTE(green)                        \
    RENDER_PRINTF_CMD_ARG_BYTE(blue)                         \
    RENDER_PRINTF_CMD_ARG_BYTE(alpha)                        \
    RENDER_PRINTF_CMD_END

#define RENDER_PRINTF_CMD_SET_POSITION(x, y) \
    RENDER_PRINTF_CMD_ARG_BYTE(0x82)         \
    RENDER_PRINTF_CMD_ARG_SHORT(x)           \
    RENDER_PRINTF_CMD_ARG_SHORT(y)           \
    RENDER_PRINTF_CMD_END
    
#define RENDER_PRINTF_CMD_SET_BACKGROUND_COLOR(red, green, blue, alpha) \
    RENDER_PRINTF_CMD_ARG_BYTE(0x85)                                    \
    RENDER_PRINTF_CMD_ARG_BYTE(red)                                     \
    RENDER_PRINTF_CMD_ARG_BYTE(green)                                   \
    RENDER_PRINTF_CMD_ARG_BYTE(blue)                                    \
    RENDER_PRINTF_CMD_ARG_BYTE(alpha)                                   \
    RENDER_PRINTF_CMD_END

/************ .data ************/

s32 D_800E2EF0 = 0;

u8 D_800E2EF4[196] = {
    0x02, 0x04, 0x06, 0x08, 0x0A, 0x0F, 0x11, 0x15, 0x17, 0x1F, 0x21, 0x27, 0x29, 0x2B, 0x2D, 0x2F, 
    0x31, 0x33, 0x35, 0x38, 0x3A, 0x3F, 0x41, 0x43, 0x45, 0x48, 0x4A, 0x4B, 0x4D, 0x50, 0x52, 0x56, 
    0x58, 0x5B, 0x5D, 0x62, 0x64, 0x68, 0x6A, 0x6F, 0x71, 0x76, 0x78, 0x7D, 0x7F, 0x84, 0x86, 0x8B, 
    0x8D, 0x92, 0x94, 0x96, 0x98, 0x9A, 0x9D, 0xA2, 0xA5, 0xA9, 0xAB, 0xB0, 0xB3, 0xB8, 0x00, 0x01, 
    0x00, 0x09, 0x0B, 0x11, 0x13, 0x19, 0x1B, 0x21, 0x23, 0x29, 0x2B, 0x31, 0x33, 0x38, 0x3A, 0x41, 
    0x43, 0x49, 0x4B, 0x4C, 0x4E, 0x53, 0x55, 0x5B, 0x5D, 0x62, 0x64, 0x6B, 0x6D, 0x73, 0x75, 0x7B, 
    0x7D, 0x83, 0x85, 0x8B, 0x8D, 0x93, 0x95, 0x9B, 0x9D, 0xA3, 0xA5, 0xAA, 0xAC, 0xB2, 0xB4, 0xBC, 
    0xBE, 0xC4, 0xC6, 0xCC, 0xCE, 0xD3, 0xD5, 0xD7, 0xD9, 0xDC, 0xDE, 0xE0, 0xE2, 0xE7, 0xE9, 0xEF, 
    0x00, 0x01, 0x03, 0x08, 0x09, 0x0F, 0x11, 0x16, 0x18, 0x1D, 0x1F, 0x24, 0x26, 0x28, 0x2A, 0x2F, 
    0x31, 0x36, 0x38, 0x39, 0x3B, 0x3D, 0x3F, 0x43, 0x45, 0x46, 0x48, 0x4F, 0x51, 0x56, 0x58, 0x5D, 
    0x5F, 0x64, 0x66, 0x6B, 0x6C, 0x70, 0x72, 0x77, 0x79, 0x7C, 0x7E, 0x82, 0x84, 0x89, 0x8B, 0x92, 
    0x94, 0x99, 0x9B, 0xA0, 0xA2, 0xA6, 0xA8, 0xAB, 0xAD, 0xAE, 0xB0, 0xB3, 0xB5, 0xB9, 0xB5, 0xB9, 
    0x00, 0x00, 0x00, 0x00
};

Gfx D_800E2FB8[] = {
    gsDPPipeSync(), 
    gsDPSetCycleType(G_CYC_1CYCLE),
    gsDPSetTextureLOD(G_TL_TILE),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPSetTextureDetail(G_TD_CLAMP), 
    gsDPSetTexturePersp(G_TP_NONE),
    gsDPSetTextureFilter(G_TF_BILERP),
    gsDPSetTextureConvert(G_TC_FILT), 
    gsDPSetAlphaCompare(G_AC_NONE), 
    gsDPSetRenderMode(G_RM_XLU_SURF, G_RM_XLU_SURF2),
    gsDPSetEnvColor(255, 255, 255, 255),
    gsDPSetPrimColor(0, 0, 0, 0, 0, 0),
    gsSPEndDisplayList(),
};

/*******************************/

/************ .rodata ************/

const char D_800E8C00[] = "0123456789abcdefghijklmnopqrstuvwxyz";
const char D_800E8C28[] = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
const char D_800E8C50[] = "";
const char D_800E8C54[] = "(null)";
const char D_800E8C5C[] = "(nil)";
const char D_800E8C64[] = "*** diPrintf Error *** ---> Out of string space. (Print less text!)\n";

/*********************************/

/************ .bss ************/

extern s32 D_80127CA0;
extern s32 D_80127CA4;
extern s32 D_80127CA8;
extern u8 D_80127CD8[576];
extern u8 *D_801285D8;

/******************************/

GLOBAL_ASM("asm/non_matchings/printf/func_800B3140.s")
GLOBAL_ASM("asm/non_matchings/printf/func_800B3240.s")
GLOBAL_ASM("asm/non_matchings/printf/func_800B3358.s")
GLOBAL_ASM("asm/non_matchings/printf/func_800B34B0.s")
GLOBAL_ASM("asm/non_matchings/printf/func_800B3564.s")
GLOBAL_ASM("asm/non_matchings/printf/func_800B3740.s")
GLOBAL_ASM("asm/non_matchings/printf/func_800B3E64.s")
GLOBAL_ASM("asm/non_matchings/printf/func_800B4668.s")
GLOBAL_ASM("asm/non_matchings/printf/func_800B46BC.s")
GLOBAL_ASM("asm/non_matchings/printf/func_800B4940.s")

void func_800B4A08(s32 arg0) {
    D_800E2EF0 = arg0;
}

#ifdef NON_MATCHING
// Unused. 
// Regalloc issues. I can't get sprintf to work properly.
void func_800B4A14(char *arg0, s32 arg1, s32 arg2, s32 arg3) {
    sprintf(arg0, &arg2);
}
#else
GLOBAL_ASM("asm/non_matchings/printf/func_800B4A14.s")
#endif

GLOBAL_ASM("asm/non_matchings/printf/sprintf.s")

void func_800B5E88(void) {
    D_80127CA0 = load_texture(0);
    D_80127CA4 = load_texture(1);
    D_80127CA8 = load_texture(2);
    D_801285D8 = &D_80127CD8[0];
}

GLOBAL_ASM("asm/non_matchings/printf/render_printf.s")
GLOBAL_ASM("asm/non_matchings/printf/func_800B5F78.s")

void set_render_printf_color(u8 red, u8 green, u8 blue, u8 alpha) {
    RENDER_PRINTF_CMD_SET_COLOR(red, green, blue, alpha)
}

void set_render_printf_background_color(u8 red, u8 green, u8 blue, u8 alpha) {
    RENDER_PRINTF_CMD_SET_BACKGROUND_COLOR(red, green, blue, alpha)
}

#ifdef NON_MATCHING
void set_render_printf_position(u16 xpos, u16 ypos) {
    RENDER_PRINTF_CMD_SET_POSITION(xpos, ypos)
}
#else
GLOBAL_ASM("asm/non_matchings/printf/set_render_printf_position.s")
#endif

GLOBAL_ASM("asm/non_matchings/printf/func_800B63F4.s")
GLOBAL_ASM("asm/non_matchings/printf/func_800B653C.s")
GLOBAL_ASM("asm/non_matchings/printf/func_800B695C.s")
GLOBAL_ASM("asm/non_matchings/printf/func_800B69FC.s")
