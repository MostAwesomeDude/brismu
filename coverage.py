from collections import Counter
import json, re

VALSI = r"[\w']+"
DF = re.compile(rf"df-({VALSI}) +\$a")
F = re.compile(rf"\$f +{VALSI} ({VALSI})")

with open("valsi-class.json") as handle: vc = json.load(handle)
with open("mm/jbobau.mm") as handle: db = handle.read()

dfc = Counter(vc[v] for v in DF.findall(db))
dff = Counter(vc[v] for v in F.findall(db))
count = sum(dfc.values()) + sum(dff.values())

print("Grammatical class | Metamath class | # of formal definitions")
print("---|---|---")
lines = [f"{cls} | metavariable | {dff[cls]}" for cls in dff]
lines.extend(f"{cls} | constant | {dfc[cls]}" for cls in dfc)
for line in sorted(lines): print(line)
print("total", "| - |", count, "%0.2f%%" % (count * 100 / 2529))
