#include "global.h"
#include "system.h"
#include "sprite.h"
#include "text.h"
#include "link.h"
#include "obj.h"
#include "resbank.h"
#include "gax.h"
#include "main.h"

void sub_0830AE38(void)
{
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
    gUnk_02007566 = gCurMenu_0200756C->cursor;
    sub_08316F10(1, 192, 30);
    while (sub_08316F50())
        sub_0831A54C();
    sub_0831502C(gUnk_0200755C);
    sub_08306670();
    sub_08312398(0);
    gPrevMenu_02007570 = &gMenuMain_02005C00;
    gCurMenu_0200756C = &gMenuMain_02005C00;
    sub_0830A638();
    sub_0830A06C();
    sub_0830A3B4();
}
