#include "global.h"
#include "system.h"
#include "sprite.h"
#include "text.h"
#include "link.h"
#include "obj.h"
#include "resbank.h"
#include "gax.h"
#include "main.h"

void sub_0830E3E8(void)
{
    if (gRadar_02007569) {
        GAX_fx(4);
        gRadar_02007569 = 0;
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Radar:                OFF ");
    } else {
        GAX_fx(4);
        gRadar_02007569 = 1;
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Radar:                 ON ");
    }
}
