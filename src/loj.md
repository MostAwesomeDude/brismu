# **Loj**

**Loj** is a [category](https://en.wikipedia.org/wiki/Category_theory) formed
from Lojban syntax. Specifically, it is the poset
([WP](https://en.wikipedia.org/wiki/Partially_ordered_set),
[nLab](https://ncatlab.org/nlab/show/partial+order)) whose:

* objects are equivalence classes of
  [closed](https://en.wikipedia.org/wiki/Free_variables_and_bound_variables) well-formed bridi, and
* arrows are implications from one bridi to another.

To read Metamath theorems as statements about **Loj**, encode:

* objects as members of the {broda} series
* arrows from X to Y as {ganai X gi Y}

## Table of proofs

Metamath statement | Lojban bridi | What it means
---|---|---
[id](id.html) | {ganai broda gi broda} | [identity arrows](https://ncatlab.org/nlab/show/identity%20morphism) exist
[syl](syl.html) | {ganai broda gi brode} & {ganai brode gi brodi} => {ganai broda gi brodi} | [composition](https://ncatlab.org/nlab/show/composition) is allowed and well-typed
[ax-ge-le](ax-ge-le.html) | {ganai ge broda gi brode gi broda} | conjunction is a left lower bound
[ax-ge-re](ax-ge-re.html) | {ganai ge broda gi brode gi brode} | conjunction is a right lower bound
[ga-lin](ga-lin.html) | {ganai broda gi ga broda gi brode} | disjunction is a left upper bound
[ga-rin](ga-rin.html) | {ganai broda gi ga broda gi broda} | disjunction is a right upper bound
[garii](garii.html) | {ganai broda gi brode} & {ganai brodi gi brode} => {ganai ga broda gi brodi gi brode} | disjunction is the least upper bound

## To Do

* Implication should form a partial order; we're missing antisymmetry
  * {ganai broda gi brode} & {ganai brode gi broda}
    => {pa du'u broda kei du pa du'u brode}
* Implication, conjunction, disjunction should form a lattice
  * Missing ge-ind: deductive form of ax-ge-in
