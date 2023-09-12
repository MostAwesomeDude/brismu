import json, sys

def dearitize(s): return s[:-2] if s.endswith("/2") else s

dag = json.load(sys.stdin)

constants = list(sorted(set(dearitize(g) for g in dag) |
                        set(dearitize(g) for gs in dag.values() for g in gs)))

with open(sys.argv[-1]) as handle: db = handle.read().split("\n")

typesetting = db.index("$( $t") + 1
tss = [f"htmldef \"{c}\" as \"<span class='gismu'>{c}</span> \";"
       for c in constants]
db[typesetting:typesetting] = tss

db.extend([
    "$(",
    "#*#*#",
    "Baseline Ontology",
    "#*#*#",
    "$)",
])

for constant in constants:
    db.extend([
        f"$c {constant} $.",
        f"sb{constant} $a selbri {constant} $.",
    ])

for u in dag:
    su = dearitize(u)
    for v in dag[u]:
        sv = dearitize(v)
        db.extend([
            f"$( Automatically generated axiom: {{` {su} `}} is a subrelation of {{` {sv} `}} $)",
            f"ax-{su}-{sv} $a |- pa ka ce'u {su} ce'u ki'irni'i pa ka ce'u {sv} ce'u $.",
        ])

with open(sys.argv[-1], "w") as handle: handle.write("\n".join(db))
