#include "global.h"
#include "actor.h"
#include "gax.h"
#include "main.h"
#include "scene.h"
#include "sprite.h"
#include "link.h"
#include "regionb.h"
void sub_082FEF2C(void)
{
    GAX_fx(49);
    sub_08316F10(1, 0xC0, 60);
    while (sub_08316F50())
        sub_0831A54C();
    sub_08311C50(11, 0);
    gUnk_03000D14 = 0;
    gUnk_03000D1C = 0;
    gPlayer_0300250C.unk40 = 0;
    gPlayer_0300250C.unk44 = 0;
    sub_08316F10(0, 0xC0, 60);
}
