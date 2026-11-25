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
#include "regionb.h"
#include "pickup.h"

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

/* ---- Link_Results2 0830E93C ---- 45 diff ops (RODATA=083DC6A0, rodata "%d" matches). Frag-bar loop and
 * everything before it now match (2026-11-19, tip T434): `i++` in both paths (A/B: `i++; continue;`) gives the
 * ROM's biv_count 2, and the zero case written as a redundant `else if (gFrags[i] == 0)` leaves a referenced label
 * between its last call and its `i++` (the never-taken branch jumps there), which stops jump2's cross-jump at
 * the increments. The pairs loop uses its own counter `j` (the ROM's r3). Still open:
 * 1. Sort: the inline helper's x = &pairs[b - 1] is expanded as x = fp+192; x += b*8 (set twice, so not a giv;
 *    the -8 is folded into the frame offset through get_inner_reference's bitpos), while y = &pairs[b] is
 *    (b*8 + fp) + 200, a giv. The ROM reduced both (r4 = sp+200, r6 = sp+208) and did not combine them.
 *    Tried: b - 1u, (u32)b - 1, b + -1, (pairs - 1)[b], pairs + (b - 1), &pairs[b] - 1, swap of p[0]/p[1],
 *    index helper, const params (copied to a reg anyway, integrate.c process_reg_param), struct-copy macro
 *    (one combined giv, loop reversed). A separate `c = b - 1` makes x a giv but then x and y combine into one
 *    and the loop reverses (62).
 *    Session 7 (2026-11-19): why x is not a giv: get_inner_reference folds the -8 into the base address, so
 *    expand emits `x = fp+192` (invariant) then `x += b*8`, and loop.c sees a reg set twice whose first set is
 *    not b-dependent. y is `y = b*8 + fp; y += 200`, a giv chain. Any form that starts from &pairs[b] or a
 *    pointer sum ((u8 *)pairs + b*8 - 8, &(pairs + b)[-1], (u32)&pairs[b] - 8, ...) makes x a giv (add fp+192),
 *    but then x's and y's four DEST_ADDR givs combine through express_from_1 (fp+192 vs fp+200 -> +8) and the
 *    inner loop reverses: 62. Same 45 or worse: pairs + b - 1, (u8 *)pairs - 8 + b * 8, &pairs[(s32)(b - 1)],
 *    &pairs[(u16)(b - 1)], args swapped, field-wise swap (54), explicit x/y locals (66-68), Swap3(p, i) (63).
 *    Compiler test: express_from_1 without its PLUS/PLUS stripping loop keeps the three givs apart (as the ROM
 *    does) but breaks sprite_3, so it is not the ROM's compiler. Open: what keeps x/y address givs apart.
 * 2. Pairs loop: two insns scheduled differently (`ldr r4, =gFrags` / `adds r1, #8`).
 * 3. k loop: register choice (ROM: 120 in r9, gLinkSend in sl, wait counter r4, k*8 in r7, k + 1 in r8);
 *    probably follows from the sort's pseudos. Wait counter as `i` is best (j: 56, own var: 51).
 *    Session 9 (2026-11-23): solved for Link_Results3 (its item 2): JZ_DTD compiler candidate + `<< 24` test +
 *    wait loop on `j`. Here the same changes give 45 -> 22 (the sort is what is left).
 * sub_0830ECF4 / sub_0830F0AC (Link_Results3/4, below) have byte-identical pairs and k loops: items 2 and 3 are
 * not knock-ons of the sort (their sorts match), see their comments. */
static inline void FragPair_Swap(struct FragPair *x, struct FragPair *y)
{
    struct FragPair t = *x;
    *x = *y;
    *y = t;
}

