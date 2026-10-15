# Pre-script: map GBA memory, mark entry, seed Thumb functions at push {..,lr}.
# @category GBA
from ghidra.program.model.address import AddressSet
from ghidra.app.cmd.disassemble import ArmDisassembleCommand
from ghidra.program.model.lang import RegisterValue
from java.math import BigInteger

mem = currentProgram.getMemory()
space = currentProgram.getAddressFactory().getDefaultAddressSpace()
A = lambda x: space.getAddress(x)
for name, start, size, rwx in [("EWRAM", 0x02000000, 0x40000, "rwx"), ("IWRAM", 0x03000000, 0x8000, "rwx"),
                               ("IO", 0x04000000, 0x400, "rw"), ("PAL", 0x05000000, 0x400, "rw"),
                               ("VRAM", 0x06000000, 0x18000, "rw"), ("OAM", 0x07000000, 0x400, "rw")]:
    if mem.getBlock(A(start)) is None:
        b = mem.createUninitializedBlock(name, A(start), size, False)
        b.setWrite(True); b.setExecute("x" in rwx)
        if name == "IO": b.setVolatile(True)

rom = mem.getBlock(A(0x08000000))
rom.setWrite(False)
end = rom.getEnd().getOffset()

# ARM entry at ROM start
ArmDisassembleCommand(A(0x08000000), None, False).applyTo(currentProgram, monitor)
createFunction(A(0x08000000), "_start")

# ponytail: naive prologue scan (4-aligned push {..,lr}); false positives possible in data. Upgrade: pointer-table / bl-target scan.
# Jazz Jackrabbit: code lives in two regions (see docs/rom_map.md); only seed there.
CODE_REGIONS = [(0x080000C0, 0x08014000), (0x082E0000, 0x0831E000)]
# Known entry points: crt0 jumps to main (Thumb) at 0x08312BF8
for ep in [0x08312BF8]:
    ArmDisassembleCommand(A(ep), None, True).applyTo(currentProgram, monitor)
    createFunction(A(ep), "AgbMain")
seeds = 0
for lo, hi in CODE_REGIONS:
    addr = lo
    while addr < hi - 2:
        hw = mem.getShort(A(addr)) & 0xFFFF
        if (hw & 0xFF00) == 0xB500 and getInstructionAt(A(addr)) is None:
            if ArmDisassembleCommand(A(addr), None, True).applyTo(currentProgram, monitor):
                createFunction(A(addr), None); seeds += 1
        addr += 2
print("seeded %d thumb functions" % seeds)
