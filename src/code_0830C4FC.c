#include "global.h"
#include "system.h"
#include "sprite.h"
#include "text.h"
#include "link.h"
#include "obj.h"
#include "resbank.h"
#include "gax.h"
#include "main.h"

void sub_0830C4FC(void)
{
    if (gUnk_03000D12 & 0x20) {
        GAX_fx(4);
        if (gCharacter_02007559 != 0)
            gCharacter_02007559--;
    }
    if (gUnk_03000D12 & 0x11) {
        GAX_fx(4);
        if (gCharacter_02007559 == 0)
            gCharacter_02007559++;
    }
    sub_080049D4(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].x,
                 gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].y, 25, 0);
    switch (gCharacter_02007559) {
    case 0:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Character:           Jazz ");
        break;
    case 1:
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Character:            Zoe ");
        break;
    }
}
