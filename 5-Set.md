# 5: Set Theory

At this point, we are ready to give the axioms for set theory. We will be
using [ZF](https://en.wikipedia.org/wiki/Zermelo%E2%80%93Fraenkel_set_theory).

Note: The shape of each axiom is also influenced by [Rethinking Set
Theory](https://arxiv.org/abs/1212.6543) and categorical set theory.

## Elements: {cmima}

One of the two essential relations of set theory is `{cmima}`, which relates
sets to their elements. Like in some flavors of ZF, in Lojban we cannot forget
to *which* set an element belongs.

Remember, we are using relational logic, and a single set is related to each
of its elements. `{da cmima de}` is, for each particular `{de}`, going to be
true once for each distinct `{da}`.

## Subsets: {steci}

The other essential relation of set theory is `{steci}`, which relates sets to
their subsets using [set
comprehension](https://en.wikipedia.org/wiki/Set-builder_notation).
Interestingly, unlike most flavors of ZF, not only does Lojban preserve which
superset each subset belongs to, but also the unary `{ka}` property which
built it. When we run with steci2 and steci3 but not steci1, then this
effectively selects a choice property out of thin air! Thus, just to implement
`{steci}` will require us to adopt ZFC in full, including the Axiom of Choice.

Thinking categorically, the properties for subsets are compositional; when we
take a subset of a subset, then the resulting set's elements satisfy both
builder properties. This reasoning leads to the following rule:

    pa ka ce'u broda kei steci da de & pa ka ce'u brode kei steci de di
    =================================================================== (steci-trans)
                 pa ka ce'u broda je brode kei steci da di

## Inline sets: {ce}

We can now give `{ce}`, which is like `{ce'o}` but forgets order. Since order
is forgotten, when I write `{ce ...}` I mean that the set's elements can be
permuted arbitrarily.

    da cmima da ce ... (ce-intel)

Incidentally, this gives the Axiom of Pairing.

## Restriction: {poi}, {ke'a}

We can start to move some of this subset logic into quantifiers now, and
recover useful high-level syntax. We can make an analogy between `{poi}` and
`{ka}`, because of the `{ke'a}` and `{ce'u}` holes, as capturing selbri. But
with `{poi}`, we are *restricting* what can be bound. This restriction is
one-way, and cannot be logically reversed.

              da broda de
    ------------------------------- (poi-intro)
    da poi ke'a brode ku'o broda de

Why not, the reader might reasonably ask? After all, changing the number of
results has never mattered before! But consider how this changes if we are
restricting an already-restricted sumti which has other relations already in
context. In that situation, perhaps the `{poi}` restriction is inherently
related to the rest of the context, and cannot be safely removed.

There's a [deep topological
reason](https://en.wikipedia.org/wiki/Alexandrov_topology) why this one-way
situation exists, but to relate it to sets and keep it simple, we can start
with some superset, and remove some elements from it to make a subset just by
filtering. But we can't go in the other direction with a filter which will add
elements. We can only shrink a set when we filter, never grow it.

## Articles I: {lo}, {be}

We are not quite yet to defining 1+1=2, but we have something just as great,
`{lo}`. In xorlo, `{lo}` is a generic selection. For BPFK, `{lo}` is in the
[formal gadri
definition](https://mw.lojban.org/papri/BPFK_Section:_gadri#Formal_definitions)
list. Here we are relatively precise about what `{lo}` means, but we also use
nearly the same definition as BPFK, only swapping `{poi}` for `{noi}` and not
claiming any particular difference between the two.

Without further ado, the moment is here.

    da poi ke'a broda ku'o brode de
    =============================== (lo-intel)
           lo broda ku brode

But that's not all. Let's also add in `{be}` so that we can staple more sumti
in there.

    da poi ke'a broda de ku'o brode di
    ================================== (lo-be)
        lo broda be de ku brode di

Note that `{lo}` folds a hidden bound value within itself, like with `{zi'o}`.

## Quantification I: {no}, {pa}, ...

BPFK formally says that `{lo PA broda}`, where PA is some natural number like
`{no}`, `{pa}`, etc. is equivalent to `{lo broda}` but that the cardinality of
the set of bound values is PA. (BPFK specifically uses the word `{zilkancu}`
for this concept.) We can interpret this as a sort of "truncated" or
all-or-nothing sumti; if the rest of the bridi is satisfied, but when we
collect all of the possible results then the cardinality is wrong, then the
bridi is overall unsatisfied. I hope that this isn't too strange, but if
somebody says {lo re mlatu ku cadzu}, then their utterance ought only be true
when two cats are walking. Now, as usual in our relational logic, *which* two
cats are walking is indeterminate, and there might be many pairs of cats which
satisfy the bridi.

There are no implicit `{su'o}` here. When we count, we are counting precisely.

## Articles II: {lo'i}

Next, we have `{lo'i}`, which selects sets. Specifically, from the BPFK rule,
we have our rule:

    lo se cmima be lo broda cu brode da
    =================================== (lo'i-intel)
          lo'i broda ku brode da

Remember, we can't forget our relationships. But we also can't remember our
forgotten properties. `{lo'i}` quantifiers are satisfied for each subset of
the original set. If we had three things which `{broda}`, then we would bind
eight different sets to `{lo'i broda}`.

## Quantifiers II

We can also quantify `{lo'i}` to force them to have a specific cardinality.
This is done merely by plumbing through the PA.

    lo se cmima be lo PA broda cu brode da
    ====================================== (lo'i-pa-intel)
          lo'i PA broda ku brode da

Since there is only one subset with the same cardinality as the superset,
there's only one way to bind this value. So, in effect, `{lo'i}` with a
quantifier allows us to truncate and collect all at once.

## Building Sets: {kampu}

We now have enough of a basis for the universal set builder, `{kampu}`. This
selbri is very powerful, because for any kampu2, kampu1 will range over *all*
properties. But one of the phrasings of Gödel's Incompleteness is that an
infinite kampu2, like the set of natural numbers, has at least as many
properties as the set of real numbers, which is not enumerable. Practically,
this means that running `{kampu}` backwards might not ever terminate.

Nonetheless, we can still manipulate `{kampu}`. For starters, it is related to
`{ckaji}`.

    pa ka ce'u broda ku kampu lo'i brode
    ==================================== (kampu-ckaji)
    lo'i broda ku ckaji pa ka ce'u brode

This sort of lovely symmetry is called an **adjunction** in category theory,
and they tend to be important whenever they appear naturally. On top, for each
of `{lo'i brode}`, we have in common that they all fit `{broda}`; on bottom;
all of `{lo'i broda}` are characterized by fit to `{brode}`.

We also can give an axiom for `{kampu}` in terms of `{cmima}`, via `{lo'i}`.

    pa ka ce'u broda ku kampu lo'i broda (kampu-def)

Let's continue on to get a classic tautology of informal Lojban and possibly
my favorite theorem:

    pa ka ce'u broda ku kampu lo'i broda (kampu-def)
    ==================================== (kampu-ckaji)
    lo'i broda ku ckaji pa ka ce'u broda
    ==================================== (ckaji-intel)
            lo'i broda ku broda

## Quantifiers III

We can place a natural number directly onto a `{da}` in order to quantify it.
The resulting bridi is, as before, all-or-nothing, based on the cardinality of
results, but otherwise doesn't change the binding. However, since the typical
`{poi}` clause ranges over an entire relation, the cardinality of results
usually can be quite high, and as a result, quantifying `{da}` usually just
leads to getting results in batches.

What's typical isn't guaranteed, though, so there's no rule that will add a
quantifier to `{da}`. We can forget quantifiers, though, and that's a valid
one-way weakening.

    PA da broda de
    -------------- (pa-weak)
     da broda de

Placing a natural number as an outer quantifier onto `{lo}` selects subsets of
the given cardinality from the entire set of results. This interpretation is
congruent with what we can derive from applying existing rule `(lo-intel)` to
an outer quantifier.

           PA lo broda ku brode
    ================================== (lo-intel)
    PA da poi ke'a broda ku'o brode de

And similarly, putting an outer quantifier onto `{lo'i}` selects subsets of
the already-selected subset. If there are four `{mlatu}` total under
consideration, then `{re lo'i ci mlatu}` will first select three cats, then
select two of those, binding a total of twelve times.

## Negation: {na}

We now open the door to the ability to say no. First, note that the outer
quantifier `{no}` can effectively act like a negation: If there are zero
results, then we succeed, and if there are any results at all, then we fail.
This is a gentle extension of [negation as
failure](https://en.wikipedia.org/wiki/Negation_as_failure); this is failure
as negation.

So, for unary selbri, we can start out by saying:

    no da broda
    =========== (na-no-unary)
    da na broda

But this is thorny for binary selbri. We will have a pair of one-way rules
which have a round-trip in one direction but not the other.

    no da broda no de
    ================= (na-no-binary-both)
     da na broda de

If we made this two-way, then `{na}` wouldn't always be dual to `{no}`.

    no da broda de
    -------------- (na-no-binary)
    da na broda de
