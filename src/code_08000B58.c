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

#include "actor.h"
u8 sub_08000BB4(int x1, int y1, int x2, int y2, int r);
u8 sub_08000BDC(int x, int y, int l, int t, int r, int b);
u8 sub_08000C00(int px, int py, struct Actor *a)
{
    int ax = a->x >> 8;
    int ay = a->y >> 8;
    struct Sprite *s = &a->sprite;
    u32 n = sub_08000644(s)->layerCount;
    u32 i;
    if (!a->unk2F)
        return 0;
    if (!sub_08000BB4(px, py, ax, ay, 50))
        return 0;
    {
        for (i = 0; i != n; i++) {
            struct AnimCel *c = sub_0800062C(s, i);
            struct CelGfx *g;
            int l, r, t, b;
            if (c->gfx == 0x3FFF)
                continue;
            g = sub_08000614(s, i);
            if (g->rx == -1)
                continue;
            if (c->hflip) {
                int bx = ax - c->x;
                int w = g->w * 8;
                l = bx + (w - g->rw);
                r = bx + (w - g->rx);
            } else {
                l = ax - c->x + g->rx;
                r = l + g->rw;
            }
            t = ay - c->y + g->ry;
            b = t + g->rh;
            if (sub_08000BDC(px, py, l, t, r, b))
                return 1;
        }
    }
    return 0;
}

u8 sub_08000D04(struct Actor *a, struct Actor *b, u8 mode)
{
    int ax = a->x >> 8;
    int ay = a->y >> 8;
    int bx = b->x >> 8;
    int by = b->y >> 8;
    struct Sprite *sa = &a->sprite;
    struct Sprite *sb = &b->sprite;
    u32 na = sub_08000644(sa)->layerCount;
    u32 nb = sub_08000644(sb)->layerCount;
    u32 i, j;
    if (mode == 0 && (!a->unk2E || !b->unk2E))
        return 0;
    for (i = 0; i != na; i++) {
        struct AnimCel *c = sub_0800062C(sa, i);
        struct CelGfx *g;
        int l1, r1, t1, b1;
        if (c->gfx == 0x3FFF)
            continue;
        g = sub_08000614(sa, i);
        if (g->rx == -1)
            continue;
        if (c->hflip) {
            int x = ax - c->x;
            int w = g->w * 8;
            l1 = x + (w - g->rw);
            r1 = x + (w - g->rx);
        } else {
            l1 = ax - c->x + g->rx;
            r1 = l1 + g->rw;
        }
        t1 = ay - c->y + g->ry;
        b1 = t1 + g->rh;
        for (j = 0; j != nb; j++) {
            int l2, r2, t2, b2;
            struct AnimCel *c;
            struct CelGfx *g;
            c = sub_0800062C(sb, j);
            if (c->gfx == 0x3FFF)
                continue;
            g = sub_08000614(sb, j);
            if (g->rx == -1)
                continue;
            if (c->hflip) {
                int x = bx - c->x;
                int w = g->w * 8;
                l2 = x + (w - g->rw);
                r2 = x + (w - g->rx);
            } else {
                l2 = bx - c->x + g->rx;
                r2 = l2 + g->rw;
            }
            t2 = by - c->y + g->rx; /* sic: rx, not ry */
            b2 = t2 + g->rh;
            if (t1 <= b2 && b1 >= t2 && l1 <= r2 && r1 >= l2)
                return 1;
        }
    }
    return 0;
}

u8 sub_08000ECC(struct Shot *s, struct Actor *a)
{
    int sx = s->x >> 8;
    int sy = s->y >> 8;
    int ax = a->x >> 8;
    int ay = a->y >> 8;
    struct Sprite *ss = &s->sprite;
    struct Sprite *sa = &a->sprite;
    u32 n = sub_08000644(sa)->layerCount;
    u32 i;
    struct AnimCel *c;
    struct CelGfx *g;
    int l1, r1, t1, b1;
    c = sub_0800062C(ss, 0);
    if (c->gfx == 0x3FFF)
        return 0;
    g = sub_08000614(ss, 0);
    if (g->rx == -1)
        return 0;
    if (c->hflip) {
        int x = sx - c->x;
        int w = g->w * 8;
        l1 = x + (w - g->rw);
        r1 = x + (w - g->rx);
    } else {
        l1 = sx - c->x + g->rx;
        r1 = l1 + g->rw;
    }
    t1 = sy - c->y + g->ry;
    b1 = t1 + g->rh;
    for (i = 0; i < n; i++) {
        int l2, r2, t2, b2;
        struct AnimCel *c;
        struct CelGfx *g;
        c = sub_0800062C(sa, i);
        if (c->gfx == 0x3FFF)
            continue;
        g = sub_08000614(sa, i);
        if (g->rx == -1)
            continue;
        if (c->hflip) {
            int x = ax - c->x;
            int w = g->w * 8;
            l2 = x + (w - g->rw);
            r2 = x + (w - g->rx);
        } else {
            l2 = ax - c->x + g->rx;
            r2 = l2 + g->rw;
        }
        t2 = ay - c->y + g->ry;
        b2 = t2 + g->rh;
        if (t1 <= b2 && b1 >= t2 && l1 <= r2 && r1 >= l2)
            return 1;
    }
    return 0;
}

u8 sub_0800104C(struct Shot *s, struct Actor *a)
{
    int sx = s->x >> 8;
    int sy = s->y >> 8;
    int ax = a->x >> 8;
    int ay = a->y >> 8;
    struct Sprite *ss = &s->sprite;
    struct Sprite *sa = &a->sprite;
    u32 n = sub_08000644(sa)->layerCount;
    u32 i;
    struct AnimCel *c;
    struct CelGfx *g;
    int l1, r1, t1, b1;
    if (!a->unk2F)
        return 0;
    if (!sub_08000BB4(sx, sy, ax, ay, 50))
        return 0;
    c = sub_0800062C(ss, 0);
    if (c->gfx == 0x3FFF)
        return 0;
    g = sub_08000614(ss, 0);
    if (g->rx == -1)
        return 0;
    if (c->hflip) {
        int x = sx - c->x;
        int w = g->w * 8;
        l1 = x + (w - g->rw);
        r1 = x + (w - g->rx);
    } else {
        l1 = sx - c->x + g->rx;
        r1 = l1 + g->rw;
    }
    t1 = sy - c->y + g->ry;
    b1 = t1 + g->rh;
    for (i = 0; i < n; i++) {
        int l2, r2, t2, b2;
        struct AnimCel *c;
        struct CelGfx *g;
        c = sub_0800062C(sa, i);
        if (c->gfx == 0x3FFF)
            continue;
        g = sub_08000614(sa, i);
        if (g->rx == -1)
            continue;
        if (c->hflip) {
            int x = ax - c->x;
            int w = g->w * 8;
            l2 = x + (w - g->rw);
            r2 = x + (w - g->rx);
        } else {
            l2 = ax - c->x + g->rx;
            r2 = l2 + g->rw;
        }
        t2 = ay - c->y + g->ry;
        b2 = t2 + g->rh;
        if (t1 <= b2 && b1 >= t2 && l1 <= r2 && r1 >= l2)
            return 1;
    }
    return 0;
}
