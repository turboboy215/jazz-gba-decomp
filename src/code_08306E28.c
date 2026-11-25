#include "actor.h"
#include "gax.h"
#include "global.h"
#include "link.h"
#include "main.h"
#include "map.h"
#include "multi_sio.h"
#include "oam.h"
#include "obj.h"
#include "resbank.h"
#include "scene.h"
#include "sprite.h"
#include "system.h"
#include "text.h"
#include "regionb.h"
void sub_08306E28(struct Actor *a)
{
    a->unkE6 = 0;
    a->unkE8 = 0;
    a->unkEC = 0;
    a->unkF0 = 2;
    a->unkF4 = 0;
    a->unkF5 = 0;
    a->unkF6 = 0;
}
