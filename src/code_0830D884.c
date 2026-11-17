#include "global.h"
#include "system.h"
#include "sprite.h"
#include "text.h"
#include "link.h"
#include "obj.h"
#include "resbank.h"
#include "gax.h"
#include "main.h"

void sub_0830D884(void)
{
    if (gUnk_03000D12 & 0x20) {
        GAX_fx(4);
        if (gUnk_02007560 != 0)
            gUnk_02007560--;
    }
    if (gUnk_03000D12 & 0x11) {
        GAX_fx(4);
        if (gUnk_02007560 == 0)
            gUnk_02007560++;
    }
    sub_080049D4(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].x,
                 gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].y, 25, 0);
    switch (gUnk_02007560) {
    case 0:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Mode:              Battle ");
        break;
    case 1:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Mode:    Capture The Flag ");
        break;
    }
}
