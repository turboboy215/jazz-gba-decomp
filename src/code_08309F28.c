#include "global.h"
#include "system.h"
#include "sprite.h"
#include "text.h"
#include "link.h"
#include "obj.h"
#include "resbank.h"
#include "gax.h"
#include "main.h"

void sub_08309F28(void)
{
    u16 codes[1][12];
    u32 i;
    u32 k;
    u8 found;
    u32 j;

    memcpy(codes, gCheatCodes_083DB338, sizeof(codes));
    if (gUnk_03000D12 != 0) {
        {
            u32 n;
            for (n = 1; n <= 11; n++)
                gKeyHistory_03003A1C[n - 1] = gKeyHistory_03003A1C[n];
        }
        gKeyHistory_03003A1C[11] = gUnk_03000D12;
        for (k = 0; k < 1; k++) {
            found = 0;
            j = 0;
            goto check;
        next:
            if (j == 11)
                found = 1;
            j++;
        check:
            if (j <= 11 && gKeyHistory_03003A1C[j] == codes[k][j])
                goto next;
            if (found) {
                GAX_fx(7);
                if (k == 0 && strcmp(gCurMenu_0200756C->title, gStr_083DB350) == 0
                    && gCheatUnlocked_030059BD == 0) {
                    gCurMenu_0200756C->count++;
                    gCheatUnlocked_030059BD = 1;
                }
                for (i = 0; i <= 11; i++)
                    gKeyHistory_03003A1C[i] = 0;
            }
        }
    }
}

u8 sub_08309FF4(void)
{
    return gTournament_030059BC;
}