void sub_0830E93C(void)
{
    struct Sprite spr[2];
    struct FragPair pairs[2];
    struct SlotCfg cfg;
    struct FragPair tmp;
    u16 scale;
    u32 i, j, k;
    s32 a, b;

    GAX_stop_fx(-1);
    scale = gMaxFrags_02007564 / 5;
    gLinkSend_03003C04.data[0] = 120;
    sub_08002F64(&gLinkSend_03003C04, gLinkRecv_03003BC4);
    sub_08001EBC(gPalette_020073D8, (u16 *)0x05000200, 0, 32);
    sub_08004D70();
    sub_08001A6C();
    sub_08001280(&gBgBank_0300398C, &gRes_08045A30);
    sub_080012C0(&gBgBank_0300398C, 0);
    sub_080012F4(&gBgBank_0300398C, 1, 0);
    sub_08001314(&gBgBank_0300398C, 1, gTiles_08229930);
    cfg.a = 1;
    cfg.b = 1;
    cfg.c = 1;
    cfg.d = 1;
    sub_08001A48(&gBgBank_0300398C, 1, (u8 *)&cfg);
    sub_08001720(&gBgBank_0300398C, 1, 0, 0);
    sub_08001A8C(&gBgBank_0300398C);
    *(vu16 *)0x04000008 = 0x1F00;
    *(vu16 *)0x04000000 = 0x1F40;
    sub_08001E60(gBrightness_02007567);
    sub_08001EBC(sub_080012E4(&gBgBank_0300398C, 0), (u16 *)0x05000000, 0, 240);
    sub_08001EBC(gFont_083D2048.pal, (u16 *)0x05000000, 240, 16);
    sub_08001EBC(gPalette_020073D8, (u16 *)0x05000200, 0, 160);
    sub_08004848(&gFont_083D2048, 31);
    sub_08004880(15);
    sub_0800436C();
    sub_08316F10(0, 192, 30);
    while (sub_08316F50()) {
        sub_0831A54C();
        gLinkSend_03003C04.data[0] = 120;
        sub_08002F64(&gLinkSend_03003C04, gLinkRecv_03003BC4);
    }
    for (i = 0; i < 2;) {
        if (gFrags_03005A0C[i] / scale != 0) {
            if (GAME_MODE() == 1)
                sub_080002E0(&spr[i], &gAnims_0810B0D0, gFrags_03005A0C[i] / scale + 6, 0);
            else
                sub_080002E0(&spr[i], &gAnims_0810B0D0, gFrags_03005A0C[i] / scale, 0);
            goto draw;
        }
        if (gFrags_03005A0C[i] != 0) {
            if (GAME_MODE() == 1)
                sub_080002E0(&spr[i], &gAnims_0810B0D0, 7, 0);
            else
                sub_080002E0(&spr[i], &gAnims_0810B0D0, 1, 0);
        draw:
            sub_08000684(&spr[i], i * 88 + 72, 130, 40);
            sub_0800075C(&spr[i], i + 2);
            sub_0800073C(&spr[i], 5, i + 6);
            sub_0800060C(&spr[i]);
            sub_08000408(&spr[i]);
            i++;
            continue;
        } else if (gFrags_03005A0C[i] == 0) {
            if (GAME_MODE() == 1)
                sub_080002E0(&spr[i], &gAnims_0810B0D0, 0, 0);
            else
                sub_080002E0(&spr[i], &gAnims_0810B0D0, 0, 0);
            sub_08000684(&spr[i], i * 88 + 72, 130, 40);
            sub_0800075C(&spr[i], i + 2);
            sub_0800073C(&spr[i], 5, i + 6);
            sub_0800060C(&spr[i]);
            sub_08000408(&spr[i]);
        }
        i++;
    }
    for (j = 0; j < 2; j++) {
        pairs[j].player = j;
        pairs[j].frags = gFrags_03005A0C[j];
    }
    for (a = 0; a < 2; a++) {
        for (b = 1; b < 2 - a; b++) {
            if (pairs[b - 1].frags > pairs[b].frags)
                FragPair_Swap(&pairs[b - 1], &pairs[b]);
        }
    }
    for (k = 0; k < 2; k++) {
        for (i = 0; i < 90; i++) {
            sub_0831A54C();
            gLinkSend_03003C04.data[0] = 120;
            sub_08002F64(&gLinkSend_03003C04, gLinkRecv_03003BC4);
        }
        sub_08000604(&spr[pairs[k].player]);
        while (sub_080006C4(&spr[pairs[k].player])) {
            sub_0831A54C();
            sub_08000408(&spr[pairs[k].player]);
            sub_080043B4();
            gLinkSend_03003C04.data[0] = 120;
            sub_08002F64(&gLinkSend_03003C04, gLinkRecv_03003BC4);
        }
        sub_08004968(pairs[k].player * 11 + 9, 19, "%d", gFrags_03005A0C[pairs[k].player]);
    }
}

