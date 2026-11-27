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
void sub_082FBB1C(void)
{
    sub_0831650C();
    sub_0831653C();
    sub_08316308(0, 156, 60, 0);
}

void sub_082FBB38(void)
{
    GAX_fx(49);
    sub_08316F10(1, 0xC0, 60);
    while (sub_08316F50())
        sub_0831A54C();
    sub_08311C50(17, 0);
    gUnk_03000D14 = 0;
    gUnk_03000D1C = 0;
    gPlayer_0300250C.unk40 = 0;
    gPlayer_0300250C.unk44 = 0;
    sub_08316F10(0, 0xC0, 60);
}

void sub_082FBB8C(void)
{
    GAX_fx(49);
    sub_08316F10(1, 0xC0, 60);
    while (sub_08316F50())
        sub_0831A54C();
    sub_08311C50(18, 0);
    gUnk_03000D14 = 0;
    gUnk_03000D1C = 0;
    gPlayer_0300250C.unk40 = 0;
    gPlayer_0300250C.unk44 = 0;
    sub_08316F10(0, 0xC0, 60);
}
