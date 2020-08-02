# 5: Set Theory

At this point, we are ready to give the axioms for set theory. We will be
using [ZF](https://en.wikipedia.org/wiki/Zermelo%E2%80%93Fraenkel_set_theory).

Note: The shape of each axiom is also influenced by [Rethinking Set
Theory](https://arxiv.org/abs/1212.6543) and categorical set theory.

## Articles N

Interwoven with building up sets, we'll build up the ability to quantify. As a
start, let's see how we can eliminate a prenex. A `{ro}` quantification works
more or less like in BPFK's formal expansions, but we use `{poi}` instead of
`{noi}`. What is the difference? Logically, I think, nothing; instead, it's
about how the search is done through the possible worlds which result. This is
worth preserving and figuring out more closely, but here we will require all
restrictions to be `{poi}` because that seems to give a better hint to
speakers about how to intuitively reason about the quantification.

    ro da poi ke'a broda zo'u da brode
    ================================== (ro-quant)
             ro broda cu brode

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

## Inline sets: {ce}

We can now give `{ce}`, which is like `{ce'o}` but forgets order. Since order
is forgotten, when I write `{ce ...}` I mean that the set's elements can be
permuted arbitrarily.

    ro da poi ke'a cmima zo'u:

    da cmima da ce ... (ce-intel)

Incidentally, this gives the Axiom of Pairing.

## Articles I: {lo}, {be}

We are not quite yet to defining 1+1=2, but we have something just as great,
`{lo}`. In xorlo, `{lo}` is a generic selection. For BPFK, `{lo}` is in the
[formal gadri
definition](https://mw.lojban.org/papri/BPFK_Section:_gadri#Formal_definitions)
list. Here we are relatively precise about what `{lo}` means, but we also use
nearly the same definition as BPFK, only swapping `{poi}` for `{noi}` and not
claiming any particular difference between the two.

Without further ado, the moment is here.

    zo'u:

    da poi ke'a broda zo'u brode
    ============================ (lo-intel)
         lo broda ku brode

Note that `{lo}` folds a hidden bound value within itself, like with `{zi'o}`.
In addition, the prenex was consumed. When we use `{lo}`, we no longer have a
variable `{da}` bound in scope.

We can also do a `{be}` expansion. `{be}` creates a side condition which must
be moved into the main formula.

    zo'u:

    da poi ke'a broda ku'o de poi broda ke'a ku'o zo'u da brode .ije da broda de
    ============================================================================ (be-intel)
                   de poi broda ke'a zo'u lo broda be de ku brode

We can use the two-dimensional existential quantifier rule here, though, and
obtain a prenexed form which is more ergonomic:

    ro de poi broda ke'a zo'u:

    da poi ke'a broda zo'u da brode .ije da broda de
    ================================================ (be-intel)
                 lo broda be de ku brode

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

There are no implicit `{su'o}` for inner quantifiers here. When we count, we
are counting precisely, and no inner quantifier means no counting.

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

CLL allows for {PA broda} to be shorthand for {PA lo broda}.

    PA lo broda ku brode
    ==================== (pa-lo-sugar) [CLL 6.8]
     PA broda ku brode

BPFK defines {PA broda} as {PA da poi broda}. That sounds familiar, and
indeed, we can recover this definition from a proof.

            PA broda ku brode
           ====================        (pa-lo-sugar)
           PA lo broda ku brode
    ================================== (lo-intel)
    PA da poi ke'a broda ku'o brode de

## Negation: {na}

We now open the door to the ability to say no. First, note that the outer
quantifier `{no}` can effectively act like a negation: If there are zero
results, then we succeed, and if there are any results at all, then we fail.
This is a gentle extension of [negation as
failure](https://en.wikipedia.org/wiki/Negation_as_failure); this is failure
as negation.

So, for unary selbri, we can start out by saying:

    ro da poi ke'a broda zo'u:

    no da broda
    =========== (na-no-unary)
    da na broda

But this is thorny for binary selbri. We will have a pair of one-way rules
which have a round-trip in one direction but not the other.

    ro da poi ke'a broda ro de pok broda ke'a zo'u:

    no da broda no de
    ================= (na-no-binary-both)
     da na broda de

If we made this two-way, then `{na}` wouldn't always be dual to `{no}`.

    ro da poi ke'a broda ro de pok broda ke'a zo'u:

    no da broda de
    -------------- (na-no-binary)
    da na broda de

## Logical Set Operators: {ja}, {jo'e}, {ku'a}

By flipping around the universal properties, we can build some operators and
also define more logical connections. First, let's define `{ku'a}`, the
intersection of two sets.

         lo'i broda je brode ku brodi
    ====================================== (ku'a-intel) [CLL 14.15]
    lo'i broda ku ku'a lo'i brode ku brodi

We know what `{jo'e}` is, too; it's the union of sets. We have the disjoint
union already, and the non-disjoint union simply forgets that its components
come from one option or another. What is `{ja}`, though? Traditionally, in
classical logic, it's an inclusive Boolean OR. We need to preserve all of the
related data, though, and for the OR operation, it's whether only one of the
branches is taken, or both are taken. Those cases are themselves disjoint, and
so we have an equivalence:

    da broda jonai brode jonai ke broda je brode de
    =============================================== (ja-intel)
                da broda ja brode de

This is an awkward amount of data. But now we can define `{jo'e}`:

         lo'i broda ja brode ku brodi
    ====================================== (jo'e-intel) [CLL 14.15]
    lo'i broda ku jo'e lo'i brode ku brodi

Tracing back through the data, on the bottom of the equivalence, we have
elements belonging to one set or the other or possibly both.