/* ---- Link_Results3 0830ECF4 ---- 32 diff ops (RODATA=083DC6A0) with the giv-combine experiment compiler, 99 with
 * the stock one (2026-11-20, session 8). Called from Link_PostMatch / Link_ClientStart for 3 players. Unlike
 * Link_Results2 the frag-bar loop is a plain `for` with three full draw copies, and the ROM strength-reduces the
 * sprite x three times (sl, r8, sp+332: one giv per path) while combining all nine &spr[i] givs into r5 and
 * leaving i + 2 / i + 6 unreduced. Stock combine_givs_p merges identical givs, so it gets one x giv and reduced
 * i + 2 / i + 6. The fit: only givs with a zero constant addend (no_const_addval) may be combined as identical
 * (tools/agbcc-givcombine-test.patch, env JZ_GIVLIFE=3; every matched function unchanged, docs/STRATEGY.md). With
 * it, everything up to the pairs loop and the whole sort match (x/y address givs *combined* here, unlike
 * Link_Results2). Still open, both shared with Link_Results2 (its items 2 and 3, byte-identical code):
 * 1. Pairs loop: `ldr r4, =gFrags` before `add r2, sp, #300`, and `adds r1, #8` right after its store.
 *    Tried: statement order swapped (37), j <= 2, the loop on i (37), a FragPair pointer (41), *(gFrags + j).
 *    Session 9 (2026-11-23): `adds r1, #8` right after the store is loop.c's auto-inc placement, which only a
 *    DEST_ADDR giv that is not combined into a DEST_REG giv gets. Ours combines the store's address giv (967)
 *    into the single-use DEST_REG giv 965 (`j*8 + (fp+304)`), so the increment goes in front of the biv
 *    increment. The egcs rule "a single-use DEST_REG giv is not a combine target" (missing in agbcc) gives the
 *    ROM's order (6 ops left: j / &gFrags swap r3/r4), but breaks sub_08001314 (resbank_1.c, minimal set: givs
 *    108/176/272/403 there). Narrowed to "the giv's addend is a pseudo" it is clean on the matched set but
 *    only fixes the player giv (7 ops: the frags giv 975, addend fp+300, still combined, so its init comes after
 *    &gFrags's). Not a flag yet; docs/STRATEGY.md (2026-11-23).
 * 2. k loop: SOLVED in an experiment (session 9, 2026-11-23), three parts, all needed:
 *    a. The ROM moves the while loop's &gLinkSend out of the while loop on loop pass 1 (then k level leaves it,
 *       and only the wait loop's copy goes out of k: sl). Ours calls it "not desirable": threshold 13 drops by 3
 *       per move (&pairs[k] then 100), and 7 * life 4 = 28 < 31 insns. Two of the 31 are a dead `fp+300` pair
 *       (cse's dead-insn sweep runs before it dies): compiler candidate JZ_DTD (delete_trivially_dead_insns
 *       before the first loop pass, tools/agbcc-dtd-test.patch, clean on the matched set) makes it 29.
 *    b. One more insn has to go: the u8 test of sub_080006C4 expands to QI copy + ashift + lshiftrt + tst.
 *       `while (((u32 (*)(struct Sprite *))sub_080006C4)(&spr[pairs[k].player]) << 24)` (a fakematch) saves
 *       one and the while pass then moves &gLinkSend (r5 as in the ROM). The real cause of the 28th insn is
 *       still open: return types s8/u16/u32+(u8), `!= 0`, `& 0xFF`, for(;;) all keep 29 or worse.
 *    c. With a+b, `&gLinkSend` (refs 7, live 124) loses global-alloc to 120 (refs 7, live 122) and gets no
 *       hard reg; the wait loop counted by `j` instead of `i` fixes the whole k loop (`for (j = 0; j < 90;
 *       j++)`). With a+b+c only item 1 is left: 9 ops (JZ_GIVLIFE=3 JZ_DTD=1). Without a+b the `j` counter
 *       is worse (46), so the source below still uses `i`. */
