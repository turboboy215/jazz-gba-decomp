/* obj_5.c: hardware objects (struct Obj): one OAM entry and one VRAM block each. One of several obj files: the functions between them
 * are still asm (near misses in src/nonmatching/region_a.c). */

#include "global.h"
#include "obj.h"

/* Obj_FreeSlot: the search is a hand-written goto loop (no loop notes, so jump.c does not copy the
 * exit test in front of it and the ROM's `b test` layout stays), and both element addresses are
 * written as integer sums `offset + base` (the ROM's add operand order; global.c then prefers the
 * low register for j instead of the base). */
void sub_080045FC(u8 id)
{
    u8 j = gObjUsedHead_030022EC;
    u32 h = gObjUsedHead_030022EC;
    u8 *b, *e;

    if (id == 255)
        return;
    if (h == id)
        gObjUsedHead_030022EC = gObjNext_03002268[id];
    else {
        b = gObjNext_03002268;
        goto test;
    next:
        j = *e;
    test:
        if (j == 255)
            goto out;
        e = (u8 *)((u32)j + (u32)b);
        if (*e != id)
            goto next;
        *e = *(u8 *)((u32)id + (u32)b);
    }
out:
    gObjNext_03002268[id] = gObjFreeHead_030022E8;
    gObjFreeHead_030022E8 = id;
}
