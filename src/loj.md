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
