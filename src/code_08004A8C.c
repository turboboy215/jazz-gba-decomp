#include "global.h"
#include "obj.h"
#include "text.h"
#include <stdarg.h>
int sub_08004A8C(const char *s)
{
    char buf[12];
    int mul = 1;
    int v = 0;
    char *p;
    sub_08004A54(buf, s);
    if (buf[0]) {
        p = buf;
        do {
            v += (*p - '0') * mul;
            mul *= 10;
        } while (*++p);
    }
    return v;
}

int sub_08004AC8(const char *s)
{
    if (*s != '{' || !sub_08004B14(s + 1))
        return 0;
    return 1;
}

char *sub_08004AE4(char **ps)
{
    while (**ps != '}' && **ps)
        (*ps)++;
    if (**ps == 0)
        return *ps;
    return ++*ps;
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

/* Text_ParsePaletteTag: copies "{P<n>}" digits up to the "}" into buf through a pointer set to
 * n + buf (operand order of the ROM's adds), then sets the text palette from the number. */
int sub_08004B14(const char *s)
{
    char buf[12];
    int n = 0;
    char *p;
    if (*s != 'P' && *s != 'p')
        return 0;
    if (*s++ != '}') {
        p = (char *)(n + (int)buf);
        do {
            *p++ = *s;
            n++;
        } while (*s++ != '}');
    }
    n--;
    buf[n] = 0;
    gTextCtx_030024F0.palette = sub_08004A8C(buf);
    return 1;
}
