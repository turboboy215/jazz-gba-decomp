"""work/nm_replace.py ADDR [file.c]  replace (or with no file, delete) the section of ADDR in src/nonmatching/region_a.c.
file.c must start with its own /* ---- Name ADDR ---- ... */ header comment."""
import re,sys
P='src/nonmatching/region_a.c'
src=open(P).read().split('\n')
idx=[i for i,l in enumerate(src) if re.match(r'/\* (----|====) ',l)]
addr=sys.argv[1]
k=[n for n,i in enumerate(idx) if re.match(r'/\* ---- \w+ %s'%addr,src[idx[n]])][0]
a=idx[k]; b=idx[k+1] if k+1<len(idx) else len(src)
new=open(sys.argv[2]).read().rstrip('\n').split('\n')+[''] if len(sys.argv)>2 else []
src[a:b]=new
open(P,'w').write('\n'.join(src))
