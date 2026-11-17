#include "global.h"
#include "system.h"
#include "sprite.h"
#include "text.h"
#include "link.h"
#include "obj.h"
#include "resbank.h"
#include "gax.h"
#include "main.h"

void sub_0830D668(void)
{
    u8 *extra;

    if (gUnk_03000D12 & 0x20) {
        GAX_fx(4);
        if (gUnk_0200755F != 0)
            gUnk_0200755F--;
    }
    if (gUnk_03000D12 & 0x11) {
        GAX_fx(4);
        if (gUnk_0200755F <= 2)
            gUnk_0200755F++;
    }
    sub_080049D4(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].x,
                 gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].y, 25, 0);
    extra = sub_083152BC();
    switch (gUnk_0200755F) {
    case 0:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:       Single-Pak 1 ");
        break;
    case 1:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:       Single-Pak 2 ");
        break;
    case 2:
        if (extra[0])
            strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:       Single-Pak 3 ");
        else
            strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:      Single-Pak 3# ");
        break;
    case 3:
        if (extra[1])
            strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:       Single-Pak 4 ");
        else
            strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Level:      Single-Pak 4# ");
        break;
    }
}
