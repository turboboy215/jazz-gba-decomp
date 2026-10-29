/* link_1.c: Tournament link play: client data download, sessions, packet exchange, link screens. One of several link files: the functions between them
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

/* Link_SendClientData: after the multiboot download, MultiSio handshake with the clients, then
 * sends the 11 Sio32MultiLoad blocks of 0x4000 bytes listed at 083D30D8 (0x080193A0 + n*0x4000),
 * blinking "Loading... / PLEASE DO NOT POWER OFF SYSTEM". Matches with -fno-merge-blocks. */
void sub_08002144(void)
{
    u8 *block = NULL;
    u32 loadRequest = 0;

    sub_08001FC8(0, sub_08003CB0);
    REG_IE = 1;
    if (*(u8 *)0x080000B2 == 0x96 && *(u32 *)0x080000AC == *(u32 *)gUnk_083D3104)
        REG_IE |= 0x2000;
    REG_DISPSTAT = 8;
    REG_IME = 1;
    gUnk_030008F0 = &gUnk_03000900[5];
    for (;;) {
        if ((++gUnk_03005890 & 31) > 16) {
            sub_080049D4(0, 15, 30, 0);
            sub_080049D4(0, 16, 30, 0);
        } else {
            sub_08004914(0, 15, gUnk_083D310C);
            sub_08004914(0, 16, gUnk_083D312C);
        }
        if ((gUnk_03000910 & 0x180) != 0x100 || gUnk_03000914 > 3)
            sub_0831A54C();
        else
            sub_0831A534(1, 0x80);
        switch (gUnk_03000914) {
        case 0:
            gUnk_03000918 = 0;
        case 1:
            sub_08001FC8(6, MultiSioIntr_IWRAM);
            sub_08003790((gUnk_03000918 & 0xF00) >> 8);
            loadRequest = 0;
            if (gUnk_03000914 == 0)
                gUnk_03000914 = 3;
            else
                gUnk_03000914 = 2;
            break;
        case 2:
            if (gUnk_03000910 & 0x10) {
                if (gUnk_03000910 & 0x40)
                    (*gUnk_030008F0)++;
                gUnk_03000914 = 3;
            }
            sub_08003848();
        case 3:
            if (gUnk_03000910 & 0x20)
                gUnk_03000914 = 4;
            if (gUnk_03000910 & 0x10)
                loadRequest = 1;
            gUnk_03000910 = sub_080038B0(gUnk_03000920);
            sub_08003848();
            if (gUnk_03000960 != gUnk_03000920[5]) {
                gUnk_03000960 = gUnk_03000920[5];
                gUnk_03000964 = 0;
            }
            block = gUnk_083D30D8[gUnk_03000960];
            break;
        case 4:
            sub_08003860();
            if (gUnk_03000960 == 11) {
                sub_08001FB4(6);
                return;
            }
            sub_08001FC8(6, Sio32MultiLoadIntr_IWRAM);
            sub_080040C8(gUnk_03000910 & 0x80, block);
            gUnk_03000914 = 5;
            break;
        case 5:
            if (sub_08004164(&gUnk_03000964)) {
                gUnk_03000918 = gUnk_03000910;
                gUnk_03000910 = 0;
                gUnk_03000914 = 1;
            }
            break;
        }
        if (gUnk_03000968 == 0 && (gUnk_03000910 & 0x100))
            gUnk_03000968 = 1;
        sub_080039F0(gUnk_03000900, loadRequest);
    }
}
