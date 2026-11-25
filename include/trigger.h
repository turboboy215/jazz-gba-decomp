#ifndef GUARD_TRIGGER_H
#define GUARD_TRIGGER_H
/* trigger.h: animated map tiles with a callback (10 slots at 03003F14, 08312CA4-08313088).
 * Each one animates a ResBank tbl20 animation drawn into the BG map at (tx, ty) and hides
 * itself (setting gUnk_0300571C[id]) once all four corners are off screen. */
#include "global.h"

struct Trigger {
    u8 active;              /* +0x00 */
    u8 state;               /* +0x01 compared with GetFlag(flag) */
    u8 layer;               /* +0x02 BG layer */
    u8 flag;                /* +0x03 GetFlag bit */
    u16 anim;               /* +0x04 ResBank tbl20 index */
    u16 frame;              /* +0x06 */
    u16 tick;               /* +0x08 */
    u16 tx;                 /* +0x0A tile x */
    u16 ty;                 /* +0x0C tile y */
    u16 padE;
    void (*func)(struct Trigger *t);   /* +0x10 */
    u16 id;                 /* +0x14 index into gUnk_0300571C */
    u16 pad16;
};
#define MAX_TRIGGERS 10
extern struct Trigger gTriggers_03003F14[MAX_TRIGGERS];

struct AnimFrame { u16 w, h, delay; };   /* sub_08001B50 entry: size in tiles, frame delay */

u8 sub_08302058(s32 x, s32 y);   /* on screen? (pixel coordinates) */
void sub_0831AE38(struct ResBank *b, u8 layer, u16 anim, u16 frame, u16 tx, u16 ty);   /* veneer: draw anim frame into the BG map */

void sub_08312CA4(struct Trigger *t);
void sub_08312D88(struct Trigger *t);
void sub_08312E60(struct Trigger *t);
void sub_08312F18(struct Trigger *t);
void sub_08312F54(struct Trigger *t);
void sub_08312F90(struct Trigger *t);
void sub_08312FC8(struct Trigger *t);
void sub_08312FFC(struct Trigger *t);
void sub_08312EF8(struct Trigger *t);
void sub_08312F08(struct Trigger *t);
void sub_08312F80(struct Trigger *t);
void sub_08312FB8(struct Trigger *t);
void sub_08312FEC(struct Trigger *t);
void sub_08313018(void);
u32 sub_08313030(struct Trigger **out);
void sub_0831305C(void);

#endif
