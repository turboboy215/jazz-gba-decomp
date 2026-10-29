/* link_2.c: Tournament link play: client data download, sessions, packet exchange, link screens. One of several link files: the functions between them
 * are still asm (near misses in src/nonmatching/region_a.c). */
#include "global.h"
#include "system.h"
#include "link.h"
#include "oam.h"
#include "sprite.h"
#include "obj.h"

void sub_08004914(int x, int y, const char *s);
void sub_083186FC(void);
void sub_0831881C(void);
void sub_08003C1C(void);
extern u32 gUnk_030058A0;
extern const char gUnk_083D3218[], gUnk_083D3224[], gUnk_083D3240[], gUnk_083D3250[], gUnk_083D3270[];
extern u32 gUnk_03000910, gUnk_03000914;
#define REG_TM3CNT (*(vu32 *)0x0400010C)
#define REG_IF (*(vu16 *)0x04000202)

extern struct Sprite gUnk_03003A34[4]; /* player icons on the link screens */
void sub_08002A30(u32 n)
{
    u32 i;
    for (i = 0; i < 4; i++)
        sub_0800060C(&gUnk_03003A34[i]);
    switch (n) {
    case 1:
        sub_08000684(&gUnk_03003A34[0], 120, 80, 0);
        sub_08000604(&gUnk_03003A34[0]);
        break;
    case 2:
        sub_08000684(&gUnk_03003A34[0], 80, 80, 0);
        sub_08000604(&gUnk_03003A34[0]);
        sub_08000684(&gUnk_03003A34[1], 160, 80, 0);
        sub_08000604(&gUnk_03003A34[1]);
        break;
    case 3:
        sub_08000684(&gUnk_03003A34[0], 60, 80, 0);
        sub_08000604(&gUnk_03003A34[0]);
        sub_08000684(&gUnk_03003A34[1], 120, 80, 0);
        sub_08000604(&gUnk_03003A34[1]);
        sub_08000684(&gUnk_03003A34[2], 180, 80, 0);
        sub_08000604(&gUnk_03003A34[2]);
        break;
    case 4:
        sub_08000684(&gUnk_03003A34[0], 48, 80, 0);
        sub_08000604(&gUnk_03003A34[0]);
        sub_08000684(&gUnk_03003A34[1], 96, 80, 0);
        sub_08000604(&gUnk_03003A34[1]);
        sub_08000684(&gUnk_03003A34[2], 144, 80, 0);
        sub_08000604(&gUnk_03003A34[2]);
        sub_08000684(&gUnk_03003A34[3], 192, 80, 0);
        sub_08000604(&gUnk_03003A34[3]);
        break;
    }
    for (i = 0; i < 4; i++)
        sub_08000408(&gUnk_03003A34[i]);
    sub_080043B4();
}

void sub_08002B50(void)
{
    if (gUnk_03005898 == 0) {
        struct LinkBuffers *b = &gUnk_03000D38;
        b->unkC = b->buf14;
        b->unk10 = b->buf14;
        b->bufs[0] = b->data[0];
        b->bufs[1] = b->data[1];
        b->bufs[2] = b->data[2];
        b->bufs[3] = b->data[3];
        b->bufs[4] = b->data[4];
        b->bufs[5] = b->data[5];
        b->bufs[6] = b->data[6];
        b->bufs[7] = b->data[7];
        b->unk4 = 0;
        b->unk8 = 0;
        b->unk5 = 255;
        b->unk0 = -1;
        gUnk_03005898 = 1;
    }
}

void sub_08002BA0(u32 v) { gUnk_03000D38.unk8 = v; }

u8 sub_08002BAC(int mode)
{
    REG_IME_ = 1;
    REG_RCNT = 0;
    REG_SIOCNT = 0x2000;
    REG_SIOCNT = REG_SIOCNT | 0x4000 | mode;
    sub_0831A54C();
    sub_0831A54C();
    if (!(REG_SIOCNT & 8) || (REG_SIOCNT & 0x80))
        return 1;
    return 0;
}

#include "text.h"
#include "multi_sio.h"

