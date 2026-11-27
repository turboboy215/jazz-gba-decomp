#include "global.h"
#include "main.h"
#include "regionb.h"
struct QueueA { u8 active; u8 pad[3]; s32 unk4; s32 unk8; s32 unkC; s32 unk10; s32 unk14; s32 unk18; };
struct QueueB { u8 active; u8 pad[3]; s32 unk4; s32 unk8; s32 unkC; s32 unk10; s32 unk14; s32 unk18; };
extern struct QueueA gQueueA_02007A3C[10];
extern u32 gQueueACount_0200861C;
extern struct QueueB gQueueB_02007B54[20];
extern u32 gQueueBCount_02008620;
u32 sub_08316098(s32 a0, s32 a1, s32 a2, s32 a3)
{
    u32 n = gQueueACount_0200861C;
    if (n > 9)
        return 0;
    gQueueACount_0200861C = n + 1;
    gQueueA_02007A3C[n].unk8 = a0;
    gQueueA_02007A3C[n].unkC = a3;
    gQueueA_02007A3C[n].unk10 = a3;
    gQueueA_02007A3C[n].unk14 = a1;
    gQueueA_02007A3C[n].unk18 = a2;
    if (n + 1 == 1)
        gQueueA_02007A3C[n].active = n + 1;
    return 1;
}
