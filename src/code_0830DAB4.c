#include "global.h"
#include "system.h"
#include "sprite.h"
#include "text.h"
#include "link.h"
#include "obj.h"
#include "resbank.h"
#include "gax.h"
#include "main.h"

void sub_0830DAB4(void)
{
    if (gUnk_03000D12 & 0x20) {
        GAX_fx(4);
        if (gMaxFrags_02007564 > 5)
            gMaxFrags_02007564 -= 5;
    }
    if (gUnk_03000D12 & 0x11) {
        GAX_fx(4);
        if (gMaxFrags_02007564 <= 24)
            gMaxFrags_02007564 += 5;
    }
    sub_080049D4(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].x,
                 gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].y, 25, 0);
    switch (gMaxFrags_02007564) {
    case 5:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Max Frags:              5 ");
        break;
    case 10:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Max Frags:             10 ");
        break;
    case 15:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Max Frags:             15 ");
        break;
    case 20:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Max Frags:             20 ");
        break;
    case 25:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Max Frags:             25 ");
        break;
    }
}