void sub_0830ECF4(void)
{
    struct Sprite spr[3];
    struct FragPair pairs[3];
    struct SlotCfg cfg;
    u16 scale;
    u32 i, j, k;
    s32 a, b;

    GAX_stop_fx(-1);
    scale = gMaxFrags_02007564 / 5;
    sub_08001EBC(gPalette_020073D8, (u16 *)0x05000200, 0, 32);
    gLinkSend_03003C04.data[0] = 120;
    sub_08002F64(&gLinkSend_03003C04, gLinkRecv_03003BC4);
    sub_08004D70();
    sub_08001A6C();
    sub_08001280(&gBgBank_0300398C, &gRes_08045F00);
    sub_080012C0(&gBgBank_0300398C, 0);
    sub_080012F4(&gBgBank_0300398C, 1, 0);
    sub_08001314(&gBgBank_0300398C, 1, gTiles_08229930);
    cfg.a = 1;
    cfg.b = 1;
    cfg.c = 1;
    cfg.d = 1;
    sub_08001A48(&gBgBank_0300398C, 1, (u8 *)&cfg);
    sub_08001720(&gBgBank_0300398C, 1, 0, 0);
    sub_08001A8C(&gBgBank_0300398C);
    *(vu16 *)0x04000008 = 0x1F00;
    *(vu16 *)0x04000000 = 0x1F40;
    sub_08001E60(gBrightness_02007567);
    sub_08001EBC(sub_080012E4(&gBgBank_0300398C, 0), (u16 *)0x05000000, 0, 240);
    sub_08001EBC(gFont_083D2048.pal, (u16 *)0x05000000, 240, 16);
    sub_08001EBC(gPalette_020073D8, (u16 *)0x05000200, 0, 160);
    sub_08004848(&gFont_083D2048, 31);
    sub_08004880(15);
    sub_0800436C();
    sub_08316F10(0, 192, 30);
    while (sub_08316F50()) {
        sub_0831A54C();
        gLinkSend_03003C04.data[0] = 120;
        sub_08002F64(&gLinkSend_03003C04, gLinkRecv_03003BC4);
    }
    for (i = 0; i < 3; i++) {
        if (gFrags_03005A0C[i] / scale != 0) {
            if (GAME_MODE() == 1)
                sub_080002E0(&spr[i], &gAnims_0810B0D0, gFrags_03005A0C[i] / scale + 6, 0);
            else
                sub_080002E0(&spr[i], &gAnims_0810B0D0, gFrags_03005A0C[i] / scale, 0);
            sub_08000684(&spr[i], i * 72 + 40, 130, 40);
            sub_0800075C(&spr[i], i + 2);
            sub_0800073C(&spr[i], 5, i + 6);
            sub_0800060C(&spr[i]);
            sub_08000408(&spr[i]);
        } else if (gFrags_03005A0C[i] != 0) {
            if (GAME_MODE() == 1)
                sub_080002E0(&spr[i], &gAnims_0810B0D0, 7, 0);
            else
                sub_080002E0(&spr[i], &gAnims_0810B0D0, 1, 0);
            sub_08000684(&spr[i], i * 72 + 40, 130, 40);
            sub_0800075C(&spr[i], i + 2);
            sub_0800073C(&spr[i], 5, i + 6);
            sub_0800060C(&spr[i]);
            sub_08000408(&spr[i]);
        } else if (gFrags_03005A0C[i] == 0) {
            if (GAME_MODE() == 1)
                sub_080002E0(&spr[i], &gAnims_0810B0D0, 0, 0);
            else
                sub_080002E0(&spr[i], &gAnims_0810B0D0, 0, 0);
            sub_08000684(&spr[i], i * 72 + 40, 130, 40);
            sub_0800075C(&spr[i], i + 2);
            sub_0800073C(&spr[i], 5, i + 6);
            sub_0800060C(&spr[i]);
            sub_08000408(&spr[i]);
        }
    }
    for (j = 0; j < 3; j++) {
        pairs[j].player = j;
        pairs[j].frags = gFrags_03005A0C[j];
    }
    for (a = 0; a < 3; a++) {
        for (b = 1; b < 3 - a; b++) {
            if (pairs[b - 1].frags > pairs[b].frags) {
                struct FragPair t = pairs[b - 1];
                pairs[b - 1] = pairs[b];
                pairs[b] = t;
            }
        }
    }
    for (k = 0; k < 3; k++) {
        for (i = 0; i < 90; i++) {
            sub_0831A54C();
            gLinkSend_03003C04.data[0] = 120;
            sub_08002F64(&gLinkSend_03003C04, gLinkRecv_03003BC4);
        }
        sub_08000604(&spr[pairs[k].player]);
        while (sub_080006C4(&spr[pairs[k].player])) {
            sub_0831A54C();
            sub_08000408(&spr[pairs[k].player]);
            sub_080043B4();
            gLinkSend_03003C04.data[0] = 120;
            sub_08002F64(&gLinkSend_03003C04, gLinkRecv_03003BC4);
        }
        sub_08004968(pairs[k].player * 9 + 5, 19, "%d", gFrags_03005A0C[pairs[k].player]);
    }
}

