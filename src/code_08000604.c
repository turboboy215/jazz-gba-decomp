#include "global.h"
#include "sprite.h"
void sub_08000604(struct Sprite *s) { s->visible = 1; }

void sub_0800060C(struct Sprite *s) { s->visible = 0; }

void *sub_08000614(struct Sprite *s, int layer) { return sub_080007CC(s->bank, s->anim, s->frame, layer); }

struct AnimCel *sub_0800062C(struct Sprite *s, int layer) { return sub_080007AC(s->bank, s->anim, s->frame, layer); }

struct Anim *sub_08000644(struct Sprite *s) { return sub_0800079C(s->bank, s->anim); }

void sub_08000654(struct Sprite *s) { s->tick = 0; }

void sub_0800065C(struct Sprite *s, int frame)
{
    if ((u32)frame > sub_08000814(s))
        frame = sub_08000814(s);
    s->frame = frame;
    s->tick = 0;
}

void sub_08000680(struct Sprite *s, int anim) { s->anim = anim; }

void sub_08000684(struct Sprite *s, int x, int y, int z) { s->x = x; s->y = y; s->z = z; }
