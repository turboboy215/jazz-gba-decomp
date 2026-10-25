#include "global.h"
#include "sprite.h"
#include "map.h"
#include "actor.h"
#include "resbank.h"
void CpuFastSet(const void *src, void *dst, u32 ctrl);
u32 *sub_08001B40(struct ResBank *b, int i)
{
    struct ResHeader *d = b->data;
    u32 *t = (u32 *)((u8 *)d + d->tbl20);
    return (u32 *)((u8 *)d + t[i + 1]);
}

void *sub_08001B50(struct ResBank *b, int i, int j)
{
    u32 *t = sub_08001B40(b, i);
    u8 *d = (u8 *)b->data;
    return d + t[j + 1];
}

void *sub_08001B6C(struct ResBank *b, int i) {
    struct ResHeader *d = b->data;
    u32 *t = (u32 *)((u8 *)d + d->tbl24);
    return (u8 *)d + t[i + 1];
}

u16 sub_08001B7C(struct ResBank *b) { return *(u16 *)((u8 *)b->data + b->data->tbl24 + 2); }

u16 sub_08001B88(struct ResBank *b) { return *(u16 *)((u8 *)b->data + b->data->tbl12 + 2); }

void *sub_08001B94(struct ResBank *b) {
    struct ResHeader *d = b->data;
    u32 *t = (u32 *)((u8 *)d + d->tbl8);
    return (u8 *)d + t[0 + 1];
}

void *sub_08001BA0(struct ResBank *b) {
    struct ResHeader *d = b->data;
    u32 *t = (u32 *)((u8 *)d + d->tbl28);
    return (u8 *)d + t[0 + 1];
}

u8 sub_08001BAC(struct ResBank *b, u32 x, u32 y) { return sub_08001BCC(b, x, y); }

u16 sub_08001BBC(struct ResBank *b, u32 x, u32 y) { return sub_08001BCC(b, x, y); }

u32 sub_08001BCC(struct ResBank *b, u32 x, u32 y)
{
    struct CellMap *m = sub_08001A30(b, 0);
    struct CellTiles *t = sub_08001BA0(b);
    u32 v;
    u8 size;

    size = m->size;
    if (size == 1) {
        u8 *d = m->data;
        v = d[(y >> 1) * (m->w >> 1) + (x >> 1)];
    } else if (size == 2) {
        u16 *d = (u16 *)m->data;
        v = d[(y >> 1) * (m->w >> 1) + (x >> 1)];
    } else {
        u32 *d = (u32 *)m->data;
        v = d[(y >> 1) * (m->w >> 1) + (x >> 1)];
    }
    size = t->size;
    if (size == 1) {
        u8 *d = t->data;
        return d[(v << 2) + ((y & 1) << 1) + (x & 1)];
    } else if (size == 2) {
        u16 *d = (u16 *)t->data;
        return d[(v << 2) + ((y & 1) << 1) + (x & 1)];
    } else {
        u32 *d = (u32 *)t->data;
        return d[(v << 2) + ((y & 1) << 1) + (x & 1)];
    }
}
