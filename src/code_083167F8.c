#include "global.h"
#include "system.h"
#include "gax.h"
#include "main.h"
#include "actor.h"
#include "link.h"
#include "map.h"
#include "multi_sio.h"
#include "oam.h"
#include "obj.h"
#include "resbank.h"
#include "scene.h"
#include "sprite.h"
#include "text.h"
#include "regionb.h"

u32 sub_083167F8(u32 vol)
{
    vol *= 112;
    vol >>= 3;
    if (vol > 256)
        vol = 256;
    return vol;
}

u32 sub_08316810(u32 vol)
{
    vol *= 186;
    vol >>= 3;
    if (vol > 256)
        vol = 256;
    return vol;
}

void sub_08316824(void)
{
    sub_08001FC8(0, sub_08001FF0);
    sub_08319214();
}
