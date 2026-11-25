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
void sub_083008C0(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_08316308(0, 0, 0, 0);
    sub_08316098(2, 0, 0, 130);
    sub_08316500(sub_083008F0);
}

void sub_083008F0(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_08316308(0, 0, 0, 0);
    sub_083160FC(1, 46, 0, 2, 60);
    sub_08316500(sub_08300928);
}

void sub_08300928(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_08316308(0, 0, 0, 0);
    sub_083160FC(1, 46, -1, 0, 1);
    sub_0831628C(2, 1, 21, 4, 13, 60, 0);
    sub_08316178(7, 2, gStr_083D7B10, 60, 0);
    sub_083164A4(3, 1);
    sub_083164C8(8);
}

void sub_08300990(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_08316308(0, 0, 0, 0);
    sub_0831628C(1, 1, 27, 4, 0, 180, 0);
    sub_08316178(6, 2, gStr_083D7B20, 180, 0);
    sub_083164A4(3, 1);
    sub_083164C8(8);
    sub_08316500(sub_083009F0);
}
