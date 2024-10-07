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
* pasting diagrams as applications of ~ax-mp
* Isomorphisms from X to Y as {go X gi Y}

Note that while **Loj** is thin, its formal verification in Metamath is
non-thin. This is not a serious issue.

## Table of proofs

Metamath statement | Lojban bridi | What it means
---|---|---
~id | {ganai broda gi broda} | [identity arrows](https://ncatlab.org/nlab/show/identity%20morphism) exist
~syl | {ganai broda gi brode} & {ganai brode gi brodi} => {ganai broda gi brodi} | [composition](https://ncatlab.org/nlab/show/composition) is allowed and well-typed
~iso | {ganai broda gi brode} & {ganai brode gi broda} => {go broda gi brode} | isomorphisms are allowed
~ax-ge-le | {ganai ge broda gi brode gi broda} | conjunction is a left lower bound
~ax-ge-re | {ganai ge broda gi brode gi brode} | conjunction is a right lower bound
~ga-lin | {ganai broda gi ga broda gi brode} | disjunction is a left upper bound
~ga-rin | {ganai broda gi ga broda gi broda} | disjunction is a right upper bound
~garii | {ganai broda gi brode} & {ganai brodi gi brode} => {ganai ga broda gi brodi gi brode} | disjunction is the least upper bound
~ge-idem | {go ge broda gi broda gi broda} | conjunction is idempotent
~ga-idem | {go ga broda gi broda gi broda} | disjunction is idempotent
~ge-com | {go ge broda gi brode gi ge brode gi broda} | conjunction commutes
~ga-com | {go ga broda gi brode gi ga brode gi broda} | disjunction commutes

## To Do

* Implication, conjunction, disjunction should form a lattice
  * Missing ge-ind: deductive form of ax-ge-in
  * And also a distributive lattice?
    * {ge broda gi ga brode gi brodi} => {ga ge broda gi brode gi brodi}
  * Easy implications of being a lattice:
    * Associativity: {ge/ga broda gi ge/ga brode gi brodi}
      => {ge/ga ge/ga broda gi brode gi brodi}
    * Absorption: {ge/ga broda gi ga/ge broda gi brode} => {broda}

## Core

The [core](https://ncatlab.org/nlab/show/core+groupoid) of a category is the
groupoid which includes all of its isomorphisms. The core of **Loj**, written
**Core(Loj)**, is the groupoid whose:

* objects are the three equivalence classes of true, false, and independent
  bridi, and
* arrows are bi-implications from one bridi to another.

To read Metamath theorems as statements about **Core(Loj)**, encode:

* objects as members of the {broda} series
* arrows from X to Y as {go X gi Y}
* pasting diagrams as applications of ~bi

### Table of proofs

Metamath statement | Lojban bridi | What it means
---|---|---
~go-id | {go broda gi broda} | identity arrows exist
~go-syl | {go broda gi brode} & {go brode gi brodi} => {go broda gi brodi} | composition is allowed and well-typed
~go-ganai | {go broda gi brode} => {ganai broda gi brode} | the core is a subcategory
~go-comi | {go broda gi brode} => {go brode gi broda} | the core is its own opposite category
