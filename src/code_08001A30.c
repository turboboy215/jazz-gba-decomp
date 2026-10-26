#include "global.h"
#include "sprite.h"
#include "map.h"
#include "actor.h"
#include "resbank.h"
void CpuFastSet(const void *src, void *dst, u32 ctrl);
void *sub_08001A30(struct ResBank *b, int i) {
    struct ResHeader *d = b->data;
    u32 *t = (u32 *)((u8 *)d + d->tbl16);
    return (u8 *)d + t[i + 1];
}

u8 *sub_08001A40(struct ResBank *b, int i) { return b->slots[i]; }

/* ResBank_SetSlot: the ROM adds 0x74 + k to b + i*4 for every byte, as a struct pointer
 * offset by the slot does (b->slots[i][k] folds the offset differently). */
void sub_08001A48(struct ResBank *b, int i, u8 *src)
{
    struct ResBank *p = (struct ResBank *)((u8 *)b + i * 4);
    p->slots[0][0] = src[0];
    p->slots[0][1] = src[1];
    p->slots[0][3] = src[3];
    p->slots[0][2] = src[2];
}
