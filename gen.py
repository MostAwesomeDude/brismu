from collections import Counter
import json, re, sys

LERFU = r"[aeioubcdfg'klmnprstvxyz.]"
VALSI = rf"{LERFU}+"
JUFRA = rf"(\s*{VALSI})+"
DF = re.compile(rf"df-({VALSI})(-{VALSI})*")

with open("gen-valsi-class.json") as handle: vc = json.load(handle)
with open("mm/jbobau.mm") as handle: db = handle.read().split()

clss = Counter(vc.values())

def apos(s): return s.replace("h", "'")
dfs = {}
fs = {}
i = 0
while i < len(db):
    if db[i].startswith("df-") and db[i + 1] == "$a":
        k = apos(db[i].split("-")[1])
        i += 3
        j = i
        while not db[i].startswith("$"): i += 1
        dfs[k] = db[j:i]
    elif db[i] == "$f":
        fs[apos(db[i + 2])] = db[i + 1]
        i += 2
    i += 1

def crack(ts):
    s = 0
    for j, t in enumerate(ts):
        if t in ("ga", "ganai", "ge", "go", "gonai"): s += 1
        elif t in ("gi", "ginai"): s -= 1
        if s == 0:
            # Not actually cracked!
            if j == 0: return ts, ts
            else: return ts[1:j], ts[j + 1:]
    raise ValueError("unbalanced GA/GI brackets")

dfc = Counter(vc[k] for k in dfs)
dff = Counter(vc[k] for k in fs)
count = sum(dfc.values()) + sum(dff.values())

cmd = sys.argv[-1]
if cmd == "coverage":
    print("Grammatical class | Metamath class | # of formal definitions")
    print("---|---|---")
    lines = [f"{cls} | metavariable | {dff[cls]} / {clss[cls]}" for cls in dff]
    lines.extend(f"{cls} | constant | {dfc[cls]} / {clss[cls]}" for cls in dfc)
    for line in sorted(lines): print(line)
    total = len(vc)
    print("total", "| - |", count, "/", total,
          "(%0.2f%%)" % (count * 100 / total))
elif cmd == "metavars":
    print("cmavo | Metamath type")
    print("---|---")
    for k, v in sorted(fs.items()): print(f"{v} | {k}")
elif cmd == "definitions":
    d = {k: " ".join(crack(v)[1]) for k, v in dfs.items()}
    json.dump(d, sys.stdout)
elif cmd == "dependencies":
    mvs = set(fs)
    print("digraph {")
    for v1, v in dfs.items():
        for v2 in set(crack(v)[1]) - mvs:
            if v2.startswith("."): v2 = v2[1:]
            if v2 in ("ganai", "gi", v1): continue
            print(f'"{v1}" -> "{v2}";')
    print("}")
else:
    raise ValueError("unknown subcommand")
