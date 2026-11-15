#include "global.h"
#include "system.h"
#include "gax.h"
#include "main.h"

void sub_08312BF8(void)
{
    __main();
    sub_083126F0();
    sub_08315158();
    gUnk_03003F10 = 1;
    GAX2_new(&gGaxParams_030046E0);
    gGaxParams_030046E0.debug = 0;
    gGaxParams_030046E0.mixing_rate = 0x5221;
    gGaxParams_030046E0.song_data = gSong_0835F2E4;
    gGaxParams_030046E0.fx_data = gGaxFxData_083D1C5C;
    gGaxParams_030046E0.workmem = gGaxWorkmem_0300471C;
    gGaxParams_030046E0.workmem_size = 0x1000;
    GAX2_init(&gGaxParams_030046E0);
    GAX_set_music_volume(-1, sub_083167F8(gMusicVolume_030059B4));
    GAX_set_fx_volume(-1, sub_08316810(gFxVolume_030059B8));
    sub_08001FC8(0, VBlankIntr_IWRAM_0300087D);
    sub_08312730();
    sub_08312864();
    sub_0830A638();
    sub_0830A06C();
    sub_0830A3B4();
    sub_0830AAA8();
    for (;;)
        ;
}
