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
void sub_082FE068(void)
{
    sub_0831650C();
    sub_083160FC(2, 7, -1, 0, 0);
    sub_08316308(70, 0, 60, 0);
    sub_08316500(sub_082FE0A0);
}

void sub_082FE0A0(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_08316308(0, 0, 0, 0);
    sub_083160FC(2, 7, -1, 0, 0);
    sub_0831628C(1, 1, 27, 4, 6, 60, 0);
    sub_08316178(6, 2, gStr_083D70B4, 60, 0);
    sub_083164A4(3, 1);
    sub_083164C8(8);
    sub_08316500(sub_082FE114);
}

void sub_082FE114(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_08316308(0, 0, 0, 0);
    sub_083160FC(2, 7, -1, 0, 0);
    sub_0831628C(1, 1, 27, 4, 13, 200, 0);
    sub_08316178(6, 2, gStr_083D70CC, 200, 0);
    sub_083164A4(3, 1);
    sub_083164C8(8);
    sub_08316500(sub_082FE188);
}

void sub_082FE188(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_08316308(0, 0, 0, 0);
    sub_083160FC(2, 7, -1, 0, 0);
    sub_0831628C(1, 1, 27, 4, 6, 240, 0);
    sub_08316178(6, 2, gStr_083D70FC, 240, 0);
    sub_083164A4(3, 1);
    sub_083164C8(8);
    sub_08316500(sub_082FE1FC);
}

void sub_082FE1FC(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_08316308(0, 0, 0, 0);
    sub_083160FC(2, 7, -1, 0, 0);
    sub_0831628C(1, 1, 27, 4, 14, 180, 0);
    sub_08316178(6, 2, gStr_083D7130, 180, 0);
    sub_083164A4(3, 1);
    sub_083164C8(8);
    sub_08316500(sub_082FE270);
}

void sub_082FE270(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_08316308(0, 0, 0, 0);
    sub_083160FC(2, 7, -1, 0, 0);
    sub_0831628C(1, 1, 27, 4, 14, 160, 0);
    sub_08316178(6, 2, gStr_083D7170, 160, 0);
    sub_083164A4(3, 1);
    sub_083164C8(8);
    sub_08316500(sub_082FE2E4);
}

void sub_082FE2E4(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_08316308(0, 0, 0, 0);
    sub_083160FC(2, 7, -1, 0, 0);
    sub_0831628C(1, 1, 27, 5, 1, 240, 0);
    sub_08316178(6, 2, gStr_083D71AC, 240, 0);
    sub_083164A4(3, 1);
    sub_083164C8(8);
    sub_08316500(sub_082FE358);
}

void sub_082FE358(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_08316308(0, 0, 0, 0);
    sub_083160FC(2, 7, -1, 0, 0);
    sub_0831628C(1, 1, 27, 4, 6, 60, 0);
    sub_08316178(6, 2, gStr_083D71F4, 60, 0);
    sub_083164A4(3, 1);
    sub_083164C8(8);
}

void sub_082FE3C0(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_08316308(0, 0, 0, 0);
    sub_0831628C(1, 1, 27, 4, 0, 60, 0);
    sub_08316178(6, 2, gStr_083D7208, 60, 0);
    sub_083164A4(3, 1);
    sub_083164C8(8);
    sub_08316500(sub_082FE420);
}

void sub_082FE420(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_08316308(0, 0, 0, 0);
    sub_0831628C(1, 1, 27, 4, 0, 120, 0);
    sub_08316178(6, 2, gStr_083D7210, 120, 0);
    sub_083164A4(3, 1);
    sub_083164C8(8);
    sub_08316500(sub_082FE480);
}

void sub_082FE480(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_08316308(0, 0, 0, 0);
    sub_0831628C(1, 1, 27, 4, 0, 180, 0);
    sub_08316178(6, 2, gStr_083D7228, 180, 0);
    sub_083164A4(3, 1);
    sub_083164C8(8);
    sub_08316500(sub_082FE4E0);
}

void sub_082FE4E0(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_08316308(0, 0, 0, 0);
    sub_0831628C(1, 1, 27, 4, 0, 120, 0);
    sub_08316178(6, 2, gStr_083D725C, 120, 0);
    sub_083164A4(3, 1);
    sub_083164C8(8);
    sub_08316500(sub_082FE540);
}

void sub_082FE540(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_08316308(0, 0, 0, 0);
    sub_0831628C(1, 1, 27, 4, 0, 120, 0);
    sub_08316178(6, 2, gStr_083D728C, 120, 0);
    sub_083164A4(3, 1);
    sub_083164C8(8);
    sub_08316500(sub_082FE5A0);
}

void sub_082FE5A0(void)
{
    u8 *extra;
    s32 zero;
    sub_08316F10(1, 0xC0, 30);
    while (sub_08316F50())
        sub_0831A54C();
    sub_083100D4(1);
    sub_083043E4();
    if (gUnk_0200755C < 4) {
        extra = sub_083152BC();
        if (extra[0] == 0)
            extra[0] = 1;
    }
    sub_08311C50(4, 0);
    gUnk_03000D14 = zero = 0;
    gUnk_03000D1C = zero;
    gPlayer_0300250C.unk40 = zero;
    gPlayer_0300250C.unk44 = zero;
    sub_08316F10(0, 0xC0, 60);
}
