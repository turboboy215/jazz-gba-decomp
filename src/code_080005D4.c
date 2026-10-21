#include "global.h"
#include "sprite.h"
#include "oam.h"
#include "obj.h"
#include "text.h"
void sub_0831A52C(const void *src, void *dst, u32 ctrl); /* CpuSet */
int sub_0831A68C(const char *s); /* strlen */
extern const u8 gUnk_083E0648[]; /* newlib _ctype_ */
#define CTYPE(c) ((gUnk_083E0648 + 1)[(u8)(c)])
extern u16 gUnk_02002000[];
extern u16 gUnk_02002800[];
void sub_080005D4(struct Sprite *s)
{
    u32 i;
    for (i = 0; i < SPRITE_MAX_LAYERS; i++) {
        if (s->objs[i])
            sub_08004508((struct Obj **)&s->objs[i]);
        s->objs[i] = NULL;
    }
}
