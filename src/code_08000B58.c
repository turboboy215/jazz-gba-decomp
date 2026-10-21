#include "global.h"
#include "sprite.h"
#include "map.h"
u16 sub_08000B58(int x1, int y1, int x2, int y2)
{
    int dx, dy;
    x1 >>= 8;
    y1 >>= 8;
    x2 >>= 8;
    y2 >>= 8;
    dx = x1 - x2;
    dx = dx * dx;
    dy = y1 - y2;
    dy = dy * dy;
    return sub_0831A548(dx + dy);
}

u8 sub_08000B80(int x1, int y1, int x2, int y2, int r)
{
    int dx, dy;
    x1 >>= 8;
    y1 >>= 8;
    x2 >>= 8;
    y2 >>= 8;
    dx = x1 - x2;
    dx = dx * dx;
    dy = y1 - y2;
    dy = dy * dy;
    if ((u32)(dx + dy) <= (u32)(r * r))
        return 1;
    return 0;
}

u8 sub_08000BB4(int x1, int y1, int x2, int y2, int r)
{
    u8 res = 0;
    int dx = x2 - x1;
    int dy;
    if (dx < 0) dx = -dx;
    if (dx <= r) {
        dy = y2 - y1;
        if (dy < 0) dy = -dy;
        if (dy <= r)
            res = 1;
    }
    return res;
}

u8 sub_08000BDC(int x, int y, int l, int t, int r, int b)
{
    u8 res = 0;
    if (x > l && x < r && y > t && y < b)
        res = 1;
    return res;
}
