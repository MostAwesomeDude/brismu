# 0: Endorelations

Endorelations are binary *selbri* which relate a set to itself.

## Reflexivity

~table df-kinra

### Examples

~table du-kinra gripau-kinra kihirnihi-kinra pagbu-kinra nibli-refl

## Irreflexivity

An irreflexive relation omits any pair which a reflexive relation would be
required to have. For every element x in the underlying set, `x R x` is false.
Since we only care about endorelations, we won't mention relations like
``{mlatu}`` which would otherwise trivially be irreflexive.

    ro da zo'u:

    da na broda da (broda is irreflexive)

Examples of irreflexive relations:

* ``{frica}`` for some (currently poorly-understood) frica3
* ``{drata}`` for any particular drata3

## Transitivity

~table df-takni

### Examples

* ``{zmadu}`` for any particular zmadu3 metric and zmadu4 value of the metric
  between zmadu1 and zmadu2
* Similarly, ``{mleca}`` for any particular mleca3 and mleca4
* ``{barda}`` for any particular barda2
* ``{cmalu}`` for any particular cmalu2
* ``{diklo}`` for any particular diklo3
* ``{nenri}``
* ``{nibli}`` for any particular nibli3
* ``{rinka}`` for any particular rinka3

An example of a not-quite-transitive relation is ``{dzena}``, because
``dzena3`` needs to be composed during each transitive step. This is a common
failure, indicating a need for composition in order to build the implied
transitive structure. Or perhaps just ``{dzena fi zi'o}``, not sure.

## Symmetric

~table df-kinfi

### Examples

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

Examples of equivalence relations:

* ``{du}``
* ``{dunli}`` for any particular dunli3
* ``{panra}`` for any particular panra3 and panra4

## Partial order

Any relation which is transitive and antisymmetric is a partial order.

Examples of partial orders:

* ``{lidne}`` for any particular lidne3

It is possible that {lidne} is defined as "there is an arrow from x1 to x2 in
partial order x3", which would be a remarkably powerful and general relation.
Similarly, {porsi} might be "x1 (poset) is the partial order arising from
order x2 (binary ka) upon set x3".

## Connectedness

A relation is connected if, for all pairs of values x and y, either xRy, yRx,
or x=y. Equivalently, x≠y => xRy \/ yRx.

## Serial relations

A relation is serial if it is irreflexive, transitive, and connected.

## Well-founded

A relation is well-founded if it contains no infinite descending chains.
Equivalently, every non-empty subset of the domain has a minimal element.

## Well-order

A relation is a well-order if it is transitive, antisymmetric, connected,
reflexive, and well-founded.

moi3 needs to be a well-order so that its domain moi2 can be given an order
type. Or, put another way, moi2 is shown to have order-type moi3 (given as an
expression for a binary relation).

## Lesniewskian

A relation is Lesniewskian if it is transitive and also:

    da broda de
    -----------
    da broda da

And:

    da broda de & de broda di
    -------------------------
           de broda da

## Euclidean

~table df-efklipi df-efklizu
