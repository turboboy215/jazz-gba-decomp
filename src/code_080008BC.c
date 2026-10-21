#include "global.h"
#include "sprite.h"
#include "map.h"
#include "actor.h"
#include "resbank.h"
void CpuFastSet(const void *src, void *dst, u32 ctrl);
u16 sub_080008BC(int x, int y)
{
    u16 l = sub_08000870(x, y);
    if (l != 0 && !sub_08001E18(l))
        return 0;
    return sub_08000850(x, y) & 15;
}
