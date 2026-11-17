#include "global.h"
#include "system.h"
#include "sprite.h"
#include "text.h"
#include "link.h"
#include "obj.h"
#include "resbank.h"
#include "gax.h"
#include "main.h"

void sub_0830D948(void)
{
    if (gUnk_03000D12 & 0x20) {
        GAX_fx(4);
        if (gUnk_02007561 != 0)
            gUnk_02007561--;
    }
    if (gUnk_03000D12 & 0x11) {
        GAX_fx(4);
        if (gUnk_02007561 <= 2)
            gUnk_02007561++;
    }
    sub_080049D4(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].x,
                 gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].y, 25, 0);
    switch (gUnk_02007561) {
    case 0:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Control Configuration:  1 ");
        sub_08000680(&gSprite_020075E4, 0);
        sub_08000408(&gSprite_020075E4);
        break;
    case 1:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Control Configuration:  2 ");
        sub_08000680(&gSprite_020075E4, 1);
        sub_08000408(&gSprite_020075E4);
        break;
    case 2:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Control Configuration:  3 ");
        sub_08000680(&gSprite_020075E4, 2);
        sub_08000408(&gSprite_020075E4);
        break;
    case 3:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Control Configuration:  4 ");
        sub_08000680(&gSprite_020075E4, 3);
        sub_08000408(&gSprite_020075E4);
        break;
    }
}
