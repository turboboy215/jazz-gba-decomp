#include "global.h"
#include "map.h"
#include "resbank.h"
void sub_08001404(struct ResBank *b, int layer, int dx, int dy)
{
    int rx = dx, ry = dy;
    u8 *wrap = b->slots[layer];
    struct CellMap *m = b->ptrs[layer];
    s32 w = m->w * 8;
    s32 h = m->h * 8;

    while (rx != 0 || ry != 0) {
        s32 tx = b->unk34[layer << 1] >> 3;
        s32 ty = b->unk34[(layer << 1) + 1] >> 3;

        if (rx > 8)
            dx = 8;
        else if (rx < -8)
            dx = -8;
        else
            dx = rx;
        if (ry > 8)
            dy = 8;
        else if (ry < -8)
            dy = -8;
        else
            dy = ry;

        if (tx != (b->unk34[layer << 1] + dx) >> 3) {
            if (dx > 0)
                sub_0831AE98(b, layer, 0);
            else if (dx < 0)
                sub_0831AE98(b, layer, 30);
        }
        b->unk54[layer << 1] += dx;
        b->unk34[layer << 1] += dx;
        if (wrap[0] == 0) {
            if (b->unk54[layer << 1] < 0)
                b->unk34[layer << 1] = b->unk54[layer << 1] = 0;
            if (b->unk54[layer << 1] >= w - 240)
                b->unk34[layer << 1] = b->unk54[layer << 1] = w - 241;
        } else {
            while (b->unk54[layer << 1] < 0)
                b->unk54[layer << 1] += w;
            while (b->unk54[layer << 1] >= w)
                b->unk54[layer << 1] -= w;
        }
        while (b->unk34[layer << 1] < 0)
            b->unk34[layer << 1] += 256;
        b->unk34[layer << 1] &= 0xFF;
        if (tx != b->unk34[layer << 1] >> 3) {
            if (dx > 0)
                sub_0831AE88(b, layer, 30);
            else if (dx < 0)
                sub_0831AE88(b, layer, 0);
        }

        if (ty != (b->unk34[(layer << 1) + 1] + dy) >> 3) {
            if (dy > 0)
                sub_0831AE78(b, layer, 0);
            else if (dy < 0)
                sub_0831AE78(b, layer, 20);
        }
        b->unk54[(layer << 1) + 1] += dy;
        b->unk34[(layer << 1) + 1] += dy;
        if (wrap[1] == 0) {
            if (b->unk54[(layer << 1) + 1] < 0)
                b->unk34[(layer << 1) + 1] = b->unk54[(layer << 1) + 1] = 0;
            if (b->unk54[(layer << 1) + 1] >= h - 160)
                b->unk34[(layer << 1) + 1] = b->unk54[(layer << 1) + 1] = h - 161;
        } else {
            while (b->unk54[(layer << 1) + 1] < 0)
                b->unk54[(layer << 1) + 1] += h;
            while (b->unk54[(layer << 1) + 1] >= h)
                b->unk54[(layer << 1) + 1] -= h;
        }
        while (b->unk34[(layer << 1) + 1] < 0)
            b->unk34[(layer << 1) + 1] += 256;
        b->unk34[(layer << 1) + 1] &= 0xFF;
        if (ty != b->unk34[(layer << 1) + 1] >> 3) {
            if (dy > 0)
                sub_0831AE68(b, layer, 20);
            else if (dy < 0)
                sub_0831AE68(b, layer, 0);
        }

        if (rx > 8)
            rx -= 8;
        else if (rx < -8)
            rx += 8;
        else
            rx = 0;
        if (ry > 8)
            ry -= 8;
        else if (ry < -8)
            ry += 8;
        else
            ry = 0;
    }
    *(vu16 *)(0x04000010 + layer * 4) = b->unk34[layer << 1];
    *(vu16 *)(0x04000012 + layer * 4) = b->unk34[(layer << 1) + 1];
}
