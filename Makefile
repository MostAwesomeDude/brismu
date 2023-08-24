all: dependencies.dot

dependencies.json: definitions.json
	jq 'keys as $$ks | to_entries | map(. as {$$key, $$value} | $$ks | map(select("(^| )\(.)( |$$)" as $$x | $$value | test($$x))) | map("\"\($$key)\" -> \"\(.)\"")) | flatten' $< > $@

dependencies.dot: dependencies.json
	jq -j '"digraph {", join(";\n"), "}"' $< > $@

.DELETE_ON_ERROR:
