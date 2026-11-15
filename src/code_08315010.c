#include "global.h"
#include "system.h"
#include "gax.h"
#include "main.h"

void sub_08315010(u32 n)
{
    u32 i;

    for (i = 0; i < n; i++)
        ;
}

struct SaveSlot *sub_08315020(u32 i)
{
    return &gSaveSlots_030044E4[i];
}

void sub_0831502C(u32 i)
{
    struct SaveSlot *s = &gSaveSlots_030044E4[i];

    s->brightness = 0;
    s->fxVolume = 10;
    s->musicVolume = 10;
    s->unk3 = 0;
    s->unk4 = 1;
    s->unk6 = 0;
    s->unkF = 3;
    s->unk10 = 0;
    s->unk8[0] = 0;
    s->unk8[1] = 0;
    s->unk8[2] = 0;
    s->unk8[3] = 0;
    s->unk8[4] = 0;
    s->unk8[5] = 0;
    s->unkE = 0;
    s->unk11 = 0;
    s->unk12[0] = 0;
    s->unk12[1] = 0;
    s->unk12[2] = 0;
    s->unk12[3] = 0;
    s->unk12[4] = 0;
}

void sub_0831506C(u32 i, u8 v)
{
    struct SaveSlot *s = &gSaveSlots_030044E4[i];
    u32 j;
    u8 *d, *src;

    s->brightness = gBrightness_02007567;
    s->musicVolume = gMusicVolume_030059B4;
    s->fxVolume = gFxVolume_030059B8;
    s->unk4 = gUnk_02007566;
    s->unk3 = gUnk_02007561;
    s->unk6 = gUnk_030058F0;
    s->unkF = gUnk_0300250C[92];
    s->unk10 = v;
    for (j = 0, d = s->unk8, src = gUnk_030034E4; j <= 5; j++) {
        u8 c = *src++;
        *d++ = c;
    }
    s->unkE = gUnk_030028EC;
    s->unk11 = gUnk_030034DC;
    s->unk12[0] = sub_082FB834(0, 1);
    s->unk12[1] = sub_082FB834(0, 2);
    s->unk12[2] = sub_082FB834(0, 3);
    s->unk12[3] = sub_082FB834(0, 4);
    s->unk12[4] = sub_082FB834(0, 5);
}

u8 sub_08315128(void)
{
    u32 i;
    const char *m;
    u8 *b;

    for (i = 0, b = gSaveBuf_030044DC, m = gSaveMagic_083DF9BC; i <= 7; i++)
    {
        char c = *m++;
        if (c != *b++)
            return 0;
    }
    return 1;
}
