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
* Menu item callbacks (2026-11-16, all matching): `Menu_StartNewGame` (0830AE38), `Menu_ChangeLevel` and
  `Menu_ChangeCharacter` (LEVEL SELECT, 0830C034-0830C5C0), and the settings/link items in
  `src/code_0830D378.c` (0830D378-0830E93C): multi-pak and single-pak level, play/game mode, control
  configuration, max frags, brightness, difficulty, music and SFX volume, radar, `Menu_Defaults`, and the
  7 item toggles (Machine Gun ... Carrot Grenades).
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

## Menu item callbacks (how they are written)

* An item callback reads `gUnk_03000D12` (new key presses): `& 0x20` (Left) decrements the setting,
  `& 0x11` (Right or A; LEVEL SELECT uses `& 0x10`, A starts the level) increments it, each with
  `GAX_fx(4)`; then `Text_ClearRect(item.x, item.y, 25, 0)` and a `switch` on the value whose cases are
  `strcpy(gCurMenu->items[gCurMenu->cursor].label, " Literal text ")`. agbcc inlines the strcpy of a
  literal as a word copy, cross-jumped into one tail.
* **The strings must be literals in the C** (the inlined copy needs the length), so these files carry their
  own `.rodata` (splits.txt kind `rodata`, `//@ ADDR Name rodata=ADDR` in batch files). The ROM's rodata
  order is each function's strings followed by its jump table, in text order, and identical literals are
  shared (`Prof. Lapen` twice in `Menu_ChangeLevel`; `Menu_Defaults` reuses the Brightness/Difficulty/
  volume strings): the menu code is one translation unit, probably from `08309F28` on. A function that
  reuses an earlier function's literals only matches inside the same C file (add it to the file by hand
  and run `make compare`; a standalone check reports RODATA MISMATCH). add_funcs.py makes one file per
  function when rodata is involved: merge neighbours by hand (edit splits.txt, `tools/split.py`).
* These needed the new compiler flags `-fcprop-const-fix -fcprop-single-set` (`docs/STRATEGY.md`): the
  0x1B0 offset of `cursor` is rematerialised in every case.
* Settings variables: `02007558` level-select level (0-23), `02007559` character (0 Jazz, 1 Zoe),
  `0200755D` multi-pak level (0-10), `0200755E` play mode, `0200755F` single-pak level (0-3), `02007560`
  game mode (0 Battle, 1 Capture The Flag), `02007561` control configuration (0-3; 1 swaps A/B, 2 swaps
  L/R, 3 both, see `Menu_StartNewGame`), `02007564` max frags (5-25), `02007566` difficulty (0-3),
  `02007567` brightness (0-7), `02007569` radar, `02007578[7]` item on/off flags, `030059B4`/`030059B8`
  music/SFX volume (0-11). `Save_GetExtra()` bytes 0-4 unlock the "#"-marked link levels.
* Still asm: `MainMenu` (near miss), `0830AF0C`, `0830B318`, `0830BB74` (one function up to `0830BFAC`:
  link start, "PLEASE WAIT" / "LINK ERROR" screens, receives the settings packet; the starts `0830BD38`,
  `0830BE44`, `0830BF60` in functions.csv are bogus), the slot drawers `0830C5C0` / `0830CD64`, the three
  link result screens `0830E93C` / `0830ECF4` / `0830F0AC` (940 bytes each, near-identical), `0830F464`,
  `0830F5C8`; `0830F78C` on is another subsystem (BG tile cells, a text box at `0830F840`).

## Matching notes (region B so far)

* Most of these matched on the first or second try with plain C: the region A flags carry over.
* `s16` loop counters counting down (`for (n = 25; n > 0; n--)`) give the ROM's `lsls/asrs` + `lsls/lsrs`.
* A 4-byte struct of u8 fields assigned one by one (`struct SlotCfg` for `ResBank_SetSlot`) gives the
  ROM's `and/orr` mask chain while it stays in a register.
* A loop whose symbol address is reloaded every iteration is a hand-written goto loop
  (`Menu_CheckCheats`), as in region A.
* Variable order matters for stack slots / init order: `u16 pressed = 0, held = 0;` (`Boot_LogoScreens`).
