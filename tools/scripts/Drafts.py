# Post-script: make Thumb functions at every listed start (ending each at the next start), then decompile.
# @category GBA
from ghidra.app.decompiler import DecompInterface
from ghidra.app.cmd.disassemble import ArmDisassembleCommand
import os
args = getScriptArgs()
addrs = [l.strip() for l in open(args[0]) if l.strip()]
out = args[1]
fm = currentProgram.getFunctionManager()
for a in addrs:
    ad = toAddr(int(a, 16))
    if getInstructionAt(ad) is None:
        ArmDisassembleCommand(ad, None, True).applyTo(currentProgram, monitor)
    f = fm.getFunctionAt(ad)
    if f is None:
        g = fm.getFunctionContaining(ad)
        if g is not None and g.getEntryPoint() != ad:
            pass
        createFunction(ad, "sub_" + a)
    else:
        f.setName("sub_" + a, ghidra.program.model.symbol.SourceType.USER_DEFINED)
analyzeChanges(currentProgram)
d = DecompInterface(); d.openProgram(currentProgram)
ok = 0
for a in addrs:
    fn = fm.getFunctionAt(toAddr(int(a, 16)))
    if fn is None:
        continue
    r = d.decompileFunction(fn, 30, monitor)
    if r.decompileCompleted():
        f = open(os.path.join(out, a + ".c"), "w")
        f.write(r.getDecompiledFunction().getC())
        f.close(); ok += 1
print("drafts written: %d of %d" % (ok, len(addrs)))
