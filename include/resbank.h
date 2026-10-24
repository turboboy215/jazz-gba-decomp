#ifndef GUARD_RESBANK_H
#define GUARD_RESBANK_H

#include "global.h"

/* Level resource bank. data points at a header of u32 offsets (relative to data) to
 * tables; each table is { u32 count?; u32 ofs[] } with entries again relative to data. */
struct ResHeader {
    u32 unk0;
    u32 tbl4;    /* palettes */
    u32 tbl8;
    u32 tbl12;
    u32 tbl16;
    u32 tbl20;
    u32 tbl24;
    u32 tbl28;
};

struct ResTable {
    u32 count;     /* u16 count at +2? (08001B7C reads the halfword at +2) */
    u32 ofs[1];    /* entry offsets, relative to the bank data */
};

#define RES_TABLE(d, ofs) ((struct ResTable *)((u8 *)(d) + (ofs)))
/* entry i of table field tbl; d must be a struct ResHeader * local */
#define RES_ENTRY(d, tbl, i) ((u8 *)(d) + ((u32 *)((u8 *)(d) + (d)->tbl))[(i) + 1])


/* level map layer (ResBank ptrs[i]): w x h tiles, then cells */
struct CellMap { u32 w; u32 h; u8 size; u8 pad[3]; u8 data[1]; };

struct ResBank {
    struct ResHeader *data;   /* +0x00 */
    struct CellMap *ptrs[4];  /* +0x04 map layers */
    u32 unk14[4];             /* +0x14 tileset per layer (struct TilesetHdr *) */
    u32 unk24[4];             /* +0x24 first glyph tile of the tileset per layer */
    s32 unk34[8];             /* +0x34 BG scroll register value per layer {x, y} (0..255) */
    s32 unk54[8];             /* +0x54 world scroll position per layer {x, y} */
    u8 slots[4][4];           /* +0x74 */
    void *unk84;              /* +0x84 */
    void *unk88;              /* +0x88 */
};

void sub_08001280(struct ResBank *b, struct ResHeader *data);
void sub_080012C0(struct ResBank *b, int i);
void *sub_080012E4(struct ResBank *b, int i);
void sub_080012F4(struct ResBank *b, u8 slot, u8 i);
void *sub_08001A30(struct ResBank *b, int i);
u8 *sub_08001A40(struct ResBank *b, int i);
void sub_08001A48(struct ResBank *b, int i, u8 *src);
void sub_08001A6C(void);
u32 *sub_08001B40(struct ResBank *b, int i);
void *sub_08001B50(struct ResBank *b, int i, int j);
void *sub_08001B6C(struct ResBank *b, int i);
u16 sub_08001B7C(struct ResBank *b);
u16 sub_08001B88(struct ResBank *b);
void *sub_08001B94(struct ResBank *b);
void *sub_08001BA0(struct ResBank *b);
u32 sub_08001BCC(struct ResBank *b, u32 x, u32 y);
u8 sub_08001BAC(struct ResBank *b, u32 x, u32 y);
u16 sub_08001BBC(struct ResBank *b, u32 x, u32 y);


/* global flags byte at 0x03005858 and screen brightness 0..7 at 0x03005859 */
extern u8 gUnk_03005858;
extern u8 gUnk_03005859;
extern const u8 gUnk_083D2FD8[]; /* [8 brightness levels][32] component remap */
void sub_08001DBC(u8 v);
u32 sub_08001DC8(int bit, u8 v);
u32 sub_08001DF4(int bit);
u8 sub_08001E30(int d);
void sub_08001E4C(int d);
void sub_08001E60(u32 v);
void sub_08001E70(u16 *pal, int idx, u16 color);

/* IWRAM veneers (0831AE38-0831AEA8): BG map streaming. pos = column (0..30) or row (0..20) */
void sub_0831AE68(struct ResBank *b, int layer, int row);  /* new map row after the scroll moved */
void sub_0831AE78(struct ResBank *b, int layer, int row);  /* row before the move */
void sub_0831AE88(struct ResBank *b, int layer, int col);  /* new map column */
void sub_0831AE98(struct ResBank *b, int layer, int col);  /* column before the move */

#endif
