#ifndef GUARD_PICKUP_H
#define GUARD_PICKUP_H
/* pickup.h: collectable items (8 slots at 0300407C, 083142F8-08314AF8). */
#include "global.h"
#include "sprite.h"

struct Pickup {
    u8 type;                /* +0x00 animation in the item bank, also selects the score */
    u8 id;                  /* +0x01 index into gUnk_0300571C (collected flags) */
    u8 active;              /* +0x02 */
    u8 unk3;                /* +0x03 1: set gUnk_0300571C[id] when it leaves the screen */
    u8 unk4;                /* +0x04 */
    u8 unk5;                /* +0x05 */
    u8 pad6[2];
    u32 score;              /* +0x08 */
    s16 unkC;               /* +0x0C */
    u8 padE[2];
    s16 unk10;              /* +0x10 seconds * 60 */
    u8 pad12[2];
    s32 x;                  /* +0x14 24.8 fixed point */
    s32 y;                  /* +0x18 */
    u8 pad1C[8];
    u8 z;                   /* +0x24 */
    u8 pad25[3];
    struct Sprite sprite;   /* +0x28 */
};
#define MAX_PICKUPS 8
extern struct Pickup gPickups_0300407C[MAX_PICKUPS];
extern struct AnimBank gUnk_081C00E0, gUnk_081F2130;   /* item sprite banks (scoring / plain) */

u8 sub_083020A8(struct Sprite *s, s32 x, s32 y);   /* visible at (x, y)? */
void sub_083142F8(void);
u8 sub_08314310(struct Pickup **out);
u32 sub_08314338(s32 x, s32 y, u32 type, u8 a3, u16 secs, u8 scored, u8 a6, u16 id);
void sub_08314454(struct Pickup *p);
void sub_0831488C(struct Pickup *p);
void sub_083149CC(void);
void sub_08314A3C(void);
u8 sub_08314AC4(s32 id, struct Pickup **out);

#endif
