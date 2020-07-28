# 3: Categorical Relational Algebra

Let's investigate more properties of the category of sumti and selbri. In this
section, we'll think categorically, and look for abstract patterns which show
up elsewhere in logic. We'll look at products and coproducts, as well as
internal homs. We will be guided by the properties of [bicategories of
relations](https://arxiv.org/abs/1706.00526).

## Typed restriction: {poi}, {ke'a}

We can add any type to any untyped variable in the prenex. This restriction is
one-way, and cannot be logically reversed.

           ro da zo'u bu'a
    ------------------------------ (poi-intro)
    ro da poi ke'a brode zo'u bu'a

Technically, untyped regular logic may not be sensical; practical utterances
will put types on every quantifier. But it is far easier to define our axioms
on `{du}` and other polymorphic relations this way.

Why `{bu'a}`? Because we can logically weaken any bridi by adding irrelevant
typed variables to its prenex, and so `{da}` might not be used. We'll add a
rule just for this sort of logical weakening.

                 bu'a
    ------------------------------ (da-weak)
    ro da poi ke'a broda zo'u bu'a

## Creation and Deletion: {zi'o}

Relationship diagrams can create and delete data. Note, though, that the
underlying relation is not erased. This is important both for preserving the
behavior of the remaining data, and also for running in reverse. When we
reverse deletion, we get creation of data from within the surrounding bridi.

    ro da poi ke'a broda zi'o ro de poi zi'o broda ke'a zo'u:

     da broda de
    ============= (zi'o-del)
    da broda zi'o

We can erase any column of the relation this way.

    ro da poi ke'a broda zi'o ro de poi zi'o broda ke'a zo'u:

      da broda de
      ===========    (se-intel)
     de se broda da
    ================ (zi'o-del)
    de se broda zi'o
    ================ (se-intel)
     zi'o broda de

## Internal homs: {ka}, {ckaji}, {ckini}

We can now search for the [internal
hom](https://ncatlab.org/nlab/show/internal+hom)
([WP](https://en.wikipedia.org/wiki/Hom_functor#Internal_Hom_functor)), the
construction which behaves like functions with closure. It turns out that
relationally, internal homs are built from Cartesian products. To see this,
let's see the universal property: Given a pair `(X, Y^X)`, we can apply the
latter to the former, and get a `Y`. So the universal property comes as a
single arrow `apply : (X, Y^X) -> Y`.

    ro da poi ke'a broda zo'u:

            da broda
    ========================= (ckaji-intel) [CLL 11.4]
    da ckaji pa ka ce'u broda

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
product! But the reader might reasonably object that there was no `{de}` in
the prenex for `(ckaji-intel)`. We can make a more explicit coupling with
`{ckini}`, which does for binary `{ka}` what `{ckaji}` does for unary `{ka}`.
Note that we use explicit `{ce'u}` to mark each hole and keep track of arity.

    ro da poi ke'a broda zi'o ro de poi zi'o broda ke'a zo'u:

              da broda de
    ================================= (ckini-intel)
    da ckini de pa ka ce'u broda ce'u

I can think of a few useful lemmas to try out. First, let's see if we can
connect `{ckaji}` and `{ckini}` without any more rules.

    ro da poi ke'a broda zi'o ro de poi zi'o broda ke'a zo'u:

      da ckaji pa ka ce'u broda de
      ============================    (ckaji-intel)
              da broda de
    ================================= (ckini-intel)
    da ckini de pa ka ce'u broda ce'u

Looks reasonable. What about the symmetry within `{ckini}`? Can we, say, put
`{se}` underneath `{ka}`? Yes, we can.

    ro da poi ke'a broda zi'o ro de poi zi'o broda ke'a zo'u:

     da ckini de pa ka ce'u broda ce'u
     =================================   (ckini-intel)
                da broda de
               ==============            (se-intel)
               de se broda da
    ==================================== (ckini-intel)
    de ckini da pa ka ce'u se broda ce'u

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
designate the uniqueness of these sumti in a different way.

    ro da poi ke'a pamei ro de poi ke'a pamei zo'u:

    da du de (pamei-fa)

    ro da poi zi'o pamei ke'a ro de poi zi'o pamei ke'a zo'u:

    da du de (pamei-fe)

Monoidal products are designated with `{fa'u}`, both for sumti and selbri. We
have one basic rule introducing and eliminating them, as usual.

    ro da poi ke'a broda zi'o ro de poi zi'o broda ke'a
    ro di poi ke'a brode zi'o ro davixo poi zi'o brode ke'a zo'u:

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
remove the lone irrelevant value from the other end of the pair. The good news
is that both ends of `{pamei}` have exactly one member, so it doesn't matter
which way we orient it.

    ro da poi ke'a broda zi'o ro de poi zi'o broda ke'a zo'u:

    da fa'u zi'o broda fa'u pamei de fa'u zi'o
    ========================================== (fa'u-unit)
                   da broda de

That awkward rule is formally known by the awkward name of the "unitor". It
has an elegant relative, just called the "unit", which is implicit.

In addition to creation and deletion, there are also copying and merging. A
copy of a value is a pair of that value twice; when we reverse copying, we get
merging, where pairs are accepted only when they are two copies of the same
value.

There are also two rules which relate to internal logic and let us move selbri
up and down the monoidal structure. The first says that, if we have a selbri
followed by a copy, then we can duplicate the selbri along the copy.

The second says that, if we have a selbri followed by a deletion, then we can
delete the selbri too. However, we don't need a new rule for this.

## More logical operations: {je}, {jonai}, {onai}

We can encode the Booleans as in bicategories of relations. The bridi `{du}`
and `{na du}` serve as true and false respectively. We will have to soon
define `{na}`, but we can put it off a little longer.

In fact, we can generalize the Boolean relations to local maxima on any pair
of relations, asking whether the relation is
[inhabited](https://en.wikipedia.org/wiki/Inhabited_set).

We can also take the intersection of relations, and we'll use this to define
`{je}`. An intersection between two compatible relations is very much like
their monoidal product, after we account for plumbing values.

    ro da poi ke'a broda je brode zo'u:

    da fa'u da broda fa'u brode de fa'u de (je-intro)

`{je}` commutes and is idempotent, but we will not prove that here.

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

    ro da poi ke'a nomei ro de poi ke'a nomei zo'u:

    da du de (nomei-fa)

Here, honestly, being too traditional seems like it might be obscuring what's
going on. Perhaps an alternative rule could be:

    ro da poi ke'a broda ro de poi broda ke'a zo'u:

    da .onai di broda de & zi'o nomei di
    ==================================== (onai-unit)
                da broda de
