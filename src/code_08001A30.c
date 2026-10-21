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
