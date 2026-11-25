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
void sub_082FE614(void)
{
    sub_0831650C();
    sub_0831654C();
    gPlayer_0300250C.unk40 = 0;
    gPlayer_0300250C.unk44 = 0;
    sub_08316308(0, 0, 0, 0);
    sub_0831628C(1, 1, 27, 4, 0, 60, 1);
    sub_08316178(6, 2, gStr_083D72B4, 60, 1);
    sub_083160FC(1, 41, 0, 2, 1);
    sub_083164C8(8);
    sub_083164A4(3, 1);
    sub_08316500(sub_082FE690);
}

void sub_082FE690(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_083160FC(1, 39, -1, 0, 1);
    sub_08316308(300, 0, 60, 0);
    sub_08316500(sub_082FE6CC);
}

void sub_082FE6CC(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_083160FC(1, 39, -1, 0, 1);
    sub_08316308(0, 0, 0, 0);
    sub_0831628C(1, 1, 27, 4, 15, 120, 0);
    sub_08316178(6, 2, gStr_083D72C8, 120, 0);
    sub_083164C8(8);
    sub_083164A4(3, 1);
    sub_08316500(sub_082FE740);
}

void sub_082FE740(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_083160FC(1, 27, 0, 2, 60);
    sub_083160FC(1, 41, 0, 2, 120);
    sub_083160FC(1, 25, 0, 2, 60);
    sub_08316308(0, 0, 0, 0);
    sub_08316500(sub_082FE798);
}

void sub_082FE798(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_083160FC(1, 31, 0, 2, 120);
    sub_083160FC(1, 37, 0, 2, 25);
    sub_08316308(0, 0, 0, 0);
    sub_08316500(sub_082FE7E0);
}

void sub_082FE7E0(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_083160FC(1, 39, -1, 0, 1);
    sub_08316308(0, 0, 0, 0);
    sub_0831628C(1, 1, 27, 4, 15, 180, 0);
    sub_08316178(6, 2, gStr_083D72FC, 180, 0);
    sub_083164C8(8);
    sub_083164A4(3, 1);
    sub_08316308(0, 0, 0, 0);
    sub_08316500(sub_082FE860);
}
