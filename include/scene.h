#ifndef GUARD_SCENE_H
#define GUARD_SCENE_H
/* scene.h: the in-game scene loop and cutscene/dialogue pages (083152C4-083167F8). */
#include "global.h"

/* 0x2007978: scene state, 0xBC bytes; Scene_Run copies it to the stack every frame */
struct Scene {
    s32 state;              /* 0x00: 1 = ... (sub_083164DC skips the callback set) */
    u8 unk04[0xA8];
    u8 unkAC;               /* 0xAC */
    u8 unkAD;               /* 0xAD */
    u8 unkAE;               /* 0xAE */
    u8 unkAF;               /* 0xAF */
    u8 unkB0;               /* 0xB0 */
    u8 padB1[3];
    s32 unkB4;              /* 0xB4 */
    s32 unkB8;              /* 0xB8 */
};
extern struct Scene gScene_02007978;
extern s32 gUnk_02007968;
extern u8 gUnk_0200796C;
extern s32 gUnk_02007970;
extern u16 gUnk_02007974;
extern u16 gUnk_02007976;
extern void (*gScenePage_03005A40)(void);
extern s32 gUnk_03005A3C;
extern u8 gUnk_030059DD;
extern u16 gUnk_03000D1C;
extern u16 gUnk_03000D14;

void sub_08004A1C(void);   /* Text_ClearAll */
void sub_083152C4(void);
void sub_0831A7F4(void);

void sub_083164A4(u16 a, s32 b);
void sub_083164C8(u16 a);
void sub_083164DC(s32 a);
void sub_083164F4(void);
void sub_08316500(void (*f)(void));
void sub_0831650C(void);
void sub_0831652C(void);
void sub_0831653C(void);
void sub_0831654C(void);
u32 sub_0831638C(s32 a);
void sub_0831628C(s32 a, s32 b, s32 c, s32 d, s32 e, s32 f, s32 g);
void sub_08316178(s32 a, s32 b, const char *s, s32 d, s32 e);

#endif
