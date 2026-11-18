/*
 * Region B functions that are decompiled but do not yet match byte-for-byte (see region_a.c for the
 * conventions). The ROM is still built from asm/ for these; `make nonmatching` compiles this file.
 */
#include "global.h"
#include "system.h"
#include "sprite.h"
#include "text.h"
#include "link.h"
#include "obj.h"
#include "resbank.h"
#include "gax.h"
#include "main.h"

/* ---- Save_Init 08315158 ---- 4 diff ops: the first loop's `buf + i` giv is "not worth while, 0 vs 7"
 * (OPT=-dL), so it stays indexed; the ROM strength-reduced it to a pointer whose init comes after the
 * hoisted 0x1FF and 0 (a reduced giv's place). A plain `*d++` puts the init before them (6 ops). */
void sub_08315158(void)
{
    u32 i, j, k;
    u8 *dd;
    const char *src;
    char c;

    sub_083151F0();
    if (sub_08315128() == 0) {
        for (i = 0; i <= 0x1FF; i++)
            gSaveBuf_030044DC[i] = 0;
        for (j = 0, dd = gSaveBuf_030044DC, src = gSaveMagic_083DF9BC; j <= 7; j++) {
            c = *src++;
            *dd++ = c;
        }
        for (k = 0; k <= 3; k++)
            sub_0831502C(k);
        sub_083151B4();
    }
}

/* ---- MainMenu 0830AAA8 ---- 23 diff ops: the down-key test reloads the keys into r4 (ROM r1) and the
 * item callback is addressed from the menu base plus cursor*40 + 68 (ROM: from the item pointer + 68,
 * the same r2 the key mask test used). */
void sub_0830AAA8(void)
{
    u8 i;

    for (;;) {
        if (sub_08003490()) {
            gLinkSend_03003C04.data[0] = 120;
            sub_08002F64(&gLinkSend_03003C04, gLinkRecv_03003BC4);
        }
        sub_0831A54C();
        sub_08002094(&gUnk_03000D10, &gUnk_03000D12);
        sub_08309F28();
        if (gUnk_03000D12 & 0x40) {
            GAX_fx(5);
            if (strcmp(gCurMenu_0200756C->title, gStr_083DB38C) == 0) {
                sub_0800060C(&gSprites_02007774[gCurMenu_0200756C->cursor]);
                sub_08000408(&gSprites_02007774[gCurMenu_0200756C->cursor]);
            }
            if (gCurMenu_0200756C->cursor == 0)
                gCurMenu_0200756C->cursor = gCurMenu_0200756C->count - 1;
            else
                gCurMenu_0200756C->cursor = gCurMenu_0200756C->cursor - 1;
            if (strcmp(gCurMenu_0200756C->title, gStr_083DB38C) == 0) {
                sub_08000604(&gSprites_02007774[gCurMenu_0200756C->cursor]);
                sub_08000408(&gSprites_02007774[gCurMenu_0200756C->cursor]);
            }
        }
        if (gUnk_03000D12 & 0x80) {
            GAX_fx(5);
            if (strcmp(gCurMenu_0200756C->title, gStr_083DB38C) == 0) {
                sub_0800060C(&gSprites_02007774[gCurMenu_0200756C->cursor]);
                sub_08000408(&gSprites_02007774[gCurMenu_0200756C->cursor]);
            }
            if (gCurMenu_0200756C->cursor < gCurMenu_0200756C->count - 1)
                gCurMenu_0200756C->cursor = gCurMenu_0200756C->cursor + 1;
            else
                gCurMenu_0200756C->cursor = 0;
            if (strcmp(gCurMenu_0200756C->title, gStr_083DB38C) == 0) {
                sub_08000604(&gSprites_02007774[gCurMenu_0200756C->cursor]);
                sub_08000408(&gSprites_02007774[gCurMenu_0200756C->cursor]);
            }
        }
        sub_08000684(&gCursorSprite_02007580, 11,
                     gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].y * 8 + 8, 128);
        sub_08000408(&gCursorSprite_02007580);
        sub_080043B4();
        if ((gUnk_03000D12 & 2) && gCurMenu_0200756C->title != gPrevMenu_02007570->title) {
            if (strcmp(gPrevMenu_02007570->title, gStr_083DB350) == 0)
                sub_0830BFAC();
            if (strcmp(gPrevMenu_02007570->title, gStr_083DB3A0) == 0)
                sub_0830B634();
            if (strcmp(gPrevMenu_02007570->title, gStr_083DB3AC) == 0)
                sub_0830B704();
            if (strcmp(gPrevMenu_02007570->title, gStr_083DB3BC) == 0)
                sub_0830B9A4();
            if (strcmp(gPrevMenu_02007570->title, gStr_083DB3D0) == 0)
                sub_0830BB74();
            if (strcmp(gPrevMenu_02007570->title, gStr_083DB3DC) == 0)
                sub_0830BB74();
            if (strcmp(gPrevMenu_02007570->title, gStr_083DB3EC) == 0)
                sub_0830B94C();
            if (strcmp(gPrevMenu_02007570->title, gStr_083DB3F8) == 0)
                sub_0830B9FC();
            if (strcmp(gPrevMenu_02007570->title, gStr_083DB410) == 0)
                sub_0830BA54();
        }
        if (gUnk_03000D12 & gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].keys)
            gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].func();
        sub_08004914(1, 1, gCurMenu_0200756C->title);
        if (strcmp(gCurMenu_0200756C->title, gStr_083DB3A0) == 0)
            sub_08004914(6, 5, gStr_083DB428);
        if (strcmp(gCurMenu_0200756C->title, gStr_083DB440) == 0)
            sub_08004914(4, 5, gStr_083DB44C);
        if (strcmp(gPrevMenu_02007570->title, gCurMenu_0200756C->title) != 0) {
            sub_08004914(14, 19, gStr_083DB464);
            if (strcmp(gPrevMenu_02007570->title, gStr_083DB478) != 0)
                sub_08004914(12, 19, gStr_083DB384);
        }
        if (gCurMenu_0200756C->changeable)
            sub_08004914(0, 19, gStr_083DB488);
        strcmp(gCurMenu_0200756C->title, gStr_083DB38C);
        for (i = 0; i < gCurMenu_0200756C->count; i++)
            sub_08004914(gCurMenu_0200756C->items[i].x + 1, gCurMenu_0200756C->items[i].y,
                         gCurMenu_0200756C->items[i].label);
    }
}

