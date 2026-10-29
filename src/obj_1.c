/* obj_1.c: hardware objects (struct Obj): one OAM entry and one VRAM block each. One of several obj files: the functions between them
 * are still asm (near misses in src/nonmatching/region_a.c). */
#include "global.h"
#include "link.h"
#include "multi_sio.h"
#include "oam.h"
#include "obj.h"
#include "obj.h"
#include "oam.h"

#define Sio gUnk_03000AF0

/* Obj_InitAll: links the 128 hardware objects into the free list and resets OAM and OBJ VRAM.
 * Library code built with -fno-gcse (the ROM loads the list head addresses after the loop). */
void sub_0800436C(void)
{
    u32 i, j;
    for (i = 0; i < 128; i = j) {
        j = i + 1;
        if (j != 128) gObjNext_03002268[i] = j; else gObjNext_03002268[i] |= 0xFF;
    }
    gObjFreeHead_030022E8 = 0;
    gObjUsedHead_030022EC = 255;
    sub_08003CF4();
    sub_08003F94();
}

void sub_080043B4(void)
{
    u32 i = gObjUsedHead_030022EC;
    if (i != 255) {
        sub_080046DC(&gObjs_03001668[i]);
        while (gObjNext_03002268[i] != 255) {
            i = gObjNext_03002268[i];
            sub_080046DC(&gObjs_03001668[i]);
        }
    }
    sub_08003D54();
}
