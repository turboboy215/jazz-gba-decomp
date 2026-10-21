#include "global.h"
#include "sprite.h"

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

extern u8 gUnk_0300398C[];
int sub_0831AEA8(void *map, u32 tx, u32 ty);
u16 sub_08000850(u32 x, u32 y) { return sub_0831AEA8(gUnk_0300398C, x >> 3, y >> 3); }

u16 sub_08000850(u32 x, u32 y);
u32 sub_08000870(u32 x, u32 y) { return (sub_08000850(x, y) & 0x70) >> 4; }

u32 sub_08000884(u32 x, u32 y) { return (sub_08000850(x, y) & 0x380) >> 7; }
