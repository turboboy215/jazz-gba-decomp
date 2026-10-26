"""tools/nm_explode.py: split src/nonmatching/region_a.c into work/ADDR_Name.c files (shared preamble + one function each)
so tools/adiff.py / check_func.py can run on each near miss. Prints ADDR Name per file."""
import re,sys
src=open('src/nonmatching/region_a.c').read().split('\n')
idx=[i for i,l in enumerate(src) if re.match(r'/\* ---- \w+ [0-9A-F]{8}',l)]
pre='\n'.join(src[:idx[0]])
for k,i in enumerate(idx):
    j=idx[k+1] if k+1<len(idx) else len(src)
    m=re.match(r'/\* ---- (\w+) ([0-9A-F]{8})',src[i])
    open('work/%s_%s.c'%(m.group(2),m.group(1)),'w').write(pre+'\n'+'\n'.join(src[i:j])+'\n')
    print(m.group(2),m.group(1))
