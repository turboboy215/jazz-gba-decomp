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

void sub_083009F0(void)
{
    u8 *extra;
    s32 zero;
    sub_08316F10(1, 0xC0, 60);
    while (sub_08316F50())
        sub_0831A54C();
    sub_083100D4(1);
    sub_08304AAC();
    if (gUnk_0200755C < 4) {
        extra = sub_083152BC();
        if (extra[1] == 0)
            extra[1] = 1;
    }
    sub_08311C50(9, 0);
    gUnk_03000D14 = zero = 0;
    gUnk_03000D1C = zero;
    gPlayer_0300250C.unk40 = zero;
    gPlayer_0300250C.unk44 = zero;
    sub_08316F10(0, 0xC0, 60);
}
