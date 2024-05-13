# 4: Space & Time

General issues:

* What is a frame of reference, exactly? If it's manri1, then what's the rest
  of {manri}? Are there default frames of reference?

## Space

### 2D Euclidean

The flat plane should be addressible with two dimensions. We have four words:

* berti: north
* snanu: south
* stici: west
* stuna: east

These words all have a nice Euclid-like property; they are all defined as
something like "x1 is translated in [the opposite of] one of the basis
vectors relative to x2 in frame of reference x3", where a frame of reference
is something like an origin and choice of three axes forming a unit basis.

These words are all relative:

    da berti de di <=> de snanu da di
    da stici de di <=> de stuna da di

There is a note that {berti} should accord with right-hand rules; given a 3D
space and a vector, we should use the right-hand rule to address the 2D
bivector which spans the obvious subspace (that is, the flat plane which is
perpendicular/tangent to the given vector.)

These words should generalize to any locally-Euclidean manifold, including
physical approximations. The obvious desire is to have them work on Earth,
where a frame of reference is a choice of (north) pole, and the right-hand
rule then gives the traditional meanings of "north", etc.

#### Other Words

* The cmavo: be'a, ne'u, du'a, vu'a

### 3D Euclidean

Similarly, flat space should be addressible with three dimensions. We should
have six words:

* crane: forward
* trixe: backward
* zunle: leftward
* pritu: rightward
* gapru: upward
* cnita: downward

With axioms of relativity:

    da crane de di <=> de trixe da di
    da zunle de di <=> de pritu da di
    da gapru de di <=> de cnita da di

#### Other Words

* The cmavo: ca'u, ti'a, zu'a, ri'u, ga'u, ni'a
* dizlo?

## Spacetime

Spacetime might have to be defined with a compound of some sort.

There are four tenses. They have no frames of reference; instead, they are
defined using relativity, by considering regions of Minkowski spacetime which
are (naturally) invariant (up to Lorentz transformations between inertial
viewers). This invariance means that we don't have "x1 is temporally related
to x2 according to frame of reference x3", but instead "x1 is spatiotemporally
related to x2 (regardless of frame of reference)".

* balvi: futureward
* purci: pastward
* cabna: here and now
* xlane: elseward

We'll construct events in a moment, but first consider points. If we only
acted on points, then the [causal
structure](https://en.wikipedia.org/wiki/Causal_structure) implies that either
one point causally occurs before the other, or the two points are clearly
disjoint, or the points are nearby each other and possibly equivalent or equal
depending on topological axioms. We'd like for this to be a strict
disjunction, and it is — for points. We can at least note that spacetime
diagrams can be turned upside down:

    da balvi de <=> de purci da

Lorentz transformations preserve inaccessibility:

    da xlane de <=> de xlane da

Equivalence is symmetric:

    da cabna de <=> de cabna da

Finally, physical causation is always of the spatiotemporal variety:

    da rinka de ... => da balvi de

### Events

So, now let's crack open the table of event
[abstractors](0-midju/8-abstractors.md). We'll start with very simple cases:
connected regions of spacetime with boundaries. Such regions can overlap and
also be large enough to span multiple portions of a spacetime diagram, which
complicates our reasoning. We have some hints from baseline definitions;
{balvi} and {purci} both indicate that they are
[aorist](https://en.wikipedia.org/wiki/Aorist) in that they do not exclude
each other, and {cabna} does not exclude either of them either.

But now we get into nuanced questions. Suppose {da balvi de} and {da purci
de}. Does it follow that {da cabna de}? Well, no. But if {da} is connected,
then either {da cabna de} or {da xlane de} (or both), because there has to be
*some* path from past to future, either through the present or elsewhere.

### Open Questions

But what is rinka3? Conditions?

CLL 10.7 says VIhA series {vi'i}, {vi'a}, {vi'u}, {vi'e} correspond to
"cognitive" or "essential dimensionality", and specifically it sounds like a
generalization of manifolds and projections. A {vi'i} action is 1D, but it
occurs in 3+1D spacetime; {vi'i} indicates that the data of the action is
linear. Even curves (CLL gives walking on a mountain) can still have
low-dimensional data.

CLL 10.7 says that FAhA could be augmented with "pastward" and "futureward"
directions.

Fourth tense PU is {xa'ei}, VA is {xa'e}, SELBRI is {xlane}, all experimental.

{ta'e} requires agentivity. The other three can be explained in terms of the
event covering its spacetime interval.

CLL 10.23 clearly enunciates two sets of equivalent bridi families. The first
are using BAI tags:

X .i BAI bo Y <=> BAI gi Y gi X <=> X BAI le nu Y

The other, spelled out in CLL 10.16, is used for TENSE, which are PU, ZI,
FAhA, VA, or ZAhO. In all of those cases:

Y .i TENSE bo X <=> TENSE gi X gi Y <=> X TENSE le nu Y

I think that, in both cases, the final form {X do'e le nu Y} is most
primitive. This implies that {le nu} or similar is primitive.

But also, CLL 10.17 uses {.i ... bo} to glue logical connectives to BAI and
TENSE, with e.g. {.ibabo} akin to {.ijebo}. So, uh?

## Story Time

Conversationally, Lojban bridi refer to events. The story-time convention
connects those events spatiotemporally. The utterance ``{broda .i brode}``
implies something like ``{lo nu broda ku purci lo nu brode}``.
