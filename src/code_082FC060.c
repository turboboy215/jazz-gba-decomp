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
