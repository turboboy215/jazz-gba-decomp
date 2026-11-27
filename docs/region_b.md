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
* 2026-11-17: `Link_PostMatch` (0830B318, single-pak rematch / new level screen, own file), and the save-file
  items `Menu_NewGameSlot` (0830C5C0, "OVERWRITE EXISTING GAME?") and `Menu_ContinueSlot` (0830CD64, loads a
  file's settings and starts its level). **`0830C034-0830E93C` is now one C file (`code_0830C034.c`) with
  one rodata block `083DB59C-083DC6A0`** and it still matches: it is one translation unit in the original
  (the slot drawers share their "Stage N Level M" literals; the next function's "%d" sits at 083DC6A0).
* Near misses: `MainMenu` (23 ops), `Save_Init` and `Save_Format` (4 ops each, same loop),
  `Link_MultiPakStart` (0830AF0C, 43), `Link_Results2` (0830E93C, 45; frag-bar loop matched 2026-11-19, the sort's swap pointer is what's open) (`Link_ClientStart` 0830BB74 matched 2026-11-18);
  what each needs is in its comment in `src/nonmatching/region_b.c`.

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
  bytes at `030046CC` (`Save_WriteExtra`). EEPROM driver: Nintendo's AgbEEPROM, the timer-interrupt
  revision, `0831715C-08317518`, now all in C (`src/code_0831715C.c`, `include/eeprom.h`, flavour `o1`:
  old_agbcc -O1). Close to zeldaret/tmc `src/eeprom.c` (V124), but the write timeout uses a timer IRQ
  (`EepromTimerIntr` 083171A0, only reached through a pointer) instead of VCOUNT.
* (2026-11-26) **Code families.** Much of region B is the same function repeated per object file or per
  level: `tools/cluster.py` lists the groups. Solved so far: the per-TU static LCG (seed from VCOUNT,
  `x * 0x19660D + 0x3C6EF35F` on a `long long`, one seed per TU at `030058AC + 8n`: each copy starts an
  object TU), "free the shot when its animation ends" (18), Actor `unk5A == 0` (9), level-warp fades (12+3),
  actor inits (5), and the level screen setups (`tools/lvlgen.py`, all 18). `struct Shot` (0x98 bytes,
  pool of 20 at `030028FC`) is now filled in (`actor.h`), with `Shot_Alloc/Free/FreeAll/UpdateAll`.
  `gUnk_02004C80` is a second actor pool of 16.
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
* `Link_ClientStart` (0830BB74) matched 2026-11-18 in `src/code_0830B634.c` (one function up to `0830BFAC`;
  the starts `0830BD38`, `0830BE44`, `0830BF60` in functions.csv are bogus, check with `END=0830BFAC`).
* Still asm: the near misses `MainMenu`, `Link_MultiPakStart` (0830AF0C), `Link_Results2` (0830E93C) and its 3/4-player copies
  `0830ECF4` / `0830F0AC` (same code, 3 and 4 bars; do them once 0830E93C matches), `0830F464`, `0830F5C8`;
  `0830F78C` on is another subsystem (BG tile cells, a text box at `0830F840`).

## The link match flow (2026-11-17)

* Player 1 (`Link_MultiPakStart` 0830AF0C for multi-pak, `Link_PostMatch` 0830B318 for single-pak) refuses a
  locked "#" level with `GAX_fx(6)` (`Save_GetExtra()` byte per level), applies the control configuration,
  then exchanges `gLinkSend.data[] = {222, level, max frags, items bitmask (multi-pak) or player count,
  play/game mode, radar}` until the partners echo 222 (multi-pak sends it 5 more times). Then, in a loop:
  fade, `sub_08313D78(level, frags)` (plays the match), the result screen by player count
  (`Link_GetUnk4()` 2/3/4 -> 0830E93C / 0830ECF4 / 0830F0AC), then "Press Start to Play A Rematch" /
  "Press % to Select a New Level" blinking (bit 4 of a frame counter) while sending 120. Start (keys & 8)
  resends the settings packet and loops; B sends 127 until echoed, then rebuilds the title and returns to the
  MULTI-PAK / SINGLE-PAK menu.
* Players 2-4 (`Link_ClientStart` 0830BB74, TOURNAMENT on a non-master GBA) open the session
  (`Link_Session(3)` with `Link_WaitPlayers` as the wait callback), show "PLEASE WAIT" until player 1 sends
  120 and then 222 (timeouts 120 / 60 frames, or `gUnk_030058A0 > 120`, end in the LINK ERROR screen:
  "PLEASE TURN OFF ALL SYSTEMS AND TRY AGAIN", then a dead loop), take frags, play mode, item bits and radar
  from the packet, and in the result loop show "PLEASE WAIT WHILE PLAYER 1 SELECTS A NEW LEVEL" once 127
  arrives.
* Result screen (`Link_Results2`): BG `gRes_08045A30` + tiles `08229930`, one frag-bar sprite per player
  from `gAnims_0810B0D0` with frame `frags / (maxFrags / 5)` (+6 in game mode 1, 7 / 1 for a non-zero
  count below one step), players sorted by frags (bubble sort of `struct FragPair {frags, player}`), each
  bar revealed after 90 frames and the count printed with "%d" at column `11 * player + 9`, row 19.
  `gFrags_03005A0C[4]` holds the frags.

## Matching notes (region B so far)

* (2026-11-26) Separate counters per loop (`i`, `j`, `k`) when one function has several loops: one shared
  `i` lives across the later calls and moves to a callee-saved register (Level_ResetFlags 083168BC).
* `a1 = f(a0, a1, a2); ... return a1;` (reuse the parameter) when the ROM keeps the call result in r1 and
  copies it around (Math_AddClamped 083170B8).
* A search loop with an entry test written as `for (...; i < n; ...) { if (stop) return; ... }`, not
  `break` or `&& !stop` in the condition (08316E18).

* Most of these matched on the first or second try with plain C: the region A flags carry over.
* `s16` loop counters counting down (`for (n = 25; n > 0; n--)`) give the ROM's `lsls/asrs` + `lsls/lsrs`.
* A 4-byte struct of u8 fields assigned one by one (`struct SlotCfg` for `ResBank_SetSlot`) gives the
  ROM's `and/orr` mask chain while it stays in a register.
* A loop whose symbol address is reloaded every iteration is a hand-written goto loop
  (`Menu_CheckCheats`), as in region A.
* Variable order matters for stack slots / init order: `u16 pressed = 0, held = 0;` (`Boot_LogoScreens`).
* (2026-11-17) The link screens' main loop is `u8 again = 1; ... if (again) do { ... } while (again);`
  with `again = 0` on the way out (`Link_PostMatch`): the ROM tests it at the top (`mov r0, r9; cmp`) and
  keeps the loop invariants after that test. `while (again)` puts them before it.
* Callers of `Link_GetUnk4` (u8 in link_2.c), `Link_Session` and `sub_0830A000` don't truncate the result:
  `LINK_GETUNK4()`, `LINK_SESSION()`, `GAME_MODE()` in main.h cast the function to a u32 one. The switch on
  the player count then compares unsigned (`bhi`).
* A two-case switch whose compares go 0 then 1 but whose bodies are laid out 1 then 0 is
  `switch (x) { case 1: ...; case 0: ...; }` (`Menu_NewGameSlot`'s YES/NO cursor).
* `if (keys & 8) { } else if (keys & 2)` (two tests, reload of the keys) vs `!(keys & 8) && (keys & 2)`
  (one combined test): the ROM has the first.
* A loop that re-reads a global through a register copy of its address (`adds r2, r0, #0`, then
  `ldrh r2, [r2]` at the bottom) has a local pointer assigned inside the body, after the value is loaded:
  `v = gLinkRecv[0].data[0]; p = gLinkRecv; if (v != 120 && v != 222) n++; ... } while (p->data[0] != 222);`
  (`Link_ClientStart`, T433).
* (2026-11-18) Unpacking a bit mask into `u8` flags: item 0 as `R & 1`, items 1-7 through a `u16` temp
  (`t = R >> k; g[k] = t & 1;`), so cse keeps item 0's constant apart and loop.c hoists the others' (T432).
  `Link_ClientStart` also needed a `do { } while (0)` around `gMaxFrags = ...` to lift `gLinkRecv`'s
  priority just above `sel` (0.2133 vs 0.2143 without it, `tools/prio.sh`); T412.
