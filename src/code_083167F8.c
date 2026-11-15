#include "global.h"
#include "system.h"
#include "gax.h"
#include "main.h"

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
