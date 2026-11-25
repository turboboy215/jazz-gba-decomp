#include "global.h"
#include "scene.h"
void sub_083164A4(u16 a, s32 b)
{
    gUnk_0200796C = 1;
    gUnk_02007974 |= a;
    gUnk_02007970 = b;
}

void sub_083164C8(u16 a)
{
    gUnk_02007976 |= a;
}

void sub_083164DC(s32 a)
{
    if (gScene_02007978.state != 1)
        gUnk_02007968 = a;
}

void sub_083164F4(void)
{
    gUnk_02007968 = 0;
}

void sub_08316500(void (*f)(void))
{
    gScenePage_03005A40 = f;
}

void sub_0831650C(void)
{
    gScene_02007978.unkAC = 1;
    gUnk_03000D1C = 0;
    gUnk_03000D14 = 0;
}

void sub_0831652C(void)
{
    gScene_02007978.unkAD = 1;
}

void sub_0831653C(void)
{
    gScene_02007978.unkAE = 1;
}

void sub_0831654C(void)
{
    gScene_02007978.unkAF = 1;
    if (gUnk_030059DD == 1)
        sub_08004A1C();
    gUnk_030059DD = 0;
}