u32 sub_08002C04(int baud)
{
    u16 recv[32];
    u16 send[8];

    REG_IME = 1;
    REG_RCNT = 0;
    REG_SIOCNT = 0x2000;
    REG_SIOCNT = REG_SIOCNT | 0x4000 | baud;
    while (!(REG_SIOCNT & 8) || (REG_SIOCNT & 0x80)) {
        sub_08002094(&gUnk_03000D10, &gUnk_03000D12);
        if (gUnk_03000D38.unk8 != 0 && LINK_CALLBACK(gUnk_03000D38)() == 0) {
            sub_08002094(&gUnk_03000D10, &gUnk_03000D12);
            sub_08002A30(0);
            return 0;
        }
        sub_08002A30(gUnk_0300589C);
    }
    REG_SIODATA8 = 0xDEAD;
    if (!(REG_SIOCNT & 4)) {
        sub_08001FC8(6, sub_08003168);
        sub_08001FA0(6);
        *(vu16 *)0x0400010C = 0x83E0;
        REG_SIOCNT |= 0x80;
        *(vu16 *)0x0400010E = 0xC0;
    } else {
        sub_08001FC8(7, sub_08003168);
        sub_08001FA0(7);
    }
    while (gUnk_03000D38.unk5 == -1) {
        sub_0831A54C();
        sub_08002094(&gUnk_03000D10, &gUnk_03000D12);
        if (gUnk_0300589C <= 1) {
            if (gUnk_03000D38.unk8 != 0) {
                if (LINK_CALLBACK(gUnk_03000D38)() == 0) {
                    if (!(REG_SIOCNT & 4))
                        sub_08001FD8(6);
                    else
                        sub_08001FD8(7);
                    sub_080049D4(4, 14, 26, 0);
                    sub_08002A30(0);
                    gUnk_03000D38.unk4 = 0;
                    gUnk_03000D38.unk5 = 255;
                    return 0;
                }
                sub_080049D4(4, 15, 26, 0);
            }
        } else {
            sub_080049D4(4, 14, 25, 0);
            sub_080049D4(12, 19, 6, 0);
            if (REG_SIOCNT & 4) {
                if ((++gUnk_030058A4 & 31) > 16)
                    sub_080049D4(4, 15, 22, 0);
                else
                    sub_08004914(4, 15, gUnk_083D3188);
                if (++gUnk_030058A0 > 120) {
                    sub_08002A30(0);
                    gUnk_03000D38.unk4 = 0;
                    gUnk_03000D38.unk5 = 255;
                    sub_08002F28();
                    sub_080049D4(4, 15, 25, 0);
                    return 0;
                }
            }
        }
        sub_08002A30(gUnk_0300589C);
    }
    sub_0831A54C();
    sub_0831A54C();
    sub_0831A54C();
    if (gUnk_03000D38.unk5 == 0)
        sub_08001FC8(6, sub_08003298);
    else
        sub_08001FC8(7, sub_08003298);
    sub_08002A30(0);
    sub_0831A54C();
    sub_0831A54C();
    sub_0831A54C();
    gUnk_03000D38.unk0 = -1;
    REG_SIODATA8 = 0;
    if (gUnk_03000D38.unk5 == 0) {
        while (recv[0] != 111) {
            send[0] = 111;
            sub_0831A54C();
            sub_08002F64((struct LinkPacket *)send, (struct LinkPacket *)recv);
        }
    } else {
        while (recv[0] != 111) {
            sub_0831A534(1, 7);
            sub_08002F64((struct LinkPacket *)send, (struct LinkPacket *)recv);
        }
    }
    sub_0831A54C();
    sub_0831A54C();
    sub_0831A54C();
    gUnk_03000D38.unk0 = -1;
    REG_SIODATA8 = 0;
    sub_08001FC8(0, sub_080033CC);
    return 1;
}

void sub_08002F28(void)
{
    if (gUnk_03000D38.unk5 == 0)
        sub_08001FD8(6);
    else
        sub_08001FD8(7);
    sub_08002A30(0);
    gUnk_03000D38.unk4 = 0;
    gUnk_03000D38.unk5 = 255;
}
