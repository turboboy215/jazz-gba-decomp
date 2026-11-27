#include "global.h"
#include "actor.h"
#include "map.h"
#include "pickup.h"
#include "resbank.h"
#include "regionb.h"
#include "gax.h"
#include "main.h"
#include "scene.h"
#include "link.h"
void *sub_082FB23C(u8 *p)
{
    return gUnk_083D6708[p[1]].unk8;
}

s32 sub_082FB250(u8 *p)
{
    return (s32)gUnk_083D6708[p[1]].unk8;
}

u8 sub_082FB264(u8 *p)
{
    return gUnk_083D6708[p[1]].unk5;
}
