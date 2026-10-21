#include "global.h"
#include "system.h"
#include "link.h"
u8 sub_080028E4(struct LinkPort *p)
{
    if (p->state == 0xE9)
        return 1;
    return 0;
}
