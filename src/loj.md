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

Note that while **Loj** is thin, its formal verification in Metamath is
non-thin. This is not a serious issue.

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
  * And also a distributive lattice?
    * {ge broda gi ga brode gi brodi} => {ga ge broda gi brode gi brodi}
  * Easy implications of being a lattice:
    * Idempotence: {ge/ga broda gi broda} => {broda}
    * Commutativity: {ge/ga broda gi brode} => {ge/ga brode gi broda}
    * Associativity: {ge/ga broda gi ge/ga brode gi brodi}
      => {ge/ga ge/ga broda gi brode gi brodi}
    * Absorption: {ge/ga broda gi ga/ge broda gi brode} => {broda}
