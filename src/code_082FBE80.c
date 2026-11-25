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
void sub_082FBE80(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_08316308(0, 0, 1, 0);
    sub_08316500(sub_082FBEA4);
}

void sub_082FBEA4(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_0831628C(1, 1, 27, 4, 0, 180, 0);
    sub_08316178(6, 2, gStr_083D6808, 180, 0);
    sub_083164C8(8);
    sub_083164A4(3, 1);
}

void sub_082FBEF0(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_08316308(0, 0, 1, 0);
    sub_08316308(1247, 382, 60, 0);
    sub_08316500(sub_082FBF28);
}

void sub_082FBF28(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_08001DC8(5, 1);
    sub_08316308(0, 0, 120, 0);
    sub_08316500(sub_082FBF54);
}

void sub_082FBF54(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_08316308(0xFFFFFB21, 0xFFFFFE82, 60, 0);
}

void sub_082FBF78(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_08316308(0, 0, 1, 0);
    sub_08316308(-66, 94, 60, 0);
    sub_08316500(sub_082FBFAC);
}

void sub_082FBFAC(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_08001DC8(3, 0);
    sub_08316308(0, 0, 60, 0);
    sub_08316500(sub_082FBFD8);
}

void sub_082FBFD8(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_08316308(66, -94, 60, 0);
}
