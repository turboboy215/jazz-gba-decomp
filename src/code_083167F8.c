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

u32 sub_0831683C(u32 fx)
{
    if (GAX_fx_status(0) == fx)
        return 1;
    if (GAX_fx_status(1) == fx)
        return 1;
    if (GAX_fx_status(2) == fx)
        return 1;
    if (GAX_fx_status(3) == fx)
        return 1;
    return 0;
}

s32 sub_08316874(u32 fx)
{
    if (GAX_fx_status(0) == fx)
        return 0;
    if (GAX_fx_status(1) == fx)
        return 1;
    if (GAX_fx_status(2) == fx)
        return 2;
    if (GAX_fx_status(3) == fx)
        return 3;
    return -1;
}

void sub_083168BC(struct ResBank *b)
{
    u32 i, j;
    u16 n = sub_08001B7C(b);
    for (i = 0; i < 256; i++) {
        if (i < n)
            gUnk_0300571C[i] = 1;
        else
            gUnk_0300571C[i] = 0;
    }
    for (j = 0; j < 8; j++)
        gUnk_0300581C[j] = 0;
}

void sub_08316900(s32 i, u32 v)
{
    gUnk_0300581C[i] = v;
}
