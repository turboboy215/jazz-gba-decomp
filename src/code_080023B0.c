#include "global.h"
#include "system.h"
#include "link.h"
void sub_080023B0(struct LinkPort *p)
{
    p->unk1E = 0;
    p->state = 0;
    p->unk1D = 0;
    p->unk4A = 15;
    p->unk48 = 0;
    p->unk16 = 0;
    REG_RCNT = 0;
    REG_SIOCNT = 0x2003;
    REG_SIODATA8 = 0;
}
