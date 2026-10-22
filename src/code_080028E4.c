#include "global.h"
#include "system.h"
#include "link.h"
int sub_080028E4(struct MultiBootParam *p)
{
    if (p->probe_count == 0xE9)
        return 1;
    return 0;
}
