/* link_4.c: Tournament link play: client data download, sessions, packet exchange, link screens. One of several link files: the functions between them
 * are still asm (near misses in src/nonmatching/region_a.c). */
#include "global.h"
#include "system.h"
#include "link.h"
#include "oam.h"
#include "text.h"
#include "sprite.h"
#include "map.h"
#include "actor.h"
#include "resbank.h"
#include "obj.h"
#include "multi_sio.h"
#include <stdarg.h>

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

/* Link_Main: multiboot master loop for the Single Pak Tournament (sends the client image: header at
 * 080053A0, 0x13F40 bytes from 08005460, palette 4/4). Needs -fgcse-const-in-loops and -fold-base-reg-class. */
void sub_080034A4(void)
{
    u32 started;
    u32 i;

    sub_08002B50();
    gUnk_03000E0C.masterp = (const u8 *)0x080053A0;
    gUnk_03000E0C.server_type = 1;
    sub_080023B0(&gUnk_03000E0C);
    started = 0;
    do {
        sub_0831A54C();
        gUnk_0300589C = 1;
        for (i = 1; i < 4; i++)
            if (((gUnk_03000E0C.response_bit >> i) & 1) && ((gUnk_03000E0C.client_bit >> i) & 1))
                gUnk_0300589C++;
        sub_08002A30(gUnk_0300589C);
        if (gUnk_0300589C == 1)
            sub_08004914(4, 14, gUnk_083D3290);
        else
            sub_080049D4(4, 14, 25, 0);
        if (gUnk_03000E0C.client_bit & 14) {
            switch (gUnk_03000E0C.probe_count) {
            case 0:
                if ((++gUnk_030058A8 & 31) > 16) {
                    sub_080049D4(0, 15, 25, 0);
                    sub_080049D4(0, 16, 25, 0);
                } else {
                    sub_08004914(0, 15, gUnk_083D32A8);
                    sub_08004914(0, 16, gUnk_083D32C8);
                }
                break;
            case 0xD1:
                sub_080049D4(0, 16, 25, 0);
                sub_08004914(0, 15, gUnk_083D3250);
                sub_08004914(0, 16, gUnk_083D3270);
                break;
            }
        }
        if (started) {
            sub_080049D4(0, 16, 25, 0);
            sub_08004914(0, 15, gUnk_083D3250);
            sub_08004914(0, 16, gUnk_083D3270);
        }
        sub_08002094(&gUnk_03000D10, &gUnk_03000D12);
        if (gUnk_03000D12 & 2) {
            sub_08002A30(0);
            return;
        }
        if ((gUnk_03000D12 & 8) && gUnk_03000E0C.probe_count == 0 && gUnk_03000E0C.client_bit != 0) {
            started = 1;
            sub_08316824();
            if (gUnk_03000E0C.client_bit & 8)
                gUnk_03000D38.unk4 = 4;
            else if (gUnk_03000E0C.client_bit & 4)
                gUnk_03000D38.unk4 = 3;
            else if (gUnk_03000E0C.client_bit & 2)
                gUnk_03000D38.unk4 = 2;
            sub_080049D4(0, 15, 25, 0);
            sub_08002844(&gUnk_03000E0C, (const u8 *)0x08005460, 0x13F40, 4, 4);
        }
        sub_080023EC(&gUnk_03000E0C);
    } while (!sub_080028E4(&gUnk_03000E0C));
    sub_08002144();
    sub_08001FC8(0, sub_08001FF0);
    REG_RCNT = 0;
    REG_SIOCNT = 0;
    REG_SIODATA8 = 0;
    REG_SIOMULTI(0) = 0;
    REG_SIODATA8 = 0;
    REG_SIOMULTI(0) = 0;
    REG_SIOMULTI(0) = 0;
    REG_SIOMULTI(1) = 0;
    REG_SIOMULTI(2) = 0;
    REG_SIOMULTI(3) = 0;
    sub_0831A54C();
    sub_0831A54C();
    sub_0831A54C();
    sub_08002B50();
    REG_IME = 1;
    REG_RCNT = 0;
    *(vu16 *)0x0400010C = 0x83E0;
    REG_SIOCNT = 0x2000;
    REG_SIOCNT |= 0x4003;
    sub_0831A54C();
    sub_0831A54C();
    sub_08001FA0(6);
    sub_08001FC8(6, sub_08003298);
    gUnk_03000D38.unk5 = 0;
    gUnk_0300589C = 0;
    sub_08002A30(0);
    gUnk_03000D38.unk0 = -1;
    sub_08001FC8(0, sub_080033CC);
}
