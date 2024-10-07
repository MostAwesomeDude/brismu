import json, re, sys

THEOREM_RE = re.compile("~([-\w]+)")
makeLink = lambda m: "[{0}]({0}.html)".format(m.group(1))

def processSection(section):
    if "Chapter" not in section: return
    section["Chapter"]["content"] = THEOREM_RE.sub(makeLink, section["Chapter"]["content"])

def main(argv):
    if len(argv) == 3 and argv[1] == "supports": return 0
    elif len(argv) != 1: return 1

    context, book = json.load(sys.stdin)
    for i, section in enumerate(book["sections"]): processSection(section)
    json.dump(book, sys.stdout)

if __name__ == "__main__": raise SystemExit(main(sys.argv))
