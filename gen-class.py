import json, sys

with open("valsi-class.json") as f: d = json.load(f)

first = True
for line in open("gismu.txt"):
    if first:
        first = False
        continue
    k, _ = line.split(maxsplit=1)
    d[k] = "gismu"

first = True
ls = tuple("1234567890*")
for line in open("cmavo.txt"):
    if first:
        first = False
        continue
    k, v, _ = line.split(maxsplit=2)
    if k.startswith("."): k = k[1:]
    if v.endswith(ls): v = v[:-1]
    d[k] = v

json.dump(d, sys.stdout)
