#include "global.h"
#include "system.h"
#include "gax.h"
#include "main.h"

void sub_08315278(void)
{
    u8 *p;

    sub_0831715C(4);
    sub_083171C4(3, gUnk_03005874);
    p = gSaveExtra_030046CC;
    sub_083173DC(62, p);
    sub_08315010(1000);
    p += 8;
    sub_083173DC(63, p);
    sub_08315010(1000);
}

u8 *sub_083152BC(void)
{
    return gSaveExtra_030046CC;
}
