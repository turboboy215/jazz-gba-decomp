#include "global.h"
#include "system.h"
#include "sprite.h"
#include "text.h"
#include "link.h"
#include "obj.h"
#include "resbank.h"
#include "gax.h"
#include "main.h"

void sub_0830C034(void)
{
    if (gUnk_03000D12 & 0x20) {
        GAX_fx(4);
        if (gLevelSel_02007558 != 0)
            gLevelSel_02007558--;
    }
    if (gUnk_03000D12 & 0x10) {
        GAX_fx(4);
        if (gLevelSel_02007558 <= 22)
            gLevelSel_02007558++;
    }
    if (gUnk_03000D12 & 1) {
        GAX_fx(43);
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
        sub_08316F10(1, 192, 30);
        while (sub_08316F50())
            sub_0831A54C();
        gUnk_0200755C = 4;
        sub_08312398(gLevelSel_02007558);
        gPrevMenu_02007570 = &gMenuMain_02005C00;
        gCurMenu_0200756C = &gMenuMain_02005C00;
        sub_0830A638();
        sub_0830A06C();
        sub_0830A3B4();
        return;
    }
    sub_080049D4(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].x,
                 gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].y, 25, 0);
    switch (gLevelSel_02007558) {
    case 0:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:     Stage 1-lvl 1 ");
        break;
    case 1:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:     Stage 1-lvl 2 ");
        break;
    case 2:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:     Stage 1-lvl 3 ");
        break;
    case 3:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:     Stage 1 Boss  ");
        break;
    case 4:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:     Zoe Cottontail");
        break;
    case 5:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:     Stage 2-lvl 1 ");
        break;
    case 6:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:     Stage 2-lvl 2 ");
        break;
    case 7:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:     Stage 2-lvl 3 ");
        break;
    case 8:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:     Stage 2 Boss  ");
        break;
    case 9:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:     Prof. Lapen   ");
        break;
    case 10:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:     Stage 3-lvl 1 ");
        break;
    case 11:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:     Stage 3-lvl 2 ");
        break;
    case 12:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:     Stage 3-lvl 3 ");
        break;
    case 13:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:     Stage 3 Boss  ");
        break;
    case 14:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:     Spaz          ");
        break;
    case 15:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:     Stage 4-lvl 1 ");
        break;
    case 16:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:     Stage 4-lvl 2 ");
        break;
    case 17:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:     Stage 4-lvl 3 ");
        break;
    case 18:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:     Stage 4 Boss  ");
        break;
    case 19:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:     Prof. Lapen   ");
        break;
    case 20:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:     Stage 5-lvl 1 ");
        break;
    case 21:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:     Stage 5-lvl 2 ");
        break;
    case 22:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:     Stage 5-lvl 3 ");
        break;
    case 23:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:     Dark Shell    ");
        break;
    }
}