/* ---- Link_Results4 0830F0AC ---- 32 diff ops (RODATA=083DC6A0) with the giv-combine experiment compiler, 99 with
 * the stock one. Link_Results3 for 4 players (x = i * 56 + 32, text column player * 7 + 4, background
 * gRes_08046400): the same two open items, so one fix gives both. Session 9: Link_Results3's k-loop experiment
 * (wait loop on `j`, the `<< 24` test, JZ_DTD=1) takes this one to 9 ops too, the pairs loop only. */
void sub_0830F0AC(void)
{
    struct Sprite spr[4];
    struct FragPair pairs[4];
    struct SlotCfg cfg;
    u16 scale;
    u32 i, j, k;
    s32 a, b;

    GAX_stop_fx(-1);
    scale = gMaxFrags_02007564 / 5;
    sub_08001EBC(gPalette_020073D8, (u16 *)0x05000200, 0, 32);
    gLinkSend_03003C04.data[0] = 120;
    sub_08002F64(&gLinkSend_03003C04, gLinkRecv_03003BC4);
    sub_08004D70();
    sub_08001A6C();
    sub_08001280(&gBgBank_0300398C, &gRes_08046400);
    sub_080012C0(&gBgBank_0300398C, 0);
    sub_080012F4(&gBgBank_0300398C, 1, 0);
    sub_08001314(&gBgBank_0300398C, 1, gTiles_08229930);
    cfg.a = 1;
    cfg.b = 1;
    cfg.c = 1;
    cfg.d = 1;
    sub_08001A48(&gBgBank_0300398C, 1, (u8 *)&cfg);
    sub_08001720(&gBgBank_0300398C, 1, 0, 0);
    sub_08001A8C(&gBgBank_0300398C);
    *(vu16 *)0x04000008 = 0x1F00;
    *(vu16 *)0x04000000 = 0x1F40;
    sub_08001E60(gBrightness_02007567);
    sub_08001EBC(sub_080012E4(&gBgBank_0300398C, 0), (u16 *)0x05000000, 0, 240);
    sub_08001EBC(gFont_083D2048.pal, (u16 *)0x05000000, 240, 16);
    sub_08001EBC(gPalette_020073D8, (u16 *)0x05000200, 0, 160);
    sub_08004848(&gFont_083D2048, 31);
    sub_08004880(15);
    sub_0800436C();
    sub_08316F10(0, 192, 30);
    while (sub_08316F50()) {
        sub_0831A54C();
        gLinkSend_03003C04.data[0] = 120;
        sub_08002F64(&gLinkSend_03003C04, gLinkRecv_03003BC4);
    }
    for (i = 0; i < 4; i++) {
        if (gFrags_03005A0C[i] / scale != 0) {
            if (GAME_MODE() == 1)
                sub_080002E0(&spr[i], &gAnims_0810B0D0, gFrags_03005A0C[i] / scale + 6, 0);
            else
                sub_080002E0(&spr[i], &gAnims_0810B0D0, gFrags_03005A0C[i] / scale, 0);
            sub_08000684(&spr[i], i * 56 + 32, 130, 40);
            sub_0800075C(&spr[i], i + 2);
            sub_0800073C(&spr[i], 5, i + 6);
            sub_0800060C(&spr[i]);
            sub_08000408(&spr[i]);
        } else if (gFrags_03005A0C[i] != 0) {
            if (GAME_MODE() == 1)
                sub_080002E0(&spr[i], &gAnims_0810B0D0, 7, 0);
            else
                sub_080002E0(&spr[i], &gAnims_0810B0D0, 1, 0);
            sub_08000684(&spr[i], i * 56 + 32, 130, 40);
            sub_0800075C(&spr[i], i + 2);
            sub_0800073C(&spr[i], 5, i + 6);
            sub_0800060C(&spr[i]);
            sub_08000408(&spr[i]);
        } else if (gFrags_03005A0C[i] == 0) {
            if (GAME_MODE() == 1)
                sub_080002E0(&spr[i], &gAnims_0810B0D0, 0, 0);
            else
                sub_080002E0(&spr[i], &gAnims_0810B0D0, 0, 0);
            sub_08000684(&spr[i], i * 56 + 32, 130, 40);
            sub_0800075C(&spr[i], i + 2);
            sub_0800073C(&spr[i], 5, i + 6);
            sub_0800060C(&spr[i]);
            sub_08000408(&spr[i]);
        }
    }
    for (j = 0; j < 4; j++) {
        pairs[j].player = j;
        pairs[j].frags = gFrags_03005A0C[j];
    }
    for (a = 0; a < 4; a++) {
        for (b = 1; b < 4 - a; b++) {
            if (pairs[b - 1].frags > pairs[b].frags) {
                struct FragPair t = pairs[b - 1];
                pairs[b - 1] = pairs[b];
                pairs[b] = t;
            }
        }
    }
    for (k = 0; k < 4; k++) {
        for (i = 0; i < 90; i++) {
            sub_0831A54C();
            gLinkSend_03003C04.data[0] = 120;
            sub_08002F64(&gLinkSend_03003C04, gLinkRecv_03003BC4);
        }
        sub_08000604(&spr[pairs[k].player]);
        while (sub_080006C4(&spr[pairs[k].player])) {
            sub_0831A54C();
            sub_08000408(&spr[pairs[k].player]);
            sub_080043B4();
            gLinkSend_03003C04.data[0] = 120;
            sub_08002F64(&gLinkSend_03003C04, gLinkRecv_03003BC4);
        }
        sub_08004968(pairs[k].player * 7 + 4, 19, "%d", gFrags_03005A0C[pairs[k].player]);
    }
}

