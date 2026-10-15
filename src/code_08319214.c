#include "gax.h"

/* GAX_stop: stop playback, sound hardware, mixing DMA(s) and sample-rate timer(s). */
void sub_08319214(void)
{
    GAX_player *player = GAX_ram->replayer[GAX_ram->mix_buffer_id];

    player->is_playing = FALSE;
    GAX_ram->irq_state = 0;
    REG_SOUNDCNT_X = 0;
    REG_DMA1CNT_H = DMA_ENABLE | DMA_DEST_FIXED | DMA_REPEAT | DMA_32BIT;
    GAX_DMA_DELAY();
    REG_DMA1CNT_H = DMA_DEST_FIXED | DMA_REPEAT | DMA_32BIT;
    if (GAX_ram->buf_header_dma2 != NULL) {
        REG_DMA2CNT_H = DMA_ENABLE | DMA_DEST_FIXED | DMA_REPEAT | DMA_32BIT;
        GAX_DMA_DELAY();
        REG_DMA2CNT_H = DMA_DEST_FIXED | DMA_REPEAT | DMA_32BIT;
    }
    REG_TM0CNT = 0;
    if (GAX_ram->buf_header_dma2 != NULL)
        REG_TM1CNT = 0;
}
