#include "global.h"
#include "system.h"
#include "sprite.h"
#include "text.h"
#include "link.h"
#include "obj.h"
#include "resbank.h"
#include "gax.h"
#include "main.h"

void sub_0830E6F8(void)
{
    GAX_fx(4);
    if (gItemOn_02007578[2]) {
        gItemOn_02007578[2] = 0;
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Flamethrower:         OFF ");
    } else {
        gItemOn_02007578[2] = 1;
        strcpy(gCurMenu_0200756C->items[gCurMenu_0200756C->cursor].label, " Flamethrower:          ON ");
    }
}