/* ---- Pickup_ClearAll 083142F8 ---- 7 diff ops: the ROM loads the array base and then adds 2 for
 * `&p->active` (pool word 0300407C); every form tried folds base+2 into the pool constant
 * (0300407E). The same loop with the field at offset 0 (Trigger_ClearAll) matches. */
void sub_083142F8(void)
{
    s32 i;
    for (i = 0; i != MAX_PICKUPS; i++)
        gPickups_0300407C[i].active = 0;
}

/* ---- Pickup_Create 08314338 ---- RODATA=083DF6BC. Control flow matches up to the jump table. The ROM
 * reads the two u8 stack arguments (`scored`, `a6`) with `add rX, sp, #N; ldrb rX, [rX]` and keeps a
 * 12-byte frame; agbcc here loads them as words and narrows them, and `scored` gets two stack slots
 * (16-byte frame). Probably a declaration difference for the u8 stack parameters. */
u32 sub_08314338(s32 x, s32 y, u32 type, u8 a3, u16 secs, u8 scored, u8 a6, u16 id)
{
    struct Pickup *p;
    if (!sub_08314310(&p))
        return 0;
    p->active = 1;
    p->type = type;
    p->x = x << 8;
    p->y = y << 8;
    p->z = 39;
    p->unk3 = 1;
    p->id = id;
    p->unk4 = a3;
    p->unk10 = secs * 60;
    p->unk5 = a6;
    p->unkC = 0;
    if (scored) {
        switch (type) {
        case 3:
        case 5:
            p->score = 250;
            break;
        case 6:
            p->score = 125;
            break;
        case 0:
        case 7:
            p->score = 100;
            break;
        case 9:
            p->score = 75;
            break;
        case 10:
            p->score = 200;
            break;
        case 1:
        case 2:
        case 4:
        case 8:
            p->score = 50;
            break;
        default:
            p->score = 0;
            break;
        }
        sub_080002E0(&p->sprite, &gUnk_081C00E0, p->type, 0);
    } else {
        p->score = scored;
        sub_080002E0(&p->sprite, &gUnk_081F2130, p->type, 0);
    }
    return 1;
}
