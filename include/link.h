#ifndef GUARD_LINK_H
#define GUARD_LINK_H

#include "global.h"

/* Region A serial link (Tournament / multiplayer) code, 080023B0-080033CC. */

#define REG_SIOCNT    (*(vu16 *)0x04000128)
#define REG_SIODATA8  (*(vu16 *)0x0400012A)
#define REG_RCNT      (*(vu16 *)0x04000134)
#define REG_IME_      (*(vu16 *)0x04000208)

struct LinkPort {
    u8 unk0[0x16];
    u16 unk16;     /* +0x16 */
    u8 state;      /* +0x18 0xE9 = connected? */
    u8 unk19[0x1D - 0x19];
    u8 unk1D;      /* +0x1D */
    u8 unk1E;      /* +0x1E */
    u8 unk1F[0x48 - 0x1F];
    u8 unk48;      /* +0x48 */
    u8 unk49;
    u8 unk4A;      /* +0x4A */
};

struct LinkBuffers {
    s32 unk0;
    u8 unk4;
    s8 unk5;           /* 255 = none */
    u8 pad6[2];
    u32 unk8;
    u8 *unkC;
    u8 *unk10;
    u8 buf14[32];
    u8 *bufs[8];       /* +0x34 */
    u8 data[8][16];    /* +0x54 */
};

extern struct LinkBuffers gUnk_03000D38;
extern u32 gUnk_03005898;

void sub_080023B0(struct LinkPort *p);
u32 sub_080027D4(struct LinkPort *p, u16 data);
void sub_08002820(struct LinkPort *p);
u8 sub_080028E4(struct LinkPort *p);
void sub_080029DC(int cycles);  /* hand-written asm delay loop */
void sub_080029F4(void);
void sub_08002B50(void);
void sub_08002BA0(u32 v);
u8 sub_08002BAC(int mode);
void sub_0831A54C(void);  /* VBlankIntrWait */
void sub_08002A30(int v);
void sub_08002F28(void);
u8 sub_0800314C(void);
s8 sub_08003158(void);
u8 sub_0800347C(void);
u8 sub_08003490(void);

#endif
