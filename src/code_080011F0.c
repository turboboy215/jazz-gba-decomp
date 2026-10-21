#include "global.h"
#include "sprite.h"
#include "map.h"
#include "actor.h"
#include "resbank.h"
#include "system.h"
void CpuFastSet(const void *src, void *dst, u32 ctrl);
u8 sub_080011F0(struct Actor *a, struct Actor **hit)
{
    u32 i;
    for (i = 0; i < MAX_ACTORS; i++) {
        struct Actor *e = &gUnk_02004400[i];
        if (e->active && sub_08000D04(a, e, 0)) {
            *hit = e;
            return 1;
        }
    }
    return 0;
}

u8 sub_08001238(struct Actor *a, struct Actor **hit)
{
    u32 i;
    for (i = 0; i < MAX_ACTORS; i++) {
        struct Actor *e = &gUnk_02004400[i];
        if (e->active && sub_0800104C(a, e) == 1) {
            *hit = e;
            return 1;
        }
    }
    return 0;
}

void sub_08001280(struct ResBank *b, struct ResHeader *data)
{
    u32 i;
    b->data = data;
    for (i = 0; i < 8; i++) {
        b->unk34[i] = 0;
        b->unk54[i] = 0;
        b->unk24[i] = 0;
        b->unk14[i] = 0;
    }
    b->unk84 = sub_08001A30(b, 0);
    b->unk88 = (u8 *)sub_08001BA0(b) + 8;
}

void sub_080012C0(struct ResBank *b, int i)
{
    struct ResHeader *d = b->data;
    u32 *t = (u32 *)((u8 *)d + d->tbl4);
    sub_08001EBC((const u16 *)((u8 *)d + t[i + 1]), (u16 *)0x05000000, 0, 256);
}

void *sub_080012E4(struct ResBank *b, int i) {
    struct ResHeader *d = b->data;
    u32 *t = (u32 *)((u8 *)d + d->tbl4);
    return (u8 *)d + t[i + 1];
}

void sub_080012F4(struct ResBank *b, u8 slot, u8 i)
{
    struct ResHeader *d = b->data;
    u32 *t = (u32 *)((u8 *)d + d->tbl12);
    void *e = (u8 *)d + t[i + 1];
    b->ptrs[slot] = e;
}
