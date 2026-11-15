#include "global.h"
#include "system.h"
#include "gax.h"
#include "main.h"

void sub_083151B4(void)
{
    u32 i;
    u8 *p;

    sub_0831715C(4);
    sub_083171C4(3, gUnk_03005874);
    for (i = 0, p = gSaveBuf_030044DC; i <= 63; p += 8, i++) {
        sub_083173DC(i, p);
        sub_08315010(1000);
    }
}

void sub_083151F0(void)
{
    u32 i;
    u8 *p;

    sub_0831715C(4);
    sub_083171C4(3, gUnk_03005874);
    for (i = 0, p = gSaveBuf_030044DC; i <= 63; p += 8, i++) {
        sub_08317324(i, p);
        sub_08315010(1000);
    }
}
