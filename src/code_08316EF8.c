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