/* ---- Save_Format 0831522C ---- 4 diff ops: the same first-loop problem as Save_Init (whose body is
 * this function's, minus the final writes; inlining a static copy into Save_Init is worse: 13-24). */
void sub_0831522C(void)
{
    u32 i, j, k;
    u8 *dd;
    const char *src;
    char c;

    for (i = 0; i <= 0x1FF; i++)
        gSaveBuf_030044DC[i] = 0;
    for (j = 0, dd = gSaveBuf_030044DC, src = gSaveMagic_083DF9BC; j <= 7; j++) {
        c = *src++;
        *dd++ = c;
    }
    for (k = 0; k <= 3; k++)
        sub_0831502C(k);
    sub_083151B4();
}

/* ---- Link_MultiPakStart 0830AF0C ---- 43 diff ops (RODATA=083DB4D4): register allocation only. The ROM
 * hoists &gCurMenu into sl for the outer loop and keeps the always-1 loop flag out of registers (its tests
 * are `movs r0, #1; cmp r0, #0`, i.e. reload rematerialised a REG_EQUIV constant); here loop.c finds
 * &gCurMenu "not desirable" (life 11 in a 233-insn loop) and the flag takes sl. Tried: flag as
 * u8/int/register/volatile, set at the declaration or just before the loop, a dead `again = 0`, while vs
 * if+do-while, the menu stores in either order. The nested `if (keys & 8) {} else if (keys & 2)` and the
 * chained `gPrevMenu = gCurMenu = &gMenuMain` each brought it closer. The packet send appears 3 times:
 * maybe an inline function in the original. */
