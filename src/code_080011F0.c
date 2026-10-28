#include "global.h"
#include "sprite.h"
#include "map.h"
#include "actor.h"
#include "resbank.h"
#include "system.h"
void CpuFastSet(const void *src, void *dst, u32 ctrl);
u8 sub_080011F0(struct Actor *a, struct Actor **hit)
{
    u32 i;
    for (i = 0; i < MAX_ACTORS; i++) {
        struct Actor *e = &gUnk_02004400[i];
        if (e->active && sub_08000D04(a, e, 0)) {
            *hit = e;
            return 1;
        }
    }
    return 0;
}

u8 sub_08001238(struct Shot *a, struct Actor **hit)
{
    u32 i;
    for (i = 0; i < MAX_ACTORS; i++) {
        struct Actor *e = &gUnk_02004400[i];
        if (e->active && sub_0800104C(a, e) == 1) {
            *hit = e;
            return 1;
        }
    }
    return 0;
}

void sub_08001280(struct ResBank *b, struct ResHeader *data)
{
    u32 i;
    b->data = data;
    for (i = 0; i < 8; i++) {
        b->unk34[i] = 0;
        b->unk54[i] = 0;
        b->unk24[i] = 0;
        b->unk14[i] = 0;
    }
    b->unk84 = sub_08001A30(b, 0);
    b->unk88 = (u8 *)sub_08001BA0(b) + 8;
}

void sub_080012C0(struct ResBank *b, int i)
{
    struct ResHeader *d = b->data;
    u32 *t = (u32 *)((u8 *)d + d->tbl4);
    sub_08001EBC((const u16 *)((u8 *)d + t[i + 1]), (u16 *)0x05000000, 0, 256);
}

void *sub_080012E4(struct ResBank *b, int i) {
    struct ResHeader *d = b->data;
    u32 *t = (u32 *)((u8 *)d + d->tbl4);
    return (u8 *)d + t[i + 1];
}

void sub_080012F4(struct ResBank *b, u8 slot, u8 i)
{
    struct ResHeader *d = b->data;
    u32 *t = (u32 *)((u8 *)d + d->tbl12);
    void *e = (u8 *)d + t[i + 1];
    b->ptrs[slot] = e;
}

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

/* ---- ResBank_SetTileset 08001314 ---- 8 diff lines: the second search loop must post-increment the list pointer (ldmia) while k = j uses the old j.
 * 2026-10-25: `struct TilesetHdr **p = list; for (j = 0; j < n; j++) if (unk14[i] == *p++) ...`
 * in both loops gets ldmia and j++ in place (4 lines left): the ROM sets p (`mov r3, sp`) after
 * the hoisted unk14[i] load, as a strength-reduced giv would be, but plain list[j] loses ldmia. */
/* ResBank_SetTileset: the search loops index the list with a second counter (list[m++]) so the
 * address giv is incremented right after the load (ldmia); j++ stays at the loop end. */
void sub_08001314(struct ResBank *b, u8 slot, void *tiles)
{
    struct TilesetHdr *list[5];
    u32 ofs[5];
    u32 n, i, j;
    u32 m;
    b->unk14[slot] = (u32)tiles;
    b->unk24[slot] = 0;
    n = 0;
    for (i = 0; i < 4; i++) {
        u8 dup = 0;
        for (j = 0, m = 0; j < n; j++)
            if ((struct TilesetHdr *)b->unk14[i] == list[m++])
                dup = 1;
        if (b->unk14[i] != 0 && !dup)
            list[n++] = (struct TilesetHdr *)b->unk14[i];
    }
    ofs[0] = 0;
    for (i = 1; i < n; i++) {
        u32 m = 2;
        if (list[i - 1]->bpp == 4)
            m = 1;
        ofs[i] = ofs[i - 1] + list[i - 1]->count * m;
    }
    for (i = 0; i < 4; i++) {
        int k = -1;
        for (j = 0, m = 0; j < n; j++)
            if ((struct TilesetHdr *)b->unk14[i] == list[m++])
                k = j;
        if (k != -1)
            b->unk24[i] = ofs[k];
    }
}
