#include "global.h"
#include "system.h"
#include "link.h"
void sub_08002820(struct MultiBootParam *p)
{
    if (p->probe_count)
        sub_080023B0(p);
    else {
        p->check_wait = 0;
        p->client_bit = 0;
        p->probe_count = 1;
    }
}
