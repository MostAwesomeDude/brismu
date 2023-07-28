# Foreword

> A category is a deductive system. ~ Lambek, via [Encyclopedia of
> Philosophy](https://plato.stanford.edu/entries/category-theory/)

This is the landing page for *brismu: a relational interpretation of Lojban*, a
small book which provides logical rules for manipulating Lojban text.

This book is born from notes for a basic interpretation of Lojban using
category theory. According to the [Encyclopedia of
Philosophy](https://plato.stanford.edu/entries/category-theory/), there is a
category for "any deductive system T with objects formulae and morphisms
proofs." I present a deductive system for Lojban with a strong focus on
relations, category-theoretic framing, and formalizability. In this system,
Lojban is syntax for a special flavor of category -- a [bicategory of
relations](https://ncatlab.org/nlab/show/bicategory+of+relations) -- forming a
fictional universe.

This book comes in two halves. This half is written mostly in English prose.
The other half is [a formally-verified collection of proofs about
Lojban](mmtheorems.html) written mostly in
[Metamath](https://us.metamath.org/), a system for formalizing symbolic logic.
The other half explains which bridi are logically provable; this half explains
the meaning of the various axioms.

This book is addressed at folks who know Lojban and want to gain a deeper
understanding of Lojbanic logic. If the reader does not know Lojban, then they
may be somewhat mystified by the purpose of this work. For that reader, please
consider Lojban as a sort of neutral speakable language for reading well-formed
formulae aloud.

There are no mathematical prerequisites. Instead, the first few pages will
rapidly build up all of the mathematical concepts which are required, and any
additional concepts will be built as needed.

## Coverage

Of the 1343 baseline valsi recognized as selbri (1342 gismu, 1 cmavo), 161
selbri are partially defined via formal rules. All 12 baseline abstractors (NU)
are informally defined. Of the 8 classic articles (LE), 2 are informally defined.

In addition, 8 experimental selbri are informally defined, as well as 6 cnino
selbri which did not previously exist.

### Essential theorems

Theorem | Formalized | Proved
---|---|---
cei'i | yes | yes: [ceihi](ceihi.html)
ko'a du ko'a | yes | no; [du-refl](du-refl.html) is incomplete
lo broda ku broda | somewhat (prose, not Metamath) | no

### Formal coverage

{{#include coverage.md}}

## Credits

The bulk of this work was gathered by la korvo. I greet and thank the following
Lojbanists for input and insights:

* la bremenli
* la guskant
* la ilmen
* [la poros](https://pcy.ulyssis.be/)
* la selpa'i

## Praise from Lojbanists

> "alien language" -- la gleki

> "sad...pathetic, really" -- la cadgu'a

> "no one cares about formalism" -- la xaspeljba
