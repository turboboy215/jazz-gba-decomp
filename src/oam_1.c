/* oam_1.c: shadow OAM manager and the OBJ VRAM block allocator. One of several oam files: the functions between them
 * are still asm (near misses in src/nonmatching/region_a.c). */

#include "global.h"
#include "oam.h"

/* Oam_Free: like Obj_FreeSlot, the search is a goto loop (keeps the ROM's `b test` layout) with the
 * entry addresses written as integer sums `offset + base`. `o = idx * 8` is a variable set in both arms
 * (in the first one after the array access, which CSE turns into a reuse of its idx * 8) so the code
 * after the merge reuses it. */
void sub_08003F00(u8 idx)
{
    u8 j = gOamUsedHead_03001260;
    u32 o, b;
    struct OamEntry *e;

    if (idx == 255)
        return;
    if (j == idx) {
        gOamUsedHead_03001260 = gOamBuffer_03000E58[idx].next;
        o = idx * 8;
    } else {
        b = (u32)gOamBuffer_03000E58;
        o = idx * 8;
        goto test;
    next:
        j = e->next;
    test:
        if (j == 255)
            goto out;
        e = (struct OamEntry *)(j * 8 + b);
        if (e->next != idx)
            goto next;
        e->next = ((struct OamEntry *)(o + b))->next;
    }
out:
    e = (struct OamEntry *)(o + (u32)gOamBuffer_03000E58);
    e->attr0 = 0x200;
    e->unk7 = 0;
    e->next = gOamFreeHead_0300125C;
    gOamFreeHead_0300125C = idx;
}
