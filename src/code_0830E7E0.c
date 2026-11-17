#include "global.h"
#include "system.h"
#include "sprite.h"
#include "text.h"
#include "link.h"
#include "obj.h"
#include "resbank.h"
#include "gax.h"
#include "main.h"

void sub_0830E7E0(void)
{
    GAX_fx(4);
    if (gItemOn_02007578[4]) {
        gItemOn_02007578[4] = 0;
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Big Gun:              OFF ");
    } else {
        gItemOn_02007578[4] = 1;
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Big Gun:               ON ");
    }
}
