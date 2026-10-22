#include "global.h"
#include "map.h"
struct Unk030038CC { u8 unk0[0x18]; int unk18; u32 unk1C; int unk20; };
extern struct Unk030038CC gUnk_030038CC;
u32 sub_08001D0C(u8 c_)
{
    u8 c = c_;
    if (c >= 'A' && c <= 'Z')
        return c - 64;
    if (c >= 'a' && c <= 'z')
        return c - 96;
    if (c >= '0' && c <= '9')
        return c - 21;
    switch (c) {
    case '.':
        return 38;
    case ',':
        return 39;
    case '!':
        return 40;
    case '?':
        return 41;
    case ':':
        return 42;
    case '(':
        return 43;
    case ')':
        return 44;
    case '-':
        return 45;
    case '+':
        return 46;
    case '"':
        return 47;
    case '/':
        return 48;
    case '\'':
        return 49;
    case '%':
        return 50;
    case '@':
        return 51;
    case '>':
        return 52;
    case '<':
        return 53;
    case '*':
        return 54;
    case '#':
        return 55;
    case '[':
        return 56;
    case ']':
        return 57;
    case '^':
        return 58;
    case '`':
        return 59;
    case '|':
        return 60;
    default:
        return 37; /* space / unknown */
    }
}
