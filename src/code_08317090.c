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
s32 sub_08317090(s32 a)
{
    if (a < 0)
        return -1;
    return 1;
}

s32 sub_083170A0(s32 a0, s32 a1, s32 a2)
{
    return a1 + sub_08317090(a0) * a2;
}

#define ABS(x) ((x) < 0 ? -(x) : (x))
s32 sub_083170B8(s32 a0, s32 a1, s32 a2, s32 limit)
{
    a1 = sub_083170A0(a0, a1, a2);
    if (ABS(a1) > ABS(limit))
        a1 = sub_08317090(a1) * limit;
    return a1;
}
