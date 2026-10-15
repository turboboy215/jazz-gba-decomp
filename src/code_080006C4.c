#include "global.h"
struct Anim { u8 pad[10]; u16 frame; u32 tick; };
u32 sub_080007F0(struct Anim *);
u32 sub_08000814(struct Anim *);
u8 sub_080006C4(struct Anim *a)
{
    u8 r;
    a->tick++;
    if (a->tick >= sub_080007F0(a)) { a->tick = 0; a->frame++; }
    if (a->frame <= sub_08000814(a)) r = 1;
    else { a->frame = sub_08000814(a); r = 0; }
    return r;
}
