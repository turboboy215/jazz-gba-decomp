# Region B (game code) notes

Region B is `082E8470-0831AEB4`. Work started 2026-11-15 from `AgbMain`, following the boot path
(`docs/boot_sequence.md`). C files are still `src/code_<addr>.c` (add_funcs.py names them); prototypes and
globals are in `include/main.h`. Near misses: `src/nonmatching/region_b.c`.

## What is in C (2026-11-15)

* Boot: `AgbMain`, `Boot_InitHardware`, `Boot_LegalScreen`, `Boot_LogoScreens`, `Volume_ScaleMusic/Fx`.
* Title and menus (`0830A000-0830C034`): `Title_Init`, `Title_IntroAnim`, `Title_SkipIntro`,
  `Title_ScrollIn/Out`, `Title_SkipOut`, `Menu_SlideIn/Out`, `Link_WaitPlayers`, `Menu_CheckCheats`,
  `IsTournament`, and every `Menu_Open*` page switch.
* Save data (`08315010-083152C0`): `Save_Delay`, `Save_GetSlot`, `Save_ResetSlot`, `Save_StoreSlot`,
  `Save_CheckMagic`, `Save_Write`, `Save_Read`, `Save_WriteExtra`, `Save_GetExtra`.
* Near misses: `MainMenu` (23 ops), `Save_Init` and `Save_Format` (4 ops each, same loop).

## Data structures found

* **Menus.** `struct Menu` (0x1B4 bytes): count, title (`char[31]`, also the page's identity, compared
  with strcmp), 10 `struct MenuItem` (label, x, y, key mask, callback; 0x28 each), cursor (+0x1B0),
  "changeable" (+0x1B1, shows "< Change >"). The 14 pages are separate EWRAM globals back to back from
  `02005C00` (the ROM loads each address from the pool, so they are not one array): 0 MAIN MENU, 1 LEVEL
  SELECT, 2 SELECT DIFFICULTY, 3 TOURNAMENT, 4 MULTI-PAK, 5 SINGLE-PAK, 6 NEW GAME, 7 CONTINUE, 8 MULTI-PAK
  SETTINGS, 9 SINGLE-PAK SETTINGS, 10 SETTINGS, 11 LEVEL SETTINGS, 12 and 13 not yet known. `gCurMenu`
  (`0200756C`) / `gPrevMenu` (`02007570`). Who fills the pages at run time is not found yet.
* **Front-end sprites** (`struct Sprite`, 0x64 bytes) back to back from `02007580`: menu cursor, one
  sprite at `020075E4`, the 3 save-file sprites (`02007648`), the 4 difficulty sprites (`02007774`), the
  title logo (`02007904`).
* **Cheat code** (`083DB338`, one 12-key code; `Menu_CheckCheats`): Left, Down, L, L, Up, Down, R,
  Right, Up, Right, L, R. On the MAIN MENU it adds one item to the page (`count++`, once:
  `030059BD`), probably LEVEL SELECT (to be confirmed on hardware/emulator).
* **Save.** A 0x200-byte image (`030044DC`) of the 4 Kbit EEPROM, read/written as 64 blocks of 8 bytes
  with a 1000-iteration busy wait between blocks: "turtles" magic (8 bytes), then 4 `struct SaveSlot`
  (0x20 bytes: brightness, fx/music volume, ... ; see `include/main.h`). Blocks 62-63 also get the 16
  bytes at `030046CC` (`Save_WriteExtra`). EEPROM driver: `0831715C`, `083171C4`, `08317324` (read),
  `083173DC` (write).
* `0300398C` is used as a `struct ResBank` by the boot/title code (`gBgBank_0300398C`) and as a
  `struct Map` by map.h (`gUnk_0300398C`): same object, two views; unify when the struct is known.
* `functions.csv` has a bogus start at `0830BF60` (inside `0830BE44`): skip it.

## Matching notes (region B so far)

* Most of these matched on the first or second try with plain C: the region A flags carry over.
* `s16` loop counters counting down (`for (n = 25; n > 0; n--)`) give the ROM's `lsls/asrs` + `lsls/lsrs`.
* A 4-byte struct of u8 fields assigned one by one (`struct SlotCfg` for `ResBank_SetSlot`) gives the
  ROM's `and/orr` mask chain while it stays in a register.
* A loop whose symbol address is reloaded every iteration is a hand-written goto loop
  (`Menu_CheckCheats`), as in region A.
* Variable order matters for stack slots / init order: `u16 pressed = 0, held = 0;` (`Boot_LogoScreens`).
