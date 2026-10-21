#include "global.h"
#include "system.h"
#include "link.h"
#include "oam.h"
void sub_08004914(int x, int y, const char *s);
void sub_080049D4(int x, int y, int len, int c);
void sub_083186FC(void);
void sub_0831881C(void);
void sub_08003C1C(void);
extern u32 gUnk_030058A0;
extern const char gUnk_083D3218[], gUnk_083D3224[], gUnk_083D3240[], gUnk_083D3250[], gUnk_083D3270[];
struct Unk03000970 { u8 unk0; u8 unk1[5]; u8 unk6; };
extern struct Unk03000970 gUnk_03000970;
extern u32 gUnk_03000910, gUnk_03000914;
#define REG_TM3CNT (*(vu32 *)0x0400010C)
#define REG_IF (*(vu16 *)0x04000202)
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
