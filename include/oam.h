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

extern u8 gOamPrioThresholds_03001258[4];
extern u8 gVramMap_03001268[1024];   /* OBJ VRAM tile allocation map: 1 = block start, 0xFF = continuation */

void sub_08003CF4(void);
void sub_08003F00(u8 idx);
void sub_08003F88(int i, u8 v);
void sub_08003F94(void);
u16 sub_08003FBC(int w, int h, const void *src, int is8bpp);
void sub_0800404C(u16 tile, int w, int h, const void *src, int is8bpp);
void sub_08004080(u16 tile);
u8 sub_08003DC0(void);
void sub_08003F70(void);

#endif
