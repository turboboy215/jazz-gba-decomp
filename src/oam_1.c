/* oam_1.c: shadow OAM manager and the OBJ VRAM block allocator. One of several oam files: the functions between them
 * are still asm (near misses in src/nonmatching/region_a.c). */
#include "global.h"
#include "oam.h"
#include "system.h"
#include "link.h"

void sub_0831A52C(const void *src, void *dst, u32 ctrl); /* CpuSet */
void sub_08004914(int x, int y, const char *s);
void sub_080049D4(int x, int y, int len, int c);
void sub_083186FC(void);
void sub_0831881C(void);
void sub_08003C1C(void);
extern u32 gUnk_030058A0, gUnk_030058A8;
extern const char gUnk_083D3218[], gUnk_083D3224[], gUnk_083D3240[], gUnk_083D3250[], gUnk_083D3270[];
extern u32 gUnk_03000910, gUnk_03000914;
#define REG_TM3CNT (*(vu32 *)0x0400010C)
#define REG_IF (*(vu16 *)0x04000202)

/* Oam_Flush: copies the used list to OAM, hides the entries left over from last frame. Matches with
 * -fno-gcse (the ROM reloads &gUnk_03001264 for the last store) and with the pointer set to OAM and
 * then advanced, which keeps the 0x07000000 constant inside the loop. */
void sub_08003D54(void)
{
    u8 i = gOamUsedHead_03001260;
    u8 n = 0;
    u8 j;
    struct OamEntry *o;
    while (i != 255) {
        struct OamEntry *e = &gOamBuffer_03000E58[i];
        sub_0831A52C(e, &OAM_HW[n], 3);
        i = e->next;
        n++;
    }
    if (gUnk_03001264 > n)
        for (j = n; j < gUnk_03001264; j++) {
            o = OAM_HW;
            o += j;
            o->attr0 = 0x200;
        }
    gUnk_03001264 = n;
}

u8 sub_08003DC0(void)
{
    u32 i = gOamFreeHead_0300125C;
    if (i != 255) {
        struct OamEntry *e = &gOamBuffer_03000E58[i];
        gOamFreeHead_0300125C = e->next;
        e->next = gOamUsedHead_03001260;
        gOamUsedHead_03001260 = i;
    }
    return i;
}
