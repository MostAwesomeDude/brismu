# 3: Categorical Relational Algebra

Let's investigate more properties of the category of sumti and selbri. In this
section, we'll think categorically, and look for abstract patterns which show
up elsewhere in logic. We'll look at products and coproducts, as well as
internal homs. We will be guided by the properties of [bicategories of
relations](https://arxiv.org/abs/1706.00526).

## Products: {gi'onai}

Is there a selbri for categorical products? Let's first write out the
categorical [universal
property](https://en.wikipedia.org/wiki/Universal_property) that we want to
search for. Given two objects `X` and `Y`, their product `X * Y` comes with
the ability to combine any two arrows `l : I -> X` and `r : I -> Y` into a
single compound arrow `l*r : I -> X * Y`, as well as two arrows `p1 : X * Y ->
X` and `p2 : X * Y -> Y`. Next, let's write a selbri in English, along the
lines of "x1 (set) is the disjoint union of x2 (set) and x3 (set)". We know
from the definition of the [category of relations,
Rel](https://en.wikipedia.org/wiki/Category_of_relations), that the disjoint
union of sets is the correct choice for products.

As it happens, the experimental non-logical cmavo `{jo'ei}` can build disjoint
unions, although there is no selbri satisfying `{da jo'ei de broda da de}` as
we might like.

Now, let's state the actual universal property. For products, this means
combining our two arrows into one arrow. To achieve a disjoint union, we will
select from either the left-hand arrow or the right-hand arrow, but not both
at once. This is a job for `{onai}`.

     da broda de & da brode di
    ============================ (gi'onai-intel)
    da broda de gi'onai brode di

What makes this rule different from `(gi'e-intel)` is the logical
interpretation of results. An `{onai}` forms a branch, and only variables on
one side of the branch will be bound. That is, even when the entire bridi
succeeds, some of its variables may not have any values. If we wanted to
prevent this situation, then we could produce a fresh variable and adopt the
convention that scoped variables aren't visible at the top level, but that
requires some extra machinery that we haven't set up yet.

Let's get weird. We haven't properly introduced negation yet, so let's just
say that when `{onai}` chooses one branch, then the other branch is not
explored. Negation is like a refusal to bind any values. We will get more
precise later, but for now, consider this surprising statement.

     da broda de gi'e brode di
     =========================   (gi'e-intel)
     da broda de & da brode di
    ============================ (gi'onai-intel)
    da brode de gi'onai brode di

Here is part of the strange reality of relational algebra: The number of
results is not necessarily zero, neither on the top nor the bottom of this
statement!  On top, we need both relations to be satisfied simultaneously, so
we'll get triples `(da, de, di)`. On bottom, we can have pairs of either `(da,
de)` or `(da, di)`. So, if we go from top to bottom, then each input triple
gives two output triples. In the other direction, we are performing a
unification that matches up these pairs into
[spans](https://en.wikipedia.org/wiki/Span_(category_theory)), which happens
to be a common operation in low-level relational algebra.

## Coproducts

Relations are extremely symmetrical, and sometimes that is very powerful.
Categorical coproducts, also known as sums, are very popular in programming
language theory. Coproducts are defined by [categorical
duality](https://en.wikipedia.org/wiki/Dual_(category_theory)); we take the
definition of products, mechanically turn around all of the arrows, and obtain
a new universal property. But because relations are so symmetrical, it happens
that the disjoint union implements both products and coproducts for relations.

      da broda di      de brode di
     ==============   ============== (se-intel)
     di se broda da & di se brode de
    ================================== (gi'onai-intel)
    di se broda da gi'onai se brode de

One more curious example. Here, we are looking for `broda(di, de)` pairs where
`di ≠ di`. We are allowed to transition between zero and nonzero numbers of
results!

    da broda de gi'onai du di
    ========================= (gi'onai-intel)
     da broda de & da du di
     ======================   (du-intel)
           di broda de

## Internal homs: {ka}, {ckaji}, {ckini}

We can now search for the [internal
hom](https://ncatlab.org/nlab/show/internal+hom)
([WP](https://en.wikipedia.org/wiki/Hom_functor#Internal_Hom_functor)), the
construction which behaves like functions with closure. It turns out that
relationally, internal homs are built from Cartesian products. To see this,
let's see the universal property: Given a pair `(X, Y^X)`, we can apply the
latter to the former, and get a `Y`. So the universal property comes as a
single arrow `apply : (X, Y^X) -> Y`.

            da broda de
    ============================ (ckaji-intel)
    da ckaji pa ka ce'u broda de

We will use `{ka}` for selbri which have been closed over, with `{ce'u}`
indicating where holes remain. Arity will matter; `{ckaji}` can only fill in
one hole at a time. Why `{pa}`? Because there's only one way to perform the
closure, up to unique isomorphism, and so the quantifier ought to be "there
exists exactly one". This is a common property of universal properties, but it
is very different from traditional Lojban quantification, where `{lo ka}` is
used to generically select relations. A notable consequence is that, in rules
like `(ckaji-intel)`, we will not bind the `{ka}` to any name, but we will
bind each `{de}` just the same in both the top and bottom.

So, where were those Cartesian products? One is hidden inside `{da broda de}`:
each solution to this bridi is a pair `(da, de)` drawn from their Cartesian
product! We can make a more explicit coupling with `{ckini}`, which does for
binary `{ka}` what `{ckaji}` does for unary `{ka}`. Note that we use explicit
`{ce'u}` to mark each hole and keep track of arity.

              da broda de
    ================================= (ckini-intel)
    da ckini de pa ka ce'u broda ce'u

I can think of a few useful lemmas to try out. First, let's see if we can
connect `{ckaji}` and `{ckini}` without any more rules.

      da ckaji pa ka ce'u broda de
      ============================    (ckaji-intel)
              da broda de
    ================================= (ckini-intel)
    da ckini de pa ka ce'u broda ce'u

Looks reasonable. What about the symmetry within `{ckini}`? Can we, say, put
`{se}` underneath `{ka}`? Yes, we can.

     da ckini de pa ka ce'u broda ce'u
     =================================   (ckini-intel)
                da broda de
               ==============            (se-intel)
               de se broda da
    ==================================== (ckini-intel)
    de ckini da pa ka ce'u se broda ce'u

## Creation and Deletion: {zi'o}

Relationship diagrams can create and delete data. Note, though, that the
underlying relation is not erased. This is important both for preserving the
behavior of the remaining data, and also for running in reverse. When we
reverse deletion, we get creation of data from within the surrounding bridi.

     da broda de
    ============= (zi'o-del)
    da broda zi'o

We can erase any column of the relation this way.

      da broda de
      ===========    (se-intel)
     de se broda da
    ================ (zi'o-del)
    de se broda zi'o
    ================ (se-intel)
     zi'o broda de

## Monoidal structure: {pamei}, {fa'u}

A [monoid](https://en.wikipedia.org/wiki/Monoid) is a structure with a unit
and a binary operation which associates. Categories are already monoids in one
way, with identity arrows for units and composition as the binary operation.
However, in a monoidal category, there is another unit and binary operation,
and this second monoid gives us the ability to have multiple sumti packed into
a single sumti.

First, we'll need our unit object. This object will only have one way to
represent and relate data. We'll have this be a one-element set, or [singleton
set](https://en.wikipedia.org/wiki/Singleton_(mathematics)). The bridi `{da
pamei de}` relates this set to its lone element. We would like to be able to
say `{le pamei}`, and maybe we will eventually, but for now we'll have to
designate the uniqueness of these sumti in a different way. Note the
single-dashed lines in these rules; these are one-way derivations.

    da pamei di & de pamei di
    ------------------------- (pamei-fa)
            da du de

    da pamei de & da pamei di
    ------------------------- (pamei-fe)
            de du di

Monoidal products are designated with `{fa'u}`, both for sumti and selbri. We
have one basic rule introducing and eliminating them, as usual.

          da broda de & di brode daxivo
    ========================================== (fa'u-intel)
    da fa'u di broda fa'u brode de fa'u davixo

We have reached the point where we need at least four distinct sumti, and so
we will need `{xi}` to give us additional names. Note that, as before with
`{gi'e}` and `{se}`, the symmetry of our proof tree leads to a symmetry
underneath `{fa'u}`.

More importantly, we need rules to let us remove units from monoidal products.
If we have a pair of `(da, @)` where `@` is the unique sumti `{le se pamei}`,
then that's just like having a single value. However, once again, we can't
just forget the underlying relation which is tied to the sumti, so we'll have
to both pattern-match `{fa'u}` and also deliberately ask for `{zi'o}` to
remove the lone irrelevant value from the other end of the pair.

    da fa'u di broda fa'u brode de fa'u zi'o & de pamei di
    ====================================================== (fa'u-unit)
                         da broda de

That awkward rule is formally known by the awkward name of the "unitor". It
has an elegant relative, just called the "unit", which also needs an awkward
phrasing with `{zi'o}`.

    zi'o pamei da & de broda zi'o (pamei-unit)

This axiom can be used like a selbri, and lets us start and stop a computation
by replacing everything with the single unit value from the singleton set.

In addition to creation and deletion, there are also copying and merging. A
copy of a value is a pair of that value twice; when we reverse copying, we get
merging, where pairs are accepted only when they are two copies of the same
value.

    da du de fa'u de (fa'u-copy)

There are also two rules which relate to internal logic and let us move selbri
up and down the monoidal structure. The first says that, if we have a selbri
followed by a copy, then we can duplicate the selbri along the copy.

              da broda de & de fa'u de du di
    ---------------------------------------------------- (selbri-copy)
    da broda de & da broda daxivo & de fa'u daxivo du di

The second says that, if we have a selbri followed by a deletion, then we can
delete the selbri too. However, we don't need a new rule for this.

     da broda de & zi'o pamei di
    ============================= (zi'o-del)
    da broda zi'o & zi'o pamei di

Curious how everything fits together. To be honest, this probably means that
I've made a mistake somewhere.

## More logical operations: {je}, {jonai}, {onai}

We can encode the Booleans as in bicategories of relations. The bridi `{du}`
and `{na du}` serve as true and false respectively. We will have to soon
define `{na}`, but we can put it off a little longer.

In fact, we can generalize the Boolean relations to local maxima on any pair
of relations, asking whether the relation is
[inhabited](https://en.wikipedia.org/wiki/Inhabited_set).

    da broda zi'o & zi'o brode de (max)

We can also take the intersection of relations, and we'll use this to define
`{je}`. An intersection between two compatible relations is very much like
their monoidal product, after we account for plumbing values.

    da fa'u da broda fa'u brode de fa'u de
    ====================================== (je-intel)
             da broda je brode de

`{je}` commutes, but we will not prove that here. We will prove a similarly
easy fact, which is that `{broda je broda}` is equivalent to mere `{broda}`.

             da broda je broda de
    ====================================== (je-intel)
    da fa'u da broda fa'u broda de fa'u de
    ====================================== (fa'u-intel)
          da broda de & da broda de
          =========================        (sw)
                 da broda de

We also have a rule corresponding to what's called the [modular
law](https://en.wikipedia.org/wiki/Modular_lattice) of lattices. This is
important in allegory theory.

    da broda de & da brode di & di se brodi de & de brodi daxivo
    ------------------------------------------------------------ (mod)
          da broda de & de brodi daxivo & da brode daxivo

Perhaps this is already derivable, though? I'm not sure.

We can define the full disjoint union now, but we will need to rely on the
ability to take "codiagonals", or choices, of which side of the union to take.

    da .onai di broda de
    ==================== (onai-intel)
        da broda de

    da .onai de broda di
    ==================== (onai-sym)
    de .onai da broda di

This gives us one way to define `{jonai}`, by taking the disjoint union of any
two bridi by taking the disjoint union of their selbri and terbri.

            da broda di & de brode daxivo
    ============================================= (jonai-pair)
    da .onai de broda jonai brode di .onai daxivo

We can also define `{jonai}` by lifting (co)products which have one end tied
together and tying together their other end as well.

    da broda de gi'onai brode de
    ============================ (jonai-intel)
      da broda jonai brode de

I've inserted a courtesy application of `(onai-intel)` in there, but we should
definitely read both sumti of the selbri as being disjoint unions.

## Negation as elements of the empty set: {nomei}

I warned you that we had many symmetries, and it's time for another one;
symmetrically to `{pamei}`, we have `{nomei}`, which has two nice features. On
`{le nomei}` we have the [empty set](https://en.wikipedia.org/wiki/Empty_set),
which is unique up to unique isomorphism just like the singleton set. On the
other hand, `{le se nomei}` is impossible; there's nothing that satisfies it.
As a result, `{nomei}` without a `{zi'o}` can indicate a kind of logical
wrongness which will be preserved throughout the computation. This is
precisely what makes the empty relation into the false Boolean relation!

Our first rule is just like `(pamei-fa)`. We don't have a corresponding rule
for `(pamei-fe)` though.

    da nomei di & de nomei di
    ------------------------- (nomei-fa)
            da du de

We also need a unitor for the disjoint union with the empty set. If we have
either something or an element of the empty set, then we have something.

    da .onai di broda jonai brode de .onai daxivo & zi'o nomei daxivo
    ================================================================= (onai-unit)
                         da broda de

Here, honestly, being too traditional seems like it might be obscuring what's
going on. Perhaps an alternative rule could be:

    da .onai di broda de & zi'o nomei di
    ==================================== (onai-unit-simpler)
                da broda de

I bet many of these could be simpler.
