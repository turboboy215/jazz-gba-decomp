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
