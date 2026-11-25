# Ghidra drafts without analyzeHeadless (Ghidra 11.4 runs .py scripts only through PyGhidra):
#   pip install --break-system-packages --no-index -f $GHIDRA_INSTALL_DIR/Ghidra/Features/PyGhidra/pypkg/dist pyghidra
#   GHIDRA_INSTALL_DIR=... python3 tools/scripts/ghidra_drafts.py baserom.gba tools/scripts ADDRFILE decomp/drafts
# ADDRFILE: one hex start per line (the asm functions). Then tools/clean_drafts.py.
import sys, os, pyghidra
pyghidra.start(install_dir="" + os.environ.get("GHIDRA_INSTALL_DIR", "ghidra_11.4.2_PUBLIC") + "")
from java.io import File
from ghidra.base.project import GhidraProject
from ghidra.program.model.lang import LanguageID
from ghidra.program.flatapi import FlatProgramAPI
from ghidra.util.task import ConsoleTaskMonitor
from ghidra.app.util.opinion import BinaryLoader
from ghidra.program.util import DefaultLanguageService

rom, scripts, addrfile, out = sys.argv[1:5]
proj = GhidraProject.createProject(os.environ.get("TMPDIR", "/tmp"), "p%d" % os.getpid(), True)
lang = DefaultLanguageService.getLanguageService().getLanguage(LanguageID("ARM:LE:32:v4t"))
prog = proj.importProgram(File(rom), lang, lang.getDefaultCompilerSpec())
tx = prog.startTransaction("setup")
mem = prog.getMemory()
blk = mem.getBlocks()[0]
mon = ConsoleTaskMonitor()
mem.moveBlock(blk, prog.getAddressFactory().getDefaultAddressSpace().getAddress(0x08000000), mon)
api = FlatProgramAPI(prog, mon)
g = {}
for n in dir(api):
    if n.startswith('_'):
        continue
    try:
        g[n] = getattr(api, n)
    except Exception:
        pass
g.update(currentProgram=prog, monitor=mon, getScriptArgs=lambda: [addrfile, out], ghidra=__import__('ghidra'))
exec(open(os.path.join(scripts, 'GbaSetup.py')).read(), dict(g))
print("setup done", flush=True)
api.analyzeAll(prog)
print("analysis done", flush=True)
exec(open(os.path.join(scripts, 'Drafts.py')).read().replace('analyzeChanges(currentProgram)', 'api.analyzeChanges(currentProgram)'), dict(g, api=api))
prog.endTransaction(tx, True)
