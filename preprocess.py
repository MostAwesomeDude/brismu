import functools, json, re, sys

def parse(db):
    d = {}
    i = 0
    scopes = [[]]
    try:
        while True:
            if db[i] == "${": scopes.append([])
            elif db[i] == "$}": scopes.pop()
            elif db[i + 1] == "$e":
                i += 3
                start = i
                while db[i] != "$.": i += 1
                scopes[-1].append(db[start:i])
            elif db[i + 1] in ("$a", "$p"):
                k = db[i]
                i += 3
                start = i
                while not db[i].startswith("$"): i += 1
                d[k] = db[start:i], [hyp for scope in scopes for hyp in scope]
            i += 1
    except IndexError: return d

with open("mm/jbobau.mm", "r") as handle: db = parse(handle.read().split())

THEOREM_RE = re.compile("~([-\.'\w]*\w)")
makeLink = "[{0}]({0}.html)".format
subLink = functools.partial(THEOREM_RE.sub, lambda m: makeLink(m.group(1)))

formatBridi = lambda s: "*" + " ".join(s) + "*"
formatHypotheses = lambda hyps: " & ".join(formatBridi(hyp) for hyp in hyps)
def formatStatement(s, hyps):
    deduction = formatBridi(s)
    return formatHypotheses(hyps) + " ⇒ " + deduction if hyps else deduction
lookupStatement = lambda t: makeLink(t) + " | " + formatStatement(*db[t])
def makeTable(ts):
    return "\n".join(["Name | Statement", "---|---"] +
                     list(map(lookupStatement, ts)))
findTable = lambda l: makeTable(l.split()[1:]) if l.startswith("~table ") else l

def processSection(section):
    if "Chapter" not in section: return
    content = section["Chapter"]["content"].split("\n")
    content = map(subLink, map(findTable, content))
    section["Chapter"]["content"] = "\n".join(content)

def main(argv):
    if len(argv) == 3 and argv[1] == "supports": return 0
    elif len(argv) != 1: return 1

    context, book = json.load(sys.stdin)
    for i, section in enumerate(book["sections"]): processSection(section)
    json.dump(book, sys.stdout)
    return 0

if __name__ == "__main__": raise SystemExit(main(sys.argv))
