#ifndef GUARD_SPRITE_H
#define GUARD_SPRITE_H

#include "global.h"

/* Region A sprite library: a multi-layer animated sprite ("Sprite") drawn from an
 * animation bank ("AnimBank"). Layout from the region A accessors 080002E0-08000898. */

#define SPRITE_MAX_LAYERS 12
#define ANIM_DEFAULT 0xFFFF /* "take the value from the animation data" */

/* One cel of one layer in one frame (8 bytes). */
struct AnimCel {
    u16 x;        /* +0 */
    u16 y;        /* +2 */
    u16 gfx:14;   /* +4 graphic index into the bank's graphics table (0x3FFF = empty) */
    u16 gfxFlags:2;
    u16 delay;    /* +6 frame duration in ticks (only read from layer 0) */
};

/* Animation: frameCount frames of layerCount cels each. */
struct Anim {
    u16 frameCount;           /* +0 */
    u16 layerCount;           /* +2 */
    struct AnimCel cels[1];   /* +4 [frame * layerCount + layer] */
};

/* Animation bank. Both tables are offset tables relative to &bank->data (bank + 4). */
struct AnimBank {
    u32 gfxTableOfs;   /* +0 */
    u32 animTableOfs;  /* +4 */
};

struct Sprite {
    u8 visible;                         /* +0x00 */
    u8 flag1;                           /* +0x01 */
    s16 x;                              /* +0x02 */
    s16 y;                              /* +0x04 */
    s8 z;                               /* +0x06 */
    u8 pad7;
    u16 anim;                           /* +0x08 */
    u16 frame;                          /* +0x0A */
    u32 tick;                           /* +0x0C */
    u16 delay;                          /* +0x10 ANIM_DEFAULT: per-frame delay from the cel data */
    u16 loopStart;                      /* +0x12 ANIM_DEFAULT: 0 */
    u16 loopEnd;                        /* +0x14 ANIM_DEFAULT: frameCount - 1 */
    u16 palette[SPRITE_MAX_LAYERS];     /* +0x16 0-15, or ANIM_DEFAULT */
    struct AnimBank *bank;              /* +0x30 */
    void *objs[SPRITE_MAX_LAYERS];      /* +0x34 hardware sprite handles, one per layer */
};

/* region A prototypes (C keeps sub_ADDR names; readable names are in names.txt) */
struct Anim *sub_0800079C(struct AnimBank *bank, int anim); /* Anim_Get */
struct AnimCel *sub_080007AC(struct AnimBank *bank, int anim, int frame, int layer); /* Anim_GetCel */
void *sub_080007CC(struct AnimBank *bank, int anim, int frame, int layer); /* Anim_GetCelGfx */

void sub_08000604(struct Sprite *s); /* Sprite_Show */
void sub_0800060C(struct Sprite *s); /* Sprite_Hide */
void *sub_08000614(struct Sprite *s, int layer); /* Sprite_GetCelGfx */
struct AnimCel *sub_0800062C(struct Sprite *s, int layer); /* Sprite_GetCel */
struct Anim *sub_08000644(struct Sprite *s); /* Sprite_GetAnim */
void sub_08000654(struct Sprite *s); /* Sprite_ResetTick */
void sub_0800065C(struct Sprite *s, int frame); /* Sprite_SetFrame */
void sub_08000680(struct Sprite *s, int anim); /* Sprite_SetAnimIndex */
void sub_08000684(struct Sprite *s, int x, int y, int z); /* Sprite_SetPos */
void sub_080006AC(struct Sprite *s); /* Sprite_Rewind */
u32 sub_080007F0(struct Sprite *s); /* Sprite_GetFrameDelay */
u32 sub_08000814(struct Sprite *s); /* Sprite_GetLoopEnd */
u32 sub_08000838(struct Sprite *s); /* Sprite_GetLoopStart */
void sub_0800073C(struct Sprite *s, int layer, u32 pal); /* Sprite_SetLayerPalette */

void sub_0800068C(struct Sprite *s, int dx, int dy, s8 dz); /* Sprite_Move */
u8 sub_080006C4(struct Sprite *s); /* Sprite_Tick */
u8 sub_08000704(struct Sprite *s); /* Sprite_Animate */
u32 sub_08000724(struct Sprite *s); /* Sprite_GetLastFrame */
void sub_08000730(struct Sprite *s, int v); /* Sprite_SetDelay */
void sub_08000734(struct Sprite *s, int v); /* Sprite_SetLoopEnd */
void sub_08000738(struct Sprite *s, int v); /* Sprite_SetLoopStart */
void sub_0800075C(struct Sprite *s, u32 pal); /* Sprite_SetPalette */
void sub_0800078C(struct Sprite *s, int v); /* Sprite_SetFlag1 */
u16 sub_08000790(struct Sprite *s); /* Sprite_GetAnimIndex */
u16 sub_08000794(struct Sprite *s); /* Sprite_GetFrame */
u32 sub_08000798(struct Sprite *s); /* Sprite_GetTick */
void sub_080003FC(struct Sprite *s, struct AnimBank *bank); /* Sprite_SetBank */
void sub_080005D4(struct Sprite *s); /* Sprite_FreeObjs */

#endif
