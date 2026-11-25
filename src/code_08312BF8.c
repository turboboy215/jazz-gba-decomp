#include "global.h"
#include "system.h"
#include "gax.h"
#include "main.h"
#include "actor.h"
#include "link.h"
#include "map.h"
#include "multi_sio.h"
#include "oam.h"
#include "obj.h"
#include "resbank.h"
#include "scene.h"
#include "sprite.h"
#include "text.h"
#include "trigger.h"
#include "regionb.h"

void sub_08312BF8(void)
{
    __main();
    sub_083126F0();
    sub_08315158();
    gUnk_03003F10 = 1;
    GAX2_new(&gGaxParams_030046E0);
    gGaxParams_030046E0.debug = 0;
    gGaxParams_030046E0.mixing_rate = 0x5221;
    gGaxParams_030046E0.song_data = gSong_0835F2E4;
    gGaxParams_030046E0.fx_data = gGaxFxData_083D1C5C;
    gGaxParams_030046E0.workmem = gGaxWorkmem_0300471C;
    gGaxParams_030046E0.workmem_size = 0x1000;
    GAX2_init(&gGaxParams_030046E0);
    GAX_set_music_volume(-1, sub_083167F8(gMusicVolume_030059B4));
    GAX_set_fx_volume(-1, sub_08316810(gFxVolume_030059B8));
    sub_08001FC8(0, VBlankIntr_IWRAM_0300087D);
    sub_08312730();
    sub_08312864();
    sub_0830A638();
    sub_0830A06C();
    sub_0830A3B4();
    sub_0830AAA8();
    for (;;)
        ;
}

void sub_08312CA4(struct Trigger *t)
{
    struct AnimFrame *f = sub_08001B50(&gBgBank_0300398C, t->anim, t->frame);
    s32 x0 = t->tx * 8;
    s32 x1 = f->w * 8 + x0;
    s32 y0 = t->ty * 8;
    s32 y1 = f->h * 8 + y0;

    if (!sub_08302058(x0, y0) && !sub_08302058(x0, y1) && !sub_08302058(x1, y0) && !sub_08302058(x1, y1)) {
        sub_08316920(t->id);
        sub_08313054(t);
        return;
    }
    if (++t->tick >= f->delay) {
        t->tick = 0;
        t->frame++;
    }
    if (t->frame >= *sub_08001B40(&gBgBank_0300398C, t->anim)) {
        t->frame = *sub_08001B40(&gBgBank_0300398C, t->anim) - 1;
        t->tick = 0;
    }
    sub_0831AE38(&gBgBank_0300398C, t->layer, t->anim, t->frame, t->tx, t->ty);
}

void sub_08312D88(struct Trigger *t)
{
    struct AnimFrame *f = sub_08001B50(&gBgBank_0300398C, t->anim, t->frame);
    s32 x0 = t->tx * 8;
    s32 x1 = f->w * 8 + x0;
    s32 y0 = t->ty * 8;
    s32 y1 = f->h * 8 + y0;

    if (!sub_08302058(x0, y0) && !sub_08302058(x0, y1) && !sub_08302058(x1, y0) && !sub_08302058(x1, y1)) {
        sub_08316920(t->id);
        sub_08313054(t);
        return;
    }
    if (++t->tick >= f->delay) {
        t->tick = 0;
        t->frame++;
    }
    if (t->frame >= *sub_08001B40(&gBgBank_0300398C, t->anim))
        t->frame = 0;
    sub_0831AE38(&gBgBank_0300398C, t->layer, t->anim, t->frame, t->tx, t->ty);
}

void sub_08312E60(struct Trigger *t)
{
    struct AnimFrame *f = sub_08001B50(&gBgBank_0300398C, t->anim, t->frame);
    s32 x0 = t->tx * 8;
    s32 x1 = f->w * 8 + x0;
    s32 y0 = t->ty * 8;
    s32 y1 = y0 + f->h * 8;

    if (!sub_08302058(x0, y0) && !sub_08302058(x0, y1) && !sub_08302058(x1, y0) && !sub_08302058(x1, y1)) {
        sub_08316920(t->id);
        sub_08313054(t);
        return;
    }
    sub_0831AE38(&gBgBank_0300398C, t->layer, t->anim, t->frame, t->tx, t->ty);
}

void sub_08312EF8(struct Trigger *t)
{
    t->tick = 0;
    t->frame = 0;
    t->func = sub_08312D88;
}

void sub_08312F08(struct Trigger *t)
{
    t->tick = 0;
    t->frame = 0;
    t->func = sub_08312CA4;
}

void sub_08312F18(struct Trigger *t)
{
    t->tick = 0;
    t->frame = 0;
    t->func = sub_08312F54;
    if (t->state == sub_08001E18(t->flag))
        t->frame = *sub_08001B40(&gBgBank_0300398C, t->anim) - 1;
}

void sub_08312F54(struct Trigger *t)
{
    if (t->state == sub_08001E18(t->flag)) {
        sub_08312CA4(t);
    } else {
        t->frame = 0;
        sub_08312E60(t);
    }
}

void sub_08312F80(struct Trigger *t)
{
    t->tick = 0;
    t->frame = 0;
    t->func = sub_08312F90;
}

void sub_08312F90(struct Trigger *t)
{
    u8 f = sub_08001E18(t->flag);
    if (t->state == f)
        t->frame = 1;
    else
        t->frame = 0;
    sub_08312E60(t);
}

void sub_08312FB8(struct Trigger *t)
{
    t->tick = 0;
    t->func = sub_08312FC8;
}

void sub_08312FC8(struct Trigger *t)
{
    u16 v = sub_08001E18(1);
    if (v)
        v = 1;
    t->frame = v;
    sub_08312E60(t);
}

void sub_08312FEC(struct Trigger *t)
{
    t->frame = 0;
    t->func = sub_08312FFC;
}

void sub_08312FFC(struct Trigger *t)
{
    if (!sub_08001E18(7))
        sub_08312E60(t);
}

void sub_08313018(void)
{
    s32 i;
    for (i = 0; i != MAX_TRIGGERS; i++)
        gTriggers_03003F14[i].active = 0;
}

u32 sub_08313030(struct Trigger **out)
{
    u32 i;
    for (i = 0; i <= MAX_TRIGGERS; i++) {
        if (!gTriggers_03003F14[i].active) {
            *out = &gTriggers_03003F14[i];
            return 1;
        }
    }
    return 0;
}
