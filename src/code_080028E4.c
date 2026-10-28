#include "global.h"
#include "system.h"
#include "link.h"
int sub_080028E4(struct MultiBootParam *p)
{
    if (p->probe_count == 0xE9)
        return 1;
    return 0;
}

#include "sprite.h"
#include "map.h"
#include "actor.h"
#include "resbank.h"
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

/* MultiBootHandShake: pokeemerald's version; matches once merge_blocks is off (-fno-merge-blocks). */
int sub_080028F4(struct MultiBootParam *mp)
{
    int i, j;

#define send_data (mp->system_work[0])
#define must_data (mp->system_work[1])

    switch (mp->probe_count) {
    case_0xe0:
    case 0xe0:
        mp->probe_count = 0xe1;
        must_data = 0x0000;
        send_data = 0x100000;
        return sub_080027D4(mp, 0x0000);

    default:
        for (i = MULTIBOOT_NCHILD; i != 0; i--) {
            j = REG_SIOMULTI(i);
            if ((mp->client_bit & (1 << i))
                && j != must_data)
                goto case_0xe0;
        }
        mp->probe_count++;
        must_data = send_data & 0xffff;
        if (send_data == 0x0000) {
            must_data = mp->masterp[0xac] | (mp->masterp[0xad] << 8);
            send_data = must_data << 5;
        }
        send_data >>= 5;
    output_common:
        return sub_080027D4(mp, send_data);

    case 0xe7:
    case 0xe8:
        for (i = MULTIBOOT_NCHILD; i != 0; i--) {
            j = REG_SIOMULTI(i);
            if ((mp->client_bit & (1 << i)) && j != must_data) {
                sub_080023B0(mp);
                return 0x71;
            }
        }

        mp->probe_count++;
        if (mp->probe_count == 0xe9)
            return 0;

        send_data = mp->masterp[0xae] | (mp->masterp[0xaf] << 8);
        must_data = send_data;
        goto output_common;
    }

#undef send_data
#undef must_data
}
