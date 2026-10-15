#include "global.h"
struct Sprite;
void sub_0800068C(struct Sprite *s, int dx, int dy, s8 dz)
{
    *(u16 *)((u8 *)s + 2) += dx;
    *(u16 *)((u8 *)s + 4) += dy;
    *(s8 *)((u8 *)s + 6) += dz;
}
