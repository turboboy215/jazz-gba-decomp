#ifndef GUARD_ACTOR_H
#define GUARD_ACTOR_H

#include "global.h"
#include "sprite.h"

/* Game object with a position and an animated sprite (248 bytes). Fields named so far come
 * from the region A collision code (08000C00-08001280). */
struct Actor {
    u8 unk0;
    u8 active;              /* +0x01 */
    u8 unk2[0x2E - 2];
    u8 unk2E;               /* +0x2E */
    u8 unk2F;               /* +0x2F */
    u8 unk30[0x34 - 0x30];
    s32 x;                  /* +0x34 24.8 fixed point */
    s32 y;                  /* +0x38 */
    u8 unk3C[0x64 - 0x3C];
    struct Sprite sprite;   /* +0x64 */
    u8 unkC8[0xF8 - 0xC8];
};

#define MAX_ACTORS 8
extern struct Actor gUnk_02004400[MAX_ACTORS];

u8 sub_08000D04(struct Actor *a, struct Actor *b, u8 mode);
u8 sub_0800104C(struct Actor *a, struct Actor *b);
u8 sub_080011F0(struct Actor *a, struct Actor **hit);
u8 sub_08001238(struct Actor *a, struct Actor **hit);

#endif
