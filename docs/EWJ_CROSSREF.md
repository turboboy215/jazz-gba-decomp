# Earthworm Jim (GBA, 2001) cross-reference plan

*Earthworm Jim* for GBA (Majesco, 2001) is an earlier game by the same developer as Jazz Jackrabbit
(Game Titan), with audio by Shin'en on an early version of GAX. The two games share gameplay ideas
(the blaster, and the "helicopter" glide: Jazz's ears, Jim's head), so they may share engine code.
EWJ is meant to become **its own decomp project later**. Until then, Jazz is the reference: whatever
code they share can be named from Jazz and carried over.

First comparison done 2026-10-20 (see "Results"). The ROM is kept outside git, next to the Jazz ROM:
`Earthworm Jim (U).gba`, header `EWJ` / `AEJE`, 8 MiB, SHA1 `8c3148c1c863a1e31b6f4c380c9390dc12fae9ac`.

## What is likely to be shared

| Part | Why | How to check |
|---|---|---|
| GAX sound engine | Shin'en audio in both. EWJ's is an early version (likely **GAX 2.x**, the generation of Crash XS's 2.01D), so most functions will differ in code but not in purpose | version string search (`"GAX"`, `"Shin'en"`); `shinen-gax-python/find_gax.py` signatures |
| libgcc / newlib / BIOS stubs | same toolchain (agbcc/old_agbcc + libgcc) | `tools/xref_rom.py` will match these byte for byte |
| Region A engine library (`080002E0-08005710`) | small sprite/animation accessors (`sub_0800068C` moves a sprite, `sub_080006C4` steps an animation) look like an in-house library carried between projects | `tools/xref_rom.py` |
| **The orphaned block** `08005710-08012974` | an old game build linked into Jazz but never called, with its own stale GAX 3.01 copy. Worth testing whether any of it is EWJ code | `tools/xref_rom.py` hits in that range, and string comparisons (`docs/strings.tsv`) |
| Player physics (blaster, hover/glide) | similar mechanics | only after the region B game code is named in Jazz; compare by structure, not bytes |

## Tool

`tools/xref_rom.py OTHER.gba [--min 24] [--json out.json]` turns every live Jazz Thumb function into
a byte pattern with the address-dependent parts masked (`bl` offsets and literal-pool words) and
searches the other ROM for it. Run against Jazz itself it finds 1,109 functions, including the
orphaned GAX copy at `0800F23C` next to the live one at `08317518`, so the masking works across
relinked copies.

Steps once the EWJ ROM is available (keep it outside git, like `baserom.gba`):

```sh
python3 tools/xref_rom.py "Earthworm Jim (U).gba" --json ewj_hits.json > ewj_hits.txt
```

1. Record the hit list in this doc: which Jazz names matched and where they sit in EWJ.
2. Runs of consecutive hits mark shared object files; their EWJ order gives the old link order.
3. For GAX, also run `find_gax.py` on EWJ to get the version, and compare it with Crash XS's 2.01D
   (a matching decomp exists there).
4. Functions that match only after masking more (e.g. different struct offsets) need a looser
   comparison: a later version of the tool can mask immediate offsets in `ldr/str` and compare
   instruction mnemonics only.

## Notes

* Treat EWJ as a separate project: separate repo, its own baserom/SHA1 and splits. Code that turns
  out to be identical can be copied from this repo's `src/` with its names.
* The user's own observations about EWJ (e.g. which mechanics or sounds feel shared) are ground truth;
  add them here as they come.

## Results (2026-10-20)

* **EWJ's sound engine is `GAX Sound Engine v1.99d (Mar 30 2001)`** (string at `083C9BF0`). That is the
  generation just before Crash XS's 2.01D, so Crash XS (not Jazz's 3.01) is the reference for EWJ's GAX.
* **Exact match** (`tools/xref_rom.py`, masked bl/literal pools): only libgcc —
  `__divsi3` → `0807CBF4`, `__udivsi3` → `0807D1A4`, `__umodsi3` → `0807D21C`, `_call_via` thunk
  `0831A7F8` → `0807CBCC`. With `--orphan`, the orphaned block's own libgcc copy matches the same
  addresses and nothing else does, so the orphaned block is **not** EWJ code.
* **Loose match** (instruction classes only, registers and immediates ignored, ≥24 instructions): again
  only libgcc/newlib (`memcpy` → `0807D2DC`, `__muldi3` → `0807CD5C`).
* **Strings**: apart from padding runs and Shin'en's credit, the two ROMs share only part of a sine
  table. No shared engine text.
* Code style differs too: EWJ has no ARM-mode functions with `stmfd`, Jazz has a few.

**Conclusion:** at the binary level Jazz shares no engine code with EWJ; the matching mechanics were
re-implemented, not carried over. For the future EWJ project, the useful carry-overs are the toolchain
setup, the libgcc addresses above, and Crash XS's GAX 2.01D decomp for its sound engine. Shared
*structure* (e.g. how the blaster or the glide works) can still be compared by hand once both games'
player code is named.
