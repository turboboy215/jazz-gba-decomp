#include "global.h"
#include "sprite.h"

void sub_0800068C(struct Sprite *s, int dx, int dy, s8 dz) /* Sprite_Move */
{
    s->x += dx;
    s->y += dy;
    s->z += dz;
}

void sub_080006AC(struct Sprite *s)
{
    sub_08000654(s);
    s->frame = sub_08000838(s);
}
