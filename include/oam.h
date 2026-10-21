#ifndef GUARD_OAM_H
#define GUARD_OAM_H

#include "global.h"

/* Region A OAM manager (08003CF4-08004000): a shadow copy of the 128 OAM entries in IWRAM
 * whose attr3 halfword is reused as free-list links. */
struct OamEntry {
    u16 attr0;
    u16 attr1;
    u16 attr2;
    u8 next;    /* +6 next entry in the free/used list, 0xFF = end */
    u8 unk7;
};

#define OAM_HW ((struct OamEntry *)0x07000000)
extern struct OamEntry gOamBuffer_03000E58[128];
extern u8 gOamFreeHead_0300125C;
extern u8 gOamUsedHead_03001260;
extern u8 gUnk_03001264;

void sub_08003CF4(void);
u8 sub_08003DC0(void);
void sub_08003F70(void);

#endif
