from collections import Counter
import json
with open("valsi-class.json") as handle: vc = json.load(handle)
with open("mm/jbobau.mm") as handle:
    dfs = [l.split(" ")[0][3:] for l in handle.readlines() if l.startswith("df-")]
c = Counter(vc[v] for v in dfs)
print("Grammatical class | # of formal definitions"); print("---|---")
for cls in c: print(cls, "|", c[cls])
