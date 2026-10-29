/* link_4.c: Tournament link play: client data download, sessions, packet exchange, link screens. One of several link files: the functions between them
 * are still asm (near misses in src/nonmatching/region_a.c). */
#include "global.h"
#include "system.h"
#include "link.h"
#include "oam.h"
#include "text.h"

void sub_08004914(int x, int y, const char *s);
void sub_083186FC(void);
void sub_0831881C(void);
void sub_08003C1C(void);
extern u32 gUnk_030058A0;
extern const char gUnk_083D3218[], gUnk_083D3224[], gUnk_083D3240[], gUnk_083D3250[], gUnk_083D3270[];
extern u32 gUnk_03000910, gUnk_03000914;
#define REG_TM3CNT (*(vu32 *)0x0400010C)
#define REG_IF (*(vu16 *)0x04000202)
extern u32 gUnk_030058A0, gUnk_030058A8;

void sub_080033CC(void)
{
    if (++gUnk_030058A0 > 160) {
        sub_08004914(9, 6, gUnk_083D3218);
        sub_08004914(1, 13, gUnk_083D3224);
        sub_08004914(7, 14, gUnk_083D3240);
    }
    sub_083186FC();
    sub_0831881C();
    INTR_CHECK = 1;
}

void sub_08003420(void)
{
    if ((++gUnk_030058A8 & 31) > 16) {
        sub_080049D4(0, 15, 32, 0);
        sub_080049D4(0, 16, 25, 0);
    } else {
        sub_08004914(0, 15, gUnk_083D3250);
        sub_08004914(0, 16, gUnk_083D3270);
    }
    INTR_CHECK = 1;
}

u8 sub_0800347C(void)
{
    struct LinkBuffers *b = &gUnk_03000D38;
    u8 r;
    if (b->unk4)
        r = b->unk5;
    else
        r = 0;
    return r;
}

u8 sub_08003490(void)
{
    u8 r = 0;
    if (gUnk_03000D38.unk4 > 1)
        r = 1;
    return r;
}
