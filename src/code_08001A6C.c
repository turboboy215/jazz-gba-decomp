#include "global.h"
#include "sprite.h"
#include "map.h"
#include "actor.h"
#include "resbank.h"
void CpuFastSet(const void *src, void *dst, u32 ctrl);
void sub_08001A6C(void)
{
    u32 zero = 0;
    CpuFastSet(&zero, (void *)0x06000000, 0x01003FFF);
}