void sub_0830AF0C(void)
{
    u8 *extra = sub_083152BC();
    u32 i;
    u8 again = 1;

    switch (gUnk_0200755D) {
    case 4:
        if (extra[2] == 0) {
            GAX_fx(6);
            return;
        }
        break;
    case 5:
        if (extra[3] == 0) {
            GAX_fx(6);
            return;
        }
        break;
    case 6:
        if (extra[4] == 0) {
            GAX_fx(6);
            return;
        }
        break;
    case 9:
        if (extra[0] == 0) {
            GAX_fx(6);
            return;
        }
        break;
    case 10:
        if (extra[1] == 0) {
            GAX_fx(6);
            return;
        }
        break;
    }
    sub_08002058();
    switch (gUnk_02007561) {
    case 1:
        sub_08001FFC(1, 2);
        sub_08001FFC(2, 1);
        break;
    case 2:
        sub_08001FFC(8, 4);
        sub_08001FFC(4, 8);
        break;
    case 3:
        sub_08001FFC(1, 2);
        sub_08001FFC(2, 1);
        sub_08001FFC(8, 4);
        sub_08001FFC(4, 8);
        break;
    }
    while (gLinkRecv_03003BC4[0].data[0] != 222) {
        gLinkSend_03003C04.data[0] = 222;
        gLinkSend_03003C04.data[1] = gUnk_0200755D;
        gLinkSend_03003C04.data[2] = gMaxFrags_02007564;
        gLinkSend_03003C04.data[3] = gItemOn_02007578[0] | (gItemOn_02007578[1] << 1) | (gItemOn_02007578[2] << 2)
            | (gItemOn_02007578[3] << 3) | (gItemOn_02007578[4] << 4) | (gItemOn_02007578[5] << 5)
            | (gItemOn_02007578[6] << 6) | (gItemOn_02007578[7] << 7);
        gLinkSend_03003C04.data[4] = gUnk_0200755E;
        gLinkSend_03003C04.data[5] = gRadar_02007569;
        sub_0831A54C();
        sub_08002F64(&gLinkSend_03003C04, gLinkRecv_03003BC4);
    }
    for (i = 0; i < 5; i++) {
        gLinkSend_03003C04.data[0] = 222;
        gLinkSend_03003C04.data[1] = gUnk_0200755D;
        gLinkSend_03003C04.data[2] = gMaxFrags_02007564;
        gLinkSend_03003C04.data[3] = gItemOn_02007578[0] | (gItemOn_02007578[1] << 1) | (gItemOn_02007578[2] << 2)
            | (gItemOn_02007578[3] << 3) | (gItemOn_02007578[4] << 4) | (gItemOn_02007578[5] << 5)
            | (gItemOn_02007578[6] << 6) | (gItemOn_02007578[7] << 7);
        gLinkSend_03003C04.data[4] = gUnk_0200755E;
        gLinkSend_03003C04.data[5] = gRadar_02007569;
        sub_0831A54C();
        sub_08002F64(&gLinkSend_03003C04, gLinkRecv_03003BC4);
    }
    if (again) do {
        sub_08316F10(1, 192, 30);
        while (sub_08316F50())
            sub_0831A54C();
        sub_08313D78(gLinkRecv_03003BC4[0].data[1], gLinkRecv_03003BC4[0].data[2]);
        switch (LINK_GETUNK4()) {
        case 2:
            sub_0830E93C();
            break;
        case 3:
            sub_0830ECF4();
            break;
        case 4:
            sub_0830F0AC();
            break;
        }
        i = 0;
        do {
            sub_0831A54C();
            i++;
            if ((i & 31) > 16) {
                sub_080049D4(0, 0, 30, 0);
                sub_080049D4(0, 1, 30, 0);
            } else {
                sub_08004914(0, 0, gStr_083DB494);
                sub_08004914(0, 1, gStr_083DB4B4);
            }
            sub_08002094(&gUnk_03000D10, &gUnk_03000D12);
            gLinkSend_03003C04.data[0] = 120;
            sub_08002F64(&gLinkSend_03003C04, gLinkRecv_03003BC4);
        } while (!(gUnk_03000D12 & 10));
        if (gUnk_03000D12 & 8) {
        } else if (gUnk_03000D12 & 2) {
            do {
                gLinkSend_03003C04.data[0] = 127;
                sub_0831A54C();
                sub_08002F64(&gLinkSend_03003C04, gLinkRecv_03003BC4);
            } while (gLinkRecv_03003BC4[0].data[0] != 127);
            sub_08316F10(1, 192, 3);
            while (sub_08316F50())
                sub_0831A54C();
            gUnk_03003F10 = 1;
            sub_0830A638();
            gPrevMenu_02007570 = gCurMenu_0200756C = &gMenuMain_02005C00;
            sub_0830A140();
            gTitleScrolled_02007574 = 0;
            gPrevMenu_02007570 = &gMenuTournament_0200611C;
            gCurMenu_0200756C = &gMenuMultiPak_020062D0;
            sub_0830A324();
            gCurMenu_0200756C->cursor = 0;
            *(vu16 *)0x04000050 = 0x442;
            *(vu16 *)0x04000052 = 0x303;
            *(vu16 *)0x0400000A = 0x1E82;
            sub_08000604(&gCursorSprite_02007580);
            return;
        }
        do {
            gLinkSend_03003C04.data[0] = 222;
            gLinkSend_03003C04.data[1] = gUnk_0200755D;
            gLinkSend_03003C04.data[2] = gMaxFrags_02007564;
            gLinkSend_03003C04.data[3] = gItemOn_02007578[0] | (gItemOn_02007578[1] << 1) | (gItemOn_02007578[2] << 2)
                | (gItemOn_02007578[3] << 3) | (gItemOn_02007578[4] << 4) | (gItemOn_02007578[5] << 5)
                | (gItemOn_02007578[6] << 6) | (gItemOn_02007578[7] << 7);
            gLinkSend_03003C04.data[4] = gUnk_0200755E;
            gLinkSend_03003C04.data[5] = gRadar_02007569;
            sub_0831A54C();
            sub_08002F64(&gLinkSend_03003C04, gLinkRecv_03003BC4);
        } while (gLinkRecv_03003BC4[0].data[0] != 222);
        gItemOn_02007578[0] = gLinkRecv_03003BC4[0].data[3] & 1;
        gItemOn_02007578[1] = (gLinkRecv_03003BC4[0].data[3] >> 1) & 1;
        gItemOn_02007578[2] = (gLinkRecv_03003BC4[0].data[3] >> 2) & 1;
        gItemOn_02007578[3] = (gLinkRecv_03003BC4[0].data[3] >> 3) & 1;
        gItemOn_02007578[4] = (gLinkRecv_03003BC4[0].data[3] >> 4) & 1;
        gItemOn_02007578[5] = (gLinkRecv_03003BC4[0].data[3] >> 5) & 1;
        gItemOn_02007578[6] = (gLinkRecv_03003BC4[0].data[3] >> 6) & 1;
        gItemOn_02007578[7] = (gLinkRecv_03003BC4[0].data[3] >> 7) & 1;
    } while (again);
}
