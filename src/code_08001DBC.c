#include "global.h"
#include "sprite.h"
#include "map.h"
#include "actor.h"
#include "resbank.h"
void CpuFastSet(const void *src, void *dst, u32 ctrl);
void sub_08001DBC(u8 v) { gUnk_03005858 = v; }

u32 sub_08001DC8(int bit, u8 v)
{
    u8 *f = &gUnk_03005858;
    int one = 1;
    int m = one << bit;
    *f = (*f & ~m) | (v << bit);
    return ((m & *f) >> bit) & one;
}

u32 sub_08001DF4(int bit)
{
    u8 *f = &gUnk_03005858;
    int m = 1 << bit;
    int t = m ^ *f;
    *f = t;
    return ((m & t) >> bit) & 1;
}

u8 sub_08001E18(int bit)
{
    u8 *f = &gUnk_03005858;
    int one = 1;
    return ((one << bit) & *f) >> bit & one;
}

u8 sub_08001E30(int d)
{
    gUnk_03005859 += d;
    if (gUnk_03005859 > 7)
        gUnk_03005859 = 7;
}

void sub_08001E4C(int d)
{
    int t = gUnk_03005859 - d;
    if (t <= 0)
        t = 0;
    gUnk_03005859 = t;
}

void sub_08001E60(u32 v)
{
    if (v <= 7)
        gUnk_03005859 = v;
}

void sub_08001E70(u16 *pal, int idx, u16 color)
{
    u16 *d = &pal[idx];
    const u8 *t = gUnk_083D2FD8;
    const u8 *r = &t[(color & 31) + gUnk_03005859 * 32];
    const u8 *g = &t[((color >> 5) & 31) + gUnk_03005859 * 32];
    const u8 *b = &t[((color >> 10) & 31) + gUnk_03005859 * 32];
    *d = (*g << 5) | *r | (*b << 10);
}

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

/* Palette_CopyFaded: src read through a second index (src[k++]) so its pointer is incremented right
 * after the ldrh; the red mask uses the u16 value, green/blue an int copy (lsls #16 + lsrs). */
void sub_08001EBC(const u16 *src, u16 *dst, int ofs, int count)
{
    int i, k = 0;
    u16 *d = dst + ofs;
    for (i = 0; i != count; i++) {
        u16 c = src[k++]; int ci = c;
        const u8 *t = gUnk_083D2FD8;
        const u8 *r = &t[(c & 31) + gUnk_03005859 * 32];
        const u8 *g = &t[(((u16)ci >> 5) & 31) + gUnk_03005859 * 32];
        const u8 *b = &t[(((u16)ci >> 10) & 31) + gUnk_03005859 * 32];
        *d++ = (*g << 5) | *r | (*b << 10);
    }
}
