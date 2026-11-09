/* multi_sio_3.c: Nintendo MultiSio sample library (older revision of SAT-R/sa2 src/multi_sio.c). One of several multi_sio files: the functions between them
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

u32 sub_08003A9C(void *recvp)
{
    s32 checkSum;
    u8 syncRecvFlag;
    s32 i, ii;
    u32 (*fn)(void) = MultiSioRecvBufChange;
    struct MultiSioPacket *p = NULL;

    syncRecvFlag = fn();
    Ms.recvSuccessFlags = 0;
    Ms.loadSuccessFlag = 0;
    if (syncRecvFlag) {
        for (i = 3; i >= 0; i--) {
            u32 zero;
            u16 *q;
            p = &((struct MultiSioPacket *)Ms.recvCheckBufp)[i];
            checkSum = 0;
            for (ii = 0, q = (u16 *)p; ii < sizeof(struct MultiSioPacket) / 2 - 2; ii++)
                { u16 v = *q++; checkSum += v; }
            if ((s16)checkSum == -13) {
                Ms.recvSuccessFlags |= 1 << i;
                Ms.downloadSuccessFlags |= p->downloadSuccessFlag << i;
                sub_0831A52C(p->data, (u8 *)recvp + i * 16, 0x04000000 | (16 / 4));
            }
            zero = 0;
            sub_0831A52C(&zero, p->data, 0x05000000 | (16 / 4));
        }
    }
    Ms.recvFlagsHistory |= Ms.recvSuccessFlags;
    Ms.connectedFlags |= Ms.recvFlagsHistory;
    if (Ms.recvSuccessFlags & 1) {
        if (Ms.type == 8) {
            if ((Ms.recvSuccessFlags & 3) && Ms.recvSuccessFlags == Ms.connectedFlags)
                Ms.loadEnable = 1;
            if ((Ms.downloadSuccessFlags & 0xE) == (Ms.connectedFlags & 0xE))
                Ms.loadSuccessFlag = 1;
        } else
            Ms.loadSuccessFlag = p->loadSuccessFlag;
        Ms.loadRequest = p->loadRequest;
    }
    return Ms.recvSuccessFlags;
}
