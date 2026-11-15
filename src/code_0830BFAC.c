#include "global.h"
#include "system.h"
#include "sprite.h"
#include "text.h"
#include "link.h"
#include "obj.h"
#include "resbank.h"
#include "gax.h"
#include "main.h"

void sub_0830BFAC(void)
{
    sub_0830A4AC();
    if (!gTitleScrolled_02007574)
        sub_0830A1B0();
    if (strcmp(gCurMenu_0200756C->title, gStr_083DB478) == 0)
        GAX_resume_music();
    gPrevMenu_02007570 = &gMenuMain_02005C00;
    gCurMenu_0200756C = &gMenuMain_02005C00;
    sub_0830A3B4();
}

void sub_0830BFF8(void)
{
    if (gTitleScrolled_02007574)
        sub_0830A274();
    sub_0830A4AC();
    gPrevMenu_02007570 = &gMenuMultiPak_020062D0;
    gCurMenu_0200756C = &gMenu13_02007224;
    sub_0830A3B4();
}
