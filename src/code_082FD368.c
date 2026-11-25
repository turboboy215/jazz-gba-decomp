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
void sub_082FD368(void)
{
    sub_0831650C();
    sub_0831654C();
    gPlayer_0300250C.unk40 = 0;
    sub_08316308(0, 0, 0, 0);
    gPlayer_0300250C.unk30 = 1;
    sub_0831628C(1, 1, 27, 4, 0, 180, 0);
    sub_08316178(6, 2, gStr_083D6DD8, 180, 0);
    sub_083164C8(8);
    sub_083164A4(3, 1);
    sub_08316500(sub_082FD3D8);
}

void sub_082FD3D8(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_08316308(0, 0, 0, 0);
    gPlayer_0300250C.unk40 = 0;
    sub_0831628C(1, 1, 27, 4, 0, 180, 0);
    sub_08316178(6, 2, gStr_083D6E04, 180, 0);
    sub_083164C8(8);
    sub_083164A4(3, 1);
    sub_08316500(sub_082FD440);
}

void sub_082FD440(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_08316308(0, 0, 0, 0);
    gPlayer_0300250C.unk40 = 0;
    sub_0831628C(1, 1, 27, 5, 0, 240, 0);
    sub_08316178(6, 2, gStr_083D6E34, 240, 0);
    sub_083164C8(8);
    sub_083164A4(3, 1);
}

void sub_082FD4A0(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_0831653C();
    sub_08316308(0, 0, 60, 0);
    sub_08316308(832, 70, 120, 0);
    sub_08316500(sub_082FD4D8);
}

void sub_082FD4D8(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_0831653C();
    sub_083081B0(0x1C4400, 0x12C00, 0);
    sub_083081B0(0x1C8400, 0x15400, 20);
    sub_083081B0(0x1C9800, 0x14000, 40);
    sub_083081B0(0x1C7A00, 0x11800, 60);
    sub_083081B0(0x1C8900, 0x13600, 80);
    sub_083081B0(0x1C7F00, 0x12700, 100);
    sub_083081B0(0x1C4400, 0x14000, 120);
    sub_083081B0(0x1C7A00, 0x14000, 140);
    sub_08316308(0, 0, 120, 0);
    sub_08316500(sub_082FD580);
}

void sub_082FD580(void)
{
    sub_0831650C();
    sub_0831654C();
    sub_0831653C();
    sub_08001DC8(1, 1);
    sub_08316308(0, 0, 180, 0);
    sub_08316308(0xFFFFFCC0, -70, 120, 0);
}
