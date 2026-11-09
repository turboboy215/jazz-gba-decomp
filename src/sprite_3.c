/* sprite_3.c: multi-layer animated sprites (struct Sprite) drawn from an AnimBank. One of several sprite files: the functions between them
 * are still asm (near misses in src/nonmatching/region_a.c). */

#include "global.h"
#include "sprite.h"
#include "map.h"
#include "actor.h"
#include "resbank.h"
#include "system.h"
#include "link.h"
#include "oam.h"
#include "obj.h"
#include "text.h"
#include "multi_sio.h"
#include <stdarg.h>
struct TilesetHdr { u16 count; u16 bpp; };
extern u16 gUnk_03002500, gUnk_03002504;
extern u16 gUnk_03000D30[MULTIBOOT_NCHILD];
int sub_08004EEC(const char **s);
u32 sub_08004F18(const char *s, u32 count);
extern const char gUnk_083D3384[];
#define MULTIBOOT_CLIENT_INFO 0x72
#define MULTIBOOT_CLIENT_DLREADY 0x73
#define isdigit(c) ((u8)((c) - '0') <= 9)

u16 sub_08000850(u32 x, u32 y);
void CpuFastSet(const void *src, void *dst, u32 ctrl);
void sub_083186FC(void);
void sub_0831881C(void);
void sub_08003C1C(void);
extern u32 gUnk_030058A0, gUnk_030058A8;
extern const char gUnk_083D3218[], gUnk_083D3224[], gUnk_083D3240[], gUnk_083D3250[], gUnk_083D3270[];
extern u32 gUnk_03000910, gUnk_03000914;
#define REG_TM3CNT (*(vu32 *)0x0400010C)
#define REG_IF (*(vu16 *)0x04000202)
void sub_0831A52C(const void *src, void *dst, u32 ctrl); /* CpuSet */
int sub_0831A68C(const char *s); /* strlen */
extern const u8 gUnk_083E0648[]; /* newlib _ctype_ */
#define CTYPE(c) ((gUnk_083E0648 + 1)[(u8)(c)])
extern u16 gUnk_02002000[];
extern u16 gUnk_02002800[];
extern u16 gUnk_02003600[];
extern const char gUnk_083D3334[]; /* "0123456789abcdefghijklmnopqrstuvwxyz" */
extern const char gUnk_083D335C[]; /* "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ" */
#define ZEROPAD 1
#define SIGN    2
#define PLUS    4
#define SPACE   8
#define LEFT    16
#define SPECIAL 32
#define LARGE   64
#define do_div(n, base) ({ int __res; __res = ((unsigned long)n) % (unsigned)base; n = ((unsigned long)n) / (unsigned)base; __res; })

u32 sub_080002E0(struct Sprite *s, struct AnimBank *bank, int anim, int frame)
{
    struct Anim *a = sub_0800079C(bank, anim);
    u32 i, j;
    s->bank = bank;
    s->tick = 0;
    s->flag1 = 0;
    sub_08000680(s, anim);
    sub_0800065C(s, frame);
    sub_08000730(s, ANIM_DEFAULT);
    sub_08000738(s, ANIM_DEFAULT);
    sub_08000734(s, ANIM_DEFAULT);
    sub_0800075C(s, ANIM_DEFAULT);
    sub_08000604(s);
    for (i = 0; i < a->layerCount; i++) {
        if (sub_080007AC(bank, anim, frame, i)->gfx != 0x3FFF) {
            struct CelGfx *g = sub_080007CC(bank, anim, frame, i);
            if (!sub_08004408(&s->objs[i], g->w, g->h, g->is8bpp, g->data)) {
                for (j = i; j < SPRITE_MAX_LAYERS; j++)
                    s->objs[i] = NULL;
                sub_080005D4(s);
                return 0;
            }
        } else
            s->objs[i] = NULL;
    }
    for (; i < SPRITE_MAX_LAYERS; i++)
        s->objs[i] = NULL;
    return 1;
}

void sub_0831A52C(const void *src, void *dst, u32 ctrl); /* CpuSet */
int sub_0831A68C(const char *s); /* strlen */
#define CTYPE(c) ((gUnk_083E0648 + 1)[(u8)(c)])

void sub_080003FC(struct Sprite *s, struct AnimBank *bank)
{
    s->bank = bank;
    s->anim = 0;
    s->frame = 0;
    s->tick = 0;
}
