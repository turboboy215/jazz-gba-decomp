#include "global.h"
#include "actor.h"
#include "gax.h"
#include "main.h"
#include "scene.h"
#include "link.h"
#include "regionb.h"
void sub_082EA424(void)
{
    s32 i;
    for (i = 0; i != MAX_ACTORS; i++)
        gUnk_02004400[i].unkD8 = 0;
}

u8 sub_082EA43C(s32 id, s32 v)
{
    s32 i;
    for (i = 0; i != MAX_ACTORS; i++) {
        if (gUnk_02004400[i].flagId == id) {
            gUnk_02004400[i].unkD8 = v;
            return 1;
        }
    }
    return 0;
}
