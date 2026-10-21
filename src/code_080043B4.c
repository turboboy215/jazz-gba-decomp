#include "global.h"
#include "oam.h"
#include "obj.h"
void sub_080043B4(void)
{
    u32 i = gObjUsedHead_030022EC;
    if (i != 255) {
        sub_080046DC(&gObjs_03001668[i]);
        while (gObjNext_03002268[i] != 255) {
            i = gObjNext_03002268[i];
            sub_080046DC(&gObjs_03001668[i]);
        }
    }
    sub_08003D54();
}
