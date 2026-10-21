#include "global.h"
#include "system.h"
#include "link.h"
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
