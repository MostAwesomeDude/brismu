# 0: Endorelational gismu

We cover some essential relational properties of the baseline gismu. We'll use
the notation `x R y` to indicate relation R relating elements x and y.

We'll focus on binary relations where both elements of each pair are drawn
from one single underlying set. This lets us consider equality on related
elements.

## Reflexivity

A reflexive relation contains at least, for every element x in the underlying
set, `x R x`.

I don't know of any gismu which are reflexive but not equivalence relations.
Still, were there any, they'd get the following formal rule.

    ro da ro de zo'u:

    da broda de
    ----------- (broda is reflexive)
     da du de

For any gismu which is reflexive, just substitute into the above rule.

## Irreflexivity

An irreflexive relation omits any pair which a reflexive relation would be
required to have. For every element x in the underlying set, `x ~R x`. Since
we only care about endorelations, we won't mention relations like ``{mlatu}``
which would otherwise trivially be irreflexive.

    ro da zo'u:

    da na broda da (broda is irreflexive)

Examples of irreflexive relations:

* ``{frica}`` for some (currently poorly-understood) frica3
* ``{drata}`` for any particular drata3

## Transitivity

A transitive relation turns chains of related elements into transitive
closures, which are subsets of the underlying set characterized by the heads
of the longest chains. For any three elements x, y, and z,
if `x R y` and `y R z` then also `x R z`.

    ro da ro de ro di zo'u:

    da broda de .ije de broda di
    ---------------------------- (broda is transitive)
            da broda di

Examples of transitive relations:

* ``{zmadu}`` for any particular zmadu3 metric and zmadu4 value of the metric
  between zmadu1 and zmadu2
* Similarly, ``{mleca}`` for any particular mleca3 and mleca4
* ``{barda}`` for any particular barda2
* ``{cmalu}`` for any particular cmalu3
* ``{diklo}`` for any particular diklo3
* ``{nenri}``
* ``{nibli}`` for any particular nibli3
* ``{rinka}`` for any particular rinka3

An example of a not-quite-transitive relation is ``{dzena}``, because
``dzena3`` needs to be composed during each transitive step. This is a common
failure, indicating a need for composition in order to build the implied
transitive structure. Or perhaps just ``{dzena fi zi'o}``, not sure.

## Symmetric

A symmetric relation freely interchanges the elements in its pairs; whenever
it is the case that `x R y`, it is also the case that `y R x`.

    ro da ro de zo'u:

    da broda de
    =========== (broda is symmetric)
    de broda da

The rule for symmetric relations is also symmetric, which I find pleasant.

Note that symmetric relations are like involutions, in that when composed with
themselves they yield the identity relation ``{du}``. However, they need not
be functions.

Examples of symmetric relations:

* ``{fatne}``
* ``{dukti}`` for any particular dukti3
* ``{rimni}`` for any particular rimni3 and rimni4
* ``{darno}`` for any particular darno3
* ``{jibni}`` for any particular jibni3
* ``{jorne}`` for any particular jorne3
* ``{sepli}`` for any particular sepli3
* ``{sirji}`` for any particular sirji1
* ``{cabna}``
* ``{cinba}`` for any particular cinba3
* ``{cripu}`` for any particular cripu1 and cripu2
* ``{natfe}`` for any particular natfu3

## Antisymmetry

An antisymmetric relation is like a symmetric relation, but degenerates
whenver elements overlap. Specifically, if `x R y` and also `y R x`, then in
fact `x = y`, `x R x`, and `y R y`.

    ro da ro de zo'u:

    da broda de .ije de broda da
    ---------------------------- (broda is antisymmetric)
              da du de

Antisymmetric relations need not be reflexive, but in that case their graphs
will not have cycles.

Antisymmetric relations can be symmetric too, but they will always degenerate
to diagonal relations in that case.

* ``{balvi}``
* ``{purci}``

## Equivalence relations

Any relation which is reflexive, transitive, and symmetric, is an equivalence
relation.

Every equivalence relation creates a partition on the underlying set, called
the partition into equivalence classes.

``{dunli}`` indexes the equivalence relations; dunli3 (ka) is a binary
relation which sends both dunli1 and dunli2 to some unseen comparison key, and
witnesses that they would be in the same equivalence class if quotiented by
dunli3.

What's the difference between ``{dunli}`` and ``{simsa}`` and ``{mintu}``?

Examples of equivalence relations:

* ``{du}``
* ``{dunli}`` for any particular dunli3
* ``{panra}`` for any particular panra3 and panra4

## Partial order

Any relation which is transitive and antisymmetric is a partial order.

Examples of partial orders:

* ``{lidne}`` for any particular lidne3
