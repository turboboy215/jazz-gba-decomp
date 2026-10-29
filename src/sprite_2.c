/* sprite_2.c: multi-layer animated sprites (struct Sprite) drawn from an AnimBank. One of several sprite files: the functions between them
 * are still asm (near misses in src/nonmatching/region_a.c). */
#include "global.h"
#include "sprite.h"
#include "oam.h"
#include "obj.h"
#include "text.h"
#include "map.h"

void sub_0831A52C(const void *src, void *dst, u32 ctrl); /* CpuSet */
int sub_0831A68C(const char *s); /* strlen */
extern const u8 gUnk_083E0648[]; /* newlib _ctype_ */
#define CTYPE(c) ((gUnk_083E0648 + 1)[(u8)(c)])
extern u16 gUnk_02002000[];
extern u16 gUnk_02002800[];

void sub_080005D4(struct Sprite *s)
{
    u32 i;
    for (i = 0; i < SPRITE_MAX_LAYERS; i++) {
        if (s->objs[i])
            sub_08004508((struct Obj **)&s->objs[i]);
        s->objs[i] = NULL;
    }
}

void sub_08000604(struct Sprite *s) { s->visible = 1; }

void sub_0800060C(struct Sprite *s) { s->visible = 0; }

void *sub_08000614(struct Sprite *s, int layer) { return sub_080007CC(s->bank, s->anim, s->frame, layer); }

struct AnimCel *sub_0800062C(struct Sprite *s, int layer) { return sub_080007AC(s->bank, s->anim, s->frame, layer); }

struct Anim *sub_08000644(struct Sprite *s) { return sub_0800079C(s->bank, s->anim); }

void sub_08000654(struct Sprite *s) { s->tick = 0; }

void sub_0800065C(struct Sprite *s, int frame)
{
    if ((u32)frame > sub_08000814(s))
        frame = sub_08000814(s);
    s->frame = frame;
    s->tick = 0;
}

void sub_08000680(struct Sprite *s, int anim) { s->anim = anim; }

void sub_08000684(struct Sprite *s, int x, int y, int z) { s->x = x; s->y = y; s->z = z; }

void sub_0800068C(struct Sprite *s, int dx, int dy, s8 dz) /* Sprite_Move */
{
    s->x += dx;
    s->y += dy;
    s->z += dz;
}

void sub_080006AC(struct Sprite *s)
{
    sub_08000654(s);
    s->frame = sub_08000838(s);
}

u8 sub_080006C4(struct Sprite *s) /* Sprite_Tick: advance; FALSE once past the loop end */
{
    u8 r;
    s->tick++;
    if (s->tick >= sub_080007F0(s)) { s->tick = 0; s->frame++; }
    if (s->frame <= sub_08000814(s)) r = 1;
    else { s->frame = sub_08000814(s); r = 0; }
    return r;
}

u8 sub_080006C4(struct Sprite *s);
u8 sub_08000704(struct Sprite *s)
{
    u8 r;
    if (sub_080006C4(s))
        r = 1;
    else {
        sub_080006AC(s);
        r = 0;
    }
    return r;
}

u32 sub_08000724(struct Sprite *s) { return sub_08000814(s); }

void sub_08000730(struct Sprite *s, int v) { s->delay = v; }

void sub_08000734(struct Sprite *s, int v) { s->loopEnd = v; }

void sub_08000738(struct Sprite *s, int v) { s->loopStart = v; }

void sub_0800073C(struct Sprite *s, int layer, u32 pal)
{
    if (pal > 15 && pal != ANIM_DEFAULT)
        pal = 15;
    s->palette[layer] = pal;
}

void sub_0800075C(struct Sprite *s, u32 pal)
{
    u32 i;
    if (pal > 15 && pal != ANIM_DEFAULT)
        pal = 15;
    for (i = 0; i < SPRITE_MAX_LAYERS; i++)
        sub_0800073C(s, i, pal);
}

void sub_0800078C(struct Sprite *s, int v) { s->flag1 = v; }

u16 sub_08000790(struct Sprite *s) { return s->anim; }

u16 sub_08000794(struct Sprite *s) { return s->frame; }

u32 sub_08000798(struct Sprite *s) { return s->tick; }

struct Anim *sub_0800079C(struct AnimBank *bank, int anim)
{
    u8 *base = (u8 *)bank + bank->animTableOfs + 4;
    return (struct Anim *)(base + ((u32 *)base)[anim]);
}

struct AnimCel *sub_080007AC(struct AnimBank *bank, int anim, int frame, int layer)
{
    struct Anim *a = sub_0800079C(bank, anim);
    return &a->cels[a->layerCount * frame + layer];
}

void *sub_080007CC(struct AnimBank *bank, int anim, int frame, int layer)
{
    struct AnimCel *c = sub_080007AC(bank, anim, frame, layer);
    u8 *base = (u8 *)bank + bank->gfxTableOfs + 4;
    return base + *(u32 *)(base + c->gfx * 4);
}

u32 sub_080007F0(struct Sprite *s)
{
    if (s->delay == ANIM_DEFAULT)
        return sub_0800062C(s, 0)->delay;
    return s->delay;
}

u32 sub_08000814(struct Sprite *s)
{
    if (s->loopEnd == ANIM_DEFAULT)
        return sub_08000644(s)->frameCount - 1;
    return s->loopEnd;
}

u32 sub_08000838(struct Sprite *s)
{
    if (s->loopStart == ANIM_DEFAULT)
        return 0;
    return s->loopStart;
}
