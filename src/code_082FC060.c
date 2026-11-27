#include "actor.h"
#include "gax.h"
#include "global.h"
#include "link.h"
#include "main.h"
#include "map.h"
#include "multi_sio.h"
#include "oam.h"
#include "obj.h"
#include "resbank.h"
#include "scene.h"
#include "sprite.h"
#include "system.h"
#include "text.h"
#include "regionb.h"
void sub_082FC060(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_08316308(0, 0, 60, 0);
    sub_08316500(sub_082FC084);
}

void sub_082FC084(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_0831628C(1, 1, 27, 4, 1, 180, 0);
    sub_08316178(6, 2, gStr_083D6834, 180, 0);
    sub_083164C8(8);
    sub_083164A4(3, 1);
    sub_08316500(sub_082FC0DC);
}

void sub_082FC0DC(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_0831628C(1, 1, 27, 4, 1, 180, 0);
    sub_08316178(6, 2, gStr_083D6870, 180, 0);
    sub_083164C8(8);
    sub_083164A4(3, 1);
    sub_08316500(sub_082FC134);
}

void sub_082FC134(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_0831628C(1, 1, 27, 4, 1, 100, 0);
    sub_08316178(6, 2, gStr_083D68A8, 100, 0);
    sub_083164C8(8);
    sub_083164A4(3, 1);
}

void sub_082FC180(void)
{
    GAX_fx(49);
    sub_08316F10(1, 0xC0, 60);
    while (sub_08316F50())
        sub_0831A54C();
    sub_08311C50(22, 0);
    gUnk_03000D14 = 0;
    gUnk_03000D1C = 0;
    gPlayer_0300250C.unk40 = 0;
    gPlayer_0300250C.unk44 = 0;
    sub_08316F10(0, 0xC0, 60);
}

void sub_082FC1D4(void)
{
    GAX_fx(49);
    sub_08316F10(1, 0xC0, 60);
    while (sub_08316F50())
        sub_0831A54C();
    sub_08311C50(23, 0);
    gUnk_03000D14 = 0;
    gUnk_03000D1C = 0;
    gPlayer_0300250C.unk40 = 0;
    gPlayer_0300250C.unk44 = 0;
    sub_08316F10(0, 0xC0, 60);
}
