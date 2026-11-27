#include "global.h"
#include "gax.h"
#include "resbank.h"
#include "regionb.h"
void sub_08316E18(struct ResBank *b)
{
    u32 i;
    u16 n = sub_08001B7C(b);
    for (i = 0; i < n; i++) {
        if (gUnk_030059F4 == 1)
            return;
        if (gUnk_0300571C[i] == 1 || *(u16 *)((u8 *)sub_08001B6C(b, i) + 4) == 4)
            sub_08316930(b, i);
    }
}

void *sub_08316E68(struct ResBank *b)
{
    u32 i;
    u16 n = sub_08001B7C(b);
    for (i = 0; i < n; i++) {
        u8 *e = sub_08001B6C(b, i);
        if (*(u32 *)(e + 4) == 0) {
            sub_08316910(i);
            return e;
        }
    }
    return NULL;
}

void *sub_08316EA4(struct ResBank *b, s32 k)
{
    u32 i;
    u16 n = sub_08001B7C(b);
    s32 c = 0;
    for (i = 0; i < n; i++) {
        u8 *e = sub_08001B6C(b, i);
        if (*(u32 *)(e + 4) == 0x10000) {
            if (c == k) {
                sub_08316910(i);
                return e;
            }
            c++;
        }
    }
    return NULL;
}
