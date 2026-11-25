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
void sub_082FF424(void)
{
    sub_0831650C();
    sub_0831653C();
    sub_0831654C();
    gPlayer_0300250C.unk40 = 0;
    gPlayer_0300250C.unk44 = 0;
    sub_08316308(0, 0, 0, 0);
    sub_0831628C(1, 1, 27, 4, 14, 60, 0);
    sub_08316178(6, 2, gStr_083D752C, 60, 0);
    sub_083164C8(8);
    sub_083164A4(3, 1);
    sub_08316500(sub_082FF494);
}

void sub_082FF494(void)
{
    sub_0831650C();
    sub_0831653C();
    sub_0831654C();
    gPlayer_0300250C.unk40 = 0;
    gPlayer_0300250C.unk44 = 0;
    sub_08316308(0, 0, 0, 0);
    sub_0831628C(1, 1, 27, 5, 0, 240, 0);
    sub_08316178(6, 2, gStr_083D7540, 240, 0);
    sub_083164C8(8);
    sub_083164A4(3, 1);
    sub_08316500(sub_082FF504);
}

void sub_082FF504(void)
{
    sub_0831653C();
    sub_0831650C();
    sub_0831654C();
    sub_08316308(0, 0, 0, 0);
    sub_0831628C(1, 1, 27, 4, 0, 160, 0);
    sub_08316178(6, 2, gStr_083D758C, 160, 0);
    sub_083164C8(8);
    sub_083164A4(3, 1);
    sub_08316500(sub_082FF568);
}

void sub_082FF568(void)
{
    sub_0831653C();
    sub_0831650C();
    sub_0831654C();
    sub_08316308(0, 0, 0, 0);
    sub_0831628C(1, 1, 27, 4, 1, 180, 0);
    sub_08316178(6, 2, gStr_083D75B8, 180, 0);
    sub_083164C8(8);
    sub_083164A4(3, 1);
}
