#include "global.h"
#include "obj.h"
#include "text.h"
#include <stdarg.h>
void sub_08004914(int x, int y, const char *s)
{
    int nx;
    do {
        nx = x + 1;
        while (sub_08004AC8(s) == 1)
            s = sub_08004AE4((char **)&s);
        if (x >= 0 && y >= 0 && x <= 31 && y <= 31)
            sub_0800488C(x, y, *s);
        x = nx;
    } while (*++s);
}

void sub_08004968(int x, int y, const char *fmt, ...)
{
    va_list ap;
    va_start(ap, fmt);
    sub_08005100(gTextCtx_030024F0.buf, fmt, ap);
    sub_08004914(x, y, gTextCtx_030024F0.buf);
    va_end(ap);
}

void sub_08004994(int x, int y)
{
    u16 *cell = (u16 *)((gTextCtx_030024F0.bg << 11) + 0x06000000);
    cell += x + y * 32;
    if (sub_08004BA4(*cell))
        sub_08004CA0(*cell);
    else
        sub_0831AE58(*cell);
    *cell = 0;
}

void sub_080049D4(u32 x, u32 y, u32 w, u32 h)
{
    u32 i, j;
    for (j = y; j <= y + h; j++)
        for (i = x; i <= x + w; i++)
            sub_08004994(i, j);
}

void sub_08004A1C(void)
{
    u32 i, j;
    for (j = 0; j < 32; j++)
        for (i = 0; i < 32; i++)
            sub_08004994(i, j);
}

int sub_08004A40(const char *s)
{
    int n = 0;
    while (*s) {
        n++;
        s++;
    }
    return n;
}

#include "sprite.h"
#include "map.h"
#include "actor.h"
#include "resbank.h"
#include "system.h"
#include "link.h"
#include "oam.h"
#include "multi_sio.h"
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

/* Text_StrRev: dst = src reversed. Two pointers (d-- before s++ is the ROM's increment order),
 * d set to n + (dst - 1) after the first-character test. */
void sub_08004A54(char *dst, const char *src)
{
    int n = sub_08004A40(src);
    const char *s;
    char *d;
    if (n != 0) {
        if (*src) {
            s = src;
            {
                char *e = dst - 1;
                d = (char *)(n + (int)e);
            }
            do {
                *d = *s;
                d--;
                s++;
            } while (*s);
        }
        dst[n] = 0;
    }
}
