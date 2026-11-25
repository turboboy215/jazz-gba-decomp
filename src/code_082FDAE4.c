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
void sub_082FDAE4(void)
{
    s32 zero;
    sub_0831650C();
    sub_0831654C();
    gUnk_03000D1C = zero = 0;
    gUnk_03000D14 = zero;
    gPlayer_0300250C.unk40 = zero;
    gPlayer_0300250C.unk44 = zero;
    sub_08316308(0, 0, 0, 0);
    sub_083160FC(24, 7, -1, 1, zero);
    sub_083160FC(25, 7, -1, 1, zero);
    sub_083160FC(26, 7, -1, 1, zero);
    sub_083160FC(27, 7, -1, 1, zero);
    sub_083160FC(28, 7, -1, 1, zero);
    sub_083160FC(58, 7, -1, 1, zero);
    sub_083160FC(59, 7, -1, 1, zero);
    sub_08316098(2, 0, 0, 11);
    sub_08316098(8, 0, 0, 60);
    sub_08316500(sub_082FDBA8);
}

void sub_082FDBA8(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_08316308(0, 0, 0, 0);
    sub_083160FC(24, 7, -1, 1, 0);
    sub_083160FC(25, 7, -1, 1, 0);
    sub_083160FC(26, 7, -1, 1, 0);
    sub_083160FC(27, 7, -1, 1, 0);
    sub_083160FC(28, 7, -1, 1, 0);
    sub_083160FC(58, 7, -1, 1, 0);
    sub_083160FC(59, 7, -1, 1, 0);
    sub_0831628C(1, 1, 27, 4, 5, 120, 0);
    sub_08316178(6, 2, gStr_083D701C, 120, 0);
    sub_083164A4(3, 1);
    sub_083164C8(8);
    sub_08316500(sub_082FDC70);
}

void sub_082FDC70(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_08316308(0, 0, 0, 0);
    sub_083160FC(24, 7, -1, 1, 0);
    sub_083160FC(25, 7, -1, 1, 0);
    sub_083160FC(26, 7, -1, 1, 0);
    sub_083160FC(27, 7, -1, 1, 0);
    sub_083160FC(28, 7, -1, 1, 0);
    sub_083160FC(58, 7, -1, 1, 0);
    sub_083160FC(59, 7, -1, 1, 0);
    sub_0831628C(1, 1, 27, 4, 1, 120, 0);
    sub_08316178(6, 2, gStr_083D7048, 120, 0);
    sub_083164A4(3, 1);
    sub_083164C8(8);
    sub_08316500(sub_082FDD38);
}

void sub_082FDD38(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_08316308(100, 20, 60, 0);
    sub_083160FC(24, 7, 0, 3, 60);
    sub_083160FC(25, 1, 0, 3, 60);
    sub_083160FC(26, 1, 0, 3, 60);
    sub_083160FC(27, 1, 0, 3, 60);
    sub_083160FC(28, 1, 0, 3, 60);
    sub_083160FC(58, 1, 0, 3, 60);
    sub_083160FC(59, 1, 0, 3, 60);
    sub_08316500(sub_082FDDC8);
}

void sub_082FDDC8(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_08316308(0, 0, 0, 0);
    sub_083160FC(24, 7, -1, 1, 0);
    sub_083160FC(25, 7, -1, 1, 0);
    sub_083160FC(26, 7, -1, 1, 0);
    sub_083160FC(27, 7, -1, 1, 0);
    sub_083160FC(28, 7, -1, 1, 0);
    sub_083160FC(58, 7, -1, 1, 0);
    sub_083160FC(59, 7, -1, 1, 0);
    sub_0831628C(1, 1, 27, 4, 14, 120, 0);
    sub_08316178(6, 2, gStr_083D7064, 120, 0);
    sub_083164A4(3, 1);
    sub_083164C8(8);
    sub_08316500(sub_082FDE90);
}
