#include "gax.h"

/* GAX_pause: mute Direct Sound outputs and stop the mixing DMA(s). */
void sub_08318FF8(void)
{
    if (GAX_ram->irq_state == 0)
        return;
    GAX_ram->irq_state = 0;
    if (GAX_ram->buf_header_dma2)
        REG_SOUNDCNT_H &= ~(SOUND_A_LEFT_OUTPUT | SOUND_A_RIGHT_OUTPUT | SOUND_B_LEFT_OUTPUT | SOUND_B_RIGHT_OUTPUT);
    else
        REG_SOUNDCNT_H &= ~(SOUND_A_LEFT_OUTPUT | SOUND_A_RIGHT_OUTPUT);
    REG_DMA1CNT_H = DMA_ENABLE | DMA_DEST_FIXED | DMA_REPEAT | DMA_32BIT;
    GAX_DMA_DELAY();
    REG_DMA1CNT_H = DMA_DEST_FIXED | DMA_REPEAT | DMA_32BIT;
    if (GAX_ram->buf_header_dma2) {
        REG_DMA2CNT_H = DMA_ENABLE | DMA_DEST_FIXED | DMA_REPEAT | DMA_32BIT;
        GAX_DMA_DELAY();
        REG_DMA2CNT_H = DMA_DEST_FIXED | DMA_REPEAT | DMA_32BIT;
    }
}
