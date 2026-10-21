#include "global.h"
#include "system.h"
#include "link.h"
void sub_08002820(struct LinkPort *p)
{
    if (p->state)
        sub_080023B0(p);
    else {
        p->unk4A = 0;
        p->unk1E = 0;
        p->state = 1;
    }
}
