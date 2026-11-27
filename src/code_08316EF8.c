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
void *sub_08316EF8(struct ResBank *b, int i)
{
    return sub_08001B6C(b, i);
}

u8 sub_08316F04(s32 a0)
{
    return gUnk_0300571C[a0];
}

void sub_08316F10(s32 dir, s32 mode, u32 frames)
{
    if (frames != 0) {
        gFadeDir_03005840 = dir;
        gFadeLevel_03005A4C = 0;
        gFadeStep_0300583C = 0x110000 / frames;
        *(vu16 *)0x04000050 = mode | 0x3F;
    }
}

u32 sub_08316F50(void)
{
    u32 v = gFadeLevel_03005A4C;
    if (v > 0x10FFFF)
        return 0;
    if (gFadeDir_03005840 == 0)
        *(vu16 *)0x04000054 = 16 - (v >> 16);
    else
        *(vu16 *)0x04000054 = v >> 16;
    gFadeLevel_03005A4C += gFadeStep_0300583C;
    return 1;
}

void sub_08316FA8(s32 dir, s32 mode, u32 frames)
{
    u32 v = 0;
    u32 step = 0x110000 / frames;
    *(vu16 *)0x04000050 = mode | 0x3F;
    do {
        sub_0831A54C();
        if (dir == 0)
            *(vu16 *)0x04000054 = 16 - (v >> 16);
        else
            *(vu16 *)0x04000054 = v >> 16;
        v += step;
    } while (v <= 0x10FFFF);
}
