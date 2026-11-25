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
void sub_083166A4(void)
{
    sub_0831650C();
    sub_0831652C();
    sub_0831628C(1, 1, 27, 4, 5, 200, 0);
    sub_08316178(6, 2, gStr_083DFA4C, 200, 0);
    sub_0831628C(1, 1, 27, 4, 0, 200, 0);
    sub_08316178(6, 2, gStr_083DFA58, 200, 0);
    sub_08316098(8, 0, 0, 400);
    sub_08316308(200, 200, 100, 0);
    sub_08316308(-200, -200, 100, 0);
    sub_083164DC(4);
}

void sub_08316734(void)
{
    sub_08316098(2, 0, 0, 60);
    sub_0831628C(1, 1, 27, 4, 0, 240, 60);
    sub_08316178(6, 2, gStr_083DFA5C, 240, 60);
    sub_0831628C(1, 1, 27, 4, 5, 240, 0);
    sub_08316178(6, 2, gStr_083DFA6C, 120, 0);
    sub_08316178(6, 3, gStr_083DFA80, 120, 0);
    sub_0831628C(1, 1, 27, 4, 0, 240, 0);
    sub_08316178(6, 2, gStr_083DFA94, 240, 0);
    sub_08316098(8, 0, 0, 600);
    sub_08316098(1, 0, 0, 58);
    sub_08316098(8, 0, 0, 2);
}
