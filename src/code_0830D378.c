#include "global.h"
#include "system.h"
#include "sprite.h"
#include "text.h"
#include "link.h"
#include "obj.h"
#include "resbank.h"
#include "gax.h"
#include "main.h"

void sub_0830D378(void)
{
    u8 *extra;

    if (gUnk_03000D12 & 0x20) {
        GAX_fx(4);
        if (gUnk_0200755D != 0)
            gUnk_0200755D--;
    }
    if (gUnk_03000D12 & 0x11) {
        GAX_fx(4);
        if (gUnk_0200755D <= 9)
            gUnk_0200755D++;
    }
    sub_080049D4(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].x,
                 gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].y, 25, 0);
    extra = sub_083152BC();
    switch (gUnk_0200755D) {
    case 0:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:       Cave Level 1 ");
        break;
    case 1:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:       Cave Level 2 ");
        break;
    case 2:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:       Snow Level 1 ");
        break;
    case 3:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:       Snow Level 2 ");
        break;
    case 4:
        if (extra[2])
            strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:     Castle Level 3 ");
        else
            strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:    Castle Level 3# ");
        break;
    case 5:
        if (extra[3])
            strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:        Wasteland 1 ");
        else
            strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:       Wasteland 1# ");
        break;
    case 6:
        if (extra[4])
            strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:        Wasteland 2 ");
        else
            strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:       Wasteland 2# ");
        break;
    case 7:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:       Single Pak 1 ");
        break;
    case 8:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:       Single Pak 2 ");
        break;
    case 9:
        if (extra[0])
            strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:       Single Pak 3 ");
        else
            strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:      Single Pak 3# ");
        break;
    case 10:
        if (extra[1])
            strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:       Single Pak 4 ");
        else
            strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:      Single Pak 4# ");
        break;
    }
}
