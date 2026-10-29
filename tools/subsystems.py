"""Region A subsystems: which src/ file name a C function at a given address goes into.

src/<sub>.c, or src/<sub>_<n>.c when near misses (still asm) split a subsystem into several
contiguous parts. tools/add_funcs.py uses this to name new files and to decide which files a
new match may join. Outside region A, files keep the generic code_<addr> name.
"""
import re

SUBSYSTEMS = [  # (start, name, description); each runs to the next start
    (0x080002E0, "sprite", "multi-layer animated sprites (struct Sprite) drawn from an AnimBank"),
    (0x08000850, "map", "level map tiles and tile collision (slopes, walls, ceilings)"),
    (0x08000B58, "actor", "actor/shot hit tests against cel rectangles"),
    (0x08001280, "resbank", "level resource bank (palettes, maps, tilesets) and BG scrolling"),
    (0x08001C88, "font", "char -> glyph maps of the two fonts (switch tables in rodata)"),
    (0x08001DBC, "system", "flag byte, brightness/palette fades, interrupts, key input"),
    (0x08002144, "link", "Tournament link play: client data download, sessions, packet exchange, link screens"),
    (0x080023B0, "multiboot", "Nintendo libmultiboot (same source as pret/pokeemerald src/multiboot.c)"),
    (0x08002A30, "link", "Tournament link play: client data download, sessions, packet exchange, link screens"),
    (0x08003790, "multi_sio", "Nintendo MultiSio sample library (older revision of SAT-R/sa2 src/multi_sio.c)"),
    (0x08003CF4, "oam", "shadow OAM manager and the OBJ VRAM block allocator"),
    (0x080040C8, "sio32_multi_load", "Nintendo Sio32MultiLoad sample library (older revision of SAT-R/sa2 src/sio32_multi_load.c)"),
    (0x0800436C, "obj", "hardware objects (struct Obj): one OAM entry and one VRAM block each"),
    (0x08004848, "text", "BG text layer: printing, {P<n>} palette tags, reference-counted glyph tiles"),
    (0x08004E48, "vsprintf", "Linux 2.0 lib/vsprintf.c"),
    (0x080053A0, None, None),
]


def subsystem(addr):
    """(name, description) of the subsystem holding addr, or (None, None)."""
    for (s, n, d), (e, _, _) in zip(SUBSYSTEMS, SUBSYSTEMS[1:]):
        if s <= addr < e:
            return n, d
    return None, None


def file_subsystem(name):
    """Subsystem of a src/ file name (sprite, sprite_2, ...), or None for code_<addr> files."""
    names = {n for _, n, _ in SUBSYSTEMS if n}
    base = re.sub(r"_\d+$", "", name)
    return name if name in names else (base if base in names else None)


def new_name(sub, taken):
    """A free file name for a new part of subsystem sub."""
    if sub not in taken and not any(re.fullmatch(r"%s_\d+" % sub, t) for t in taken):
        return sub
    k = 1
    while "%s_%d" % (sub, k) in taken or (k == 1 and sub in taken):
        k += 1
    return "%s_%d" % (sub, k)


def header(name, sub, desc):
    return "/* %s.c: %s.%s */\n" % (name, desc, "" if name == sub else
        " One of several %s files: the functions between them\n * are still asm (near misses in src/nonmatching/region_a.c)." % sub)


def hoist_includes(text):
    """Move every top-level #include line up to the first #include (merged files keep one block)."""
    lines = text.split("\n")
    inc = [l for l in lines if l.startswith("#include")]
    if not inc:
        return text
    seen, uniq = set(), []
    for l in inc:
        if l not in seen:
            seen.add(l); uniq.append(l)
    first = next(i for i, l in enumerate(lines) if l.startswith("#include"))
    rest = [l for i, l in enumerate(lines) if not l.startswith("#include") or i < first]
    return "\n".join(rest[:first] + uniq + rest[first:])
