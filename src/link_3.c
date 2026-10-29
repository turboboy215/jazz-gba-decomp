/* link_3.c: Tournament link play: client data download, sessions, packet exchange, link screens. One of several link files: the functions between them
 * are still asm (near misses in src/nonmatching/region_a.c). */
#include "global.h"
#include "system.h"
#include "link.h"
#include "oam.h"
#include "text.h"
#include "multi_sio.h"

void sub_08004914(int x, int y, const char *s);
void sub_083186FC(void);
void sub_0831881C(void);
void sub_08003C1C(void);
extern u32 gUnk_030058A0;
extern const char gUnk_083D3218[], gUnk_083D3224[], gUnk_083D3240[], gUnk_083D3250[], gUnk_083D3270[];
extern u32 gUnk_03000910, gUnk_03000914;
#define REG_TM3CNT (*(vu32 *)0x0400010C)
#define REG_IF (*(vu16 *)0x04000202)

u8 sub_0800314C(void) { return gUnk_03000D38.unk4; }

s8 sub_08003158(void) { return gUnk_03000D38.unk5; }

void sub_08003168(void)
{
    gUnk_0300589C = 0;
    gUnk_030058A0 = 0;
    if ((u16)(REG_SIOCNT & 4) == 0)
        *(vu16 *)0x0400010E = 0;
    if (!(REG_SIOCNT & 0x40)) {
        if (REG_SIOMULTI(0) == 0xDEAD)
            gUnk_0300589C++;
        if (REG_SIOMULTI(1) == 0xDEAD)
            gUnk_0300589C++;
        if (REG_SIOMULTI(2) == 0xDEAD)
            gUnk_0300589C++;
        if (REG_SIOMULTI(3) == 0xDEAD)
            gUnk_0300589C++;
        if (REG_SIOMULTI(0) == 20) {
            gUnk_03000D38.unk5 = (REG_SIOCNT >> 4) & 3;
            gUnk_03000D38.unk4 = gUnk_0300589C + 1;
        }
    }
    REG_SIODATA8 = 0xDEAD;
    if (gUnk_0300589C > 1) {
        if (!(REG_SIOCNT & 4)) {
            sub_08004914(5, 15, gUnk_083D3200);
            if (gUnk_03000D12 & 8) {
                REG_SIODATA8 = 20;
                REG_SIOCNT |= 0x80;
                *(vu16 *)0x0400010E = 0xC0;
            } else if (!(REG_SIOCNT & 4)) {
                REG_SIOCNT |= 0x80;
                *(vu16 *)0x0400010E = 0xC0;
            }
        }
    } else if (!(REG_SIOCNT & 4)) {
        REG_SIOCNT |= 0x80;
        *(vu16 *)0x0400010E = 0xC0;
    }
}
