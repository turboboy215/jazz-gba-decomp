#include "global.h"
#include "actor.h"
#include "gax.h"
#include "main.h"
#include "scene.h"
#include "link.h"
#include "regionb.h"
void sub_08309DA0(void)
{
    s32 i;
    for (i = 0; i != 16; i++)
        gUnk_02004C80[i].unkD8 = 0;
}

u8 sub_08309DB8(s32 id, s32 v)
{
    s32 i;
    for (i = 0; i != 16; i++) {
        if (gUnk_02004C80[i].flagId == id) {
            gUnk_02004C80[i].unkD8 = v;
            return 1;
        }
    }
    return 0;
}
