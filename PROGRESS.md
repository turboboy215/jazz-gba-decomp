# Progress log

- 2026-10-15: Sprite_Move (0800068C). code decompiled to C: 32 / 228980 bytes (0.01%); ETA: not enough history yet
- 2026-10-15: Anim_Advance (080006C4). code decompiled to C: 96 / 228980 bytes (0.04%); rate 23040 bytes/hour; ETA 2026-10-16 02:32
- 2026-10-15: GAX_pause (08318FF8). code decompiled to C: 224 / 228980 bytes (0.10%); rate 2916 bytes/hour; ETA 2026-10-18 23:06
- 2026-10-15: GAX_resume (08319078). code decompiled to C: 328 / 228980 bytes (0.14%); rate 4314 bytes/hour; ETA 2026-10-17 21:40
- 2026-10-15: GAX_pause_music (083190E0). code decompiled to C: 344 / 228980 bytes (0.15%); rate 3200 bytes/hour; ETA 2026-10-18 16:09
- 2026-10-15: GAX_resume_music (083190F0). code decompiled to C: 360 / 228980 bytes (0.16%); rate 3271 bytes/hour; ETA 2026-10-18 14:36
- 2026-10-15: GAX_stop (08319214). code decompiled to C: 480 / 228980 bytes (0.21%); rate 4347 bytes/hour; ETA 2026-10-17 21:16

## Asm exceptions (kept as asm on purpose)
- `asm/header.s`: cartridge header (logo incbin)
- `asm/crt0.s`: Frohwein crt0 + ARM IRQ dispatcher (to be disassembled by hand)
- GAX ARM blocks `0831A100-0831A528` (hand-written ARM in the original library)
- BIOS SWI stubs `0831A528-0831A554`, ld veneers `0831AE38-0831AEB4`, libgcc
- `asm/orphan_*.s`: orphaned dead code (excluded from progress)
- 2026-10-20: GAX 3.01: 38/43 functions matching in src/gax/ (agbcc -fprologue-bugfix); 5 in src/gax/nonmatching.c. code decompiled to C: 7192 / 228980 bytes (3.14%); rate 63 b
- 2026-10-21: region A: 132/193 functions matching (docs/region_a.md); 19 in src/nonmatching/region_a.c. code decompiled to C: 11796 / 228980 bytes (5.15%); rate 83 bytes/hour; ETA 2027-02-07 06:25
- 2026-10-22: region A: 149/193 functions matching; rodata split (tools/jtbl.py); libmultiboot + MultiSio identified; 31 near misses in src/nonmatching/region_a.c. code decompiled to C: 15468 / 228980 bytes (6.76%); rate 95 bytes/hour; ETA 2027-01-24
- 2026-10-24: region A complete in C: 151/190 functions matching (Link_Session, Link_HandshakeIntr), 38 near misses; 080053A0-08012974 reclassified as the multiboot client image (excluded, total 228100). code decompiled to C: 16576 / 228100 bytes (7.27%); rate 77 bytes/hour; ETA 2027-02-15 12:42
- 2026-10-25: region A: 156/190 functions matching (Sio32MultiLoadMain, Bg_UpdateScroll, ResBank_GetCell, Map_SnapToSlope, Map_OnSlope), 33 near misses. code decompiled to C: 18300 / 228100 bytes (8.02%); rate 78 bytes/hour; ETA 2027-02-14
- 2026-10-26: ResBank_SetSlot (08001A48). code decompiled to C: 18336 / 228100 bytes (8.04%); rate 71 bytes/hour; ETA 2027-02-26 13:17
- 2026-10-26: MultiSioSendDataSet (080039F0). code decompiled to C: 18508 / 228100 bytes (8.11%); rate 72 bytes/hour; ETA 2027-02-25 09:23
- 2026-10-26: Oam_Flush (08003D54). code decompiled to C: 18616 / 228100 bytes (8.16%); rate 72 bytes/hour; ETA 2027-02-24 15:26
- 2026-10-26: Map_HitCeiling (08000900). code decompiled to C: 18736 / 228100 bytes (8.21%); rate 72 bytes/hour; ETA 2027-02-23 19:28
- 2026-10-26: Map_HitWall (08000990). code decompiled to C: 18876 / 228100 bytes (8.28%); rate 73 bytes/hour; ETA 2027-02-22 20:12
- 2026-10-26: Text_PutChar (0800488C). code decompiled to C: 19012 / 228100 bytes (8.33%); rate 74 bytes/hour; ETA 2027-02-21 22:32
