# Earthworm Jim (GBA, 2001) cross-reference plan

*Earthworm Jim* for GBA (Majesco, 2001) is an earlier game by the same developer as Jazz Jackrabbit
(Game Titan), with audio by Shin'en on an early version of GAX. The two games share gameplay ideas
(the blaster, and the "helicopter" glide: Jazz's ears, Jim's head), so they may share engine code.
EWJ is meant to become **its own decomp project later**. Until then, Jazz is the reference: whatever
code they share can be named from Jazz and carried over.

This is a plan; nothing has been compared yet (no EWJ ROM in the repo or the session).

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
