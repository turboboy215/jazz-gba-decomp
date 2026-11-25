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
void sub_082FFBA4(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_0831653C();
    sub_08316308(0xFFFFFB26, 0, 30, 0);
    sub_08316500(sub_082FFBD0);
}

void sub_082FFBD0(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_0831653C();
    sub_08316308(0, 0, 30, 0);
    sub_08001DC8(5, 0);
    sub_08316500(sub_082FFC00);
}

void sub_082FFC00(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_0831653C();
    sub_08316308(0, 0, 60, 0);
    sub_08316308(1242, 0, 30, 0);
}

void sub_082FFC30(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_0831653C();
    sub_08316098(2, 0, 0, 50);
    sub_08316500(sub_082FFC58);
}

void sub_082FFC58(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_0831628C(1, 1, 27, 4, 3, 90, 0);
    sub_08316178(6, 2, gStr_083D7774, 90, 0);
    sub_083164C8(8);
    sub_083164A4(3, 1);
    sub_08316500(sub_082FFCB0);
}

void sub_082FFCB0(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_0831628C(1, 1, 27, 4, 3, 180, 0);
    sub_08316178(6, 2, gStr_083D7798, 180, 0);
    sub_083164C8(8);
    sub_083164A4(3, 1);
    sub_08316500(sub_082FFD60);
}

void sub_082FFD08(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_0831628C(1, 1, 27, 4, 13, 180, 0);
    sub_08316178(6, 2, gStr_083D77D0, 180, 0);
    sub_083164C8(8);
    sub_083164A4(3, 1);
    sub_08316500(sub_082FFD60);
}

void sub_082FFD60(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_0831628C(1, 1, 27, 4, 3, 180, 0);
    sub_08316178(6, 2, gStr_083D7808, 180, 0);
    sub_083164C8(8);
    sub_083164A4(3, 1);
    sub_08316500(sub_082FFDB8);
}

void sub_082FFDB8(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_0831628C(1, 1, 27, 4, 3, 180, 0);
    sub_08316178(6, 2, gStr_083D7848, 180, 0);
    sub_083164C8(8);
    sub_083164A4(3, 1);
    sub_08316500(sub_082FFE10);
}

void sub_082FFE10(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_0831628C(1, 1, 27, 4, 14, 180, 0);
    sub_08316178(6, 2, gStr_083D7878, 180, 0);
    sub_083164C8(8);
    sub_083164A4(3, 1);
    sub_08316500(sub_082FFE68);
}

void sub_082FFE68(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_0831628C(1, 1, 27, 4, 0, 180, 0);
    sub_08316178(6, 2, gStr_083D78A4, 180, 0);
    sub_083164C8(8);
    sub_083164A4(3, 1);
    sub_08316500(sub_082FFEBC);
}

void sub_082FFEBC(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_0831628C(1, 1, 27, 4, 0, 180, 0);
    sub_08316178(6, 2, gStr_083D78DC, 180, 0);
    sub_083164C8(8);
    sub_083164A4(3, 1);
    sub_08316500(sub_082FFF10);
}

void sub_082FFF10(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_0831628C(1, 1, 27, 4, 0, 180, 0);
    sub_08316178(6, 2, gStr_083D78EC, 180, 0);
    sub_083164C8(8);
    sub_083164A4(3, 1);
    sub_08316500(sub_082FFF64);
}

void sub_082FFF64(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_0831628C(1, 1, 27, 4, 0, 180, 0);
    sub_08316178(6, 2, gStr_083D7928, 180, 0);
    sub_083164C8(8);
    sub_083164A4(3, 1);
    sub_08316500(sub_082FFFB8);
}

void sub_082FFFB8(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_0831628C(1, 1, 27, 4, 0, 180, 0);
    sub_08316178(6, 2, gStr_083D7940, 180, 0);
    sub_083164C8(8);
    sub_083164A4(3, 1);
}

void sub_08300004(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_0831652C();
    sub_0831628C(1, 1, 27, 3, 18, 120, 0);
    sub_08316178(3, 2, gStr_083D7960, 120, 0);
    sub_083164C8(8);
    sub_083164A4(3, 1);
}

void sub_08300054(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_0831652C();
    sub_0831628C(1, 1, 27, 4, 18, 160, 0);
    sub_08316178(3, 2, gStr_083D797C, 160, 0);
    sub_083164C8(8);
    sub_083164A4(3, 1);
}

void sub_083000A4(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_0831652C();
    sub_0831628C(1, 1, 27, 3, 18, 120, 0);
    sub_08316178(3, 2, gStr_083D79A8, 120, 0);
    sub_083164C8(8);
    sub_083164A4(3, 1);
}
