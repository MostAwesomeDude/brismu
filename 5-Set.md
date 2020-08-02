# 5: Set Theory

At this point, we are ready to give the axioms for set theory. We will be
using [ZF](https://en.wikipedia.org/wiki/Zermelo%E2%80%93Fraenkel_set_theory),
and using relational facts from [Relational Set
Theory](https://www.researchgate.net/publication/226561376_Relational_set_theory).

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

## The Lattice of Relations: {kairni'i}

Note: As usual, community conventions matter. `{kairpau}` is an alternative
lujvo to `{kairni'i}` with some usage and a looser definition. I'm not married
to either lujvo.

There is a lattice of relations. Since relations are subsets of Cartesian
products, this lattice carries lots of the structure of the poset of subsets.
Informally, I'll call the central relation of the lattice the
selbri-implies-selbri relation, and say that some selbri lattice-implies another
selbri.

We need a word like `{nibli}`, but for `{ka}` instead of `{du}`. I'll give the
nonce lujvo `{kairni'i}`, with place structure "k1 (ka) is a
subrelation/tecyselbri of k2 (ka) (arities must match)". This relation is
transitive:

    ro da poi bridi ke'a ku'o ro de poi bridi ke'a ku'o ro di poi bridi ke'a zo'u:

    da kairni'i de .ije de kairni'i di
    ================================== (kairni'i-trans)
              da kairni'i di

Note that it's also typed, because we're operating exclusively on selbri.
Another property of the lattice is that there are greatest and least
relations, which we know how to express, if in a slightly awkward fashion.

    ro da poi bridi ke'a zo'u:

    pa ka je'unai kei kairni'i da (kairni'i-zero)

    da kairni'i pa ka je'u (kairni'i-one)

We can witness the infima and suprema of the lattice with more nonce lujvo,
`{kairkanxe}` and `{kairvlina}` respectively. We have a choice of laws,
somewhat; I'll go with these.

    da kairkanxe da de
    ================== (kairkanxe-intel)
      da kairni'i de

    de kairvlina da de
    ================== (kairvlina-intel)
      da kairni'i de

## Elements, Functions: {cmima}, {fancu}

One of the two essential relations of set theory is `{cmima}`, which relates
sets to their elements. Like in some flavors of ZF, in Lojban we cannot forget
to *which* set an element belongs.

Remember, we are using relational logic, and a single set is related to each
of its elements. `{da cmima de}` is, for each particular `{de}`, going to be
true once for each distinct `{da}`.

We won't get far without functions, so we'll ignore the lack of community
standard and start with `{fancu}`. We'll preserve the original place
structure and sharpen the definition to, "f1 is a function with domain f2
(set) and range/codomain f3 (set) and underlying relation f4 (binary ka)."
Under this definition, functions have types, and all functions are merely
relations satisfying a functional property.

So, what's this functional property? There's actually a family of them, but
we'll start with the most general ones. We're going to take a selbri `{broda}`
and bend it around a little, to something like `{de se broda da .ije broda
di}`, composing it with itself, which gives a self-relation on a set. Now,
let's compare that self-relation to `{da du di}`; this gives us our family of
functional properties.

The first property we'll build is univalence, sometimes
called *the* functional property: A relation R is univalent if R's dagger
composed with R lattice-implies the identity relation on R's codomain.
Consider, for example, `{mlatu}`. If we take each cat species to its
collection of cats, and then take each resulting collection to all of the
species in each collection, then we arrive back at each individual species.
More generally, for binary relations:

    zo'u:

     pa ka ce'u .e ce'u broda de kei kairni'i pa ka ce'u du ce'u
    ============================================================= (pagyfancu-intel)
    zi'o pagyfancu le'i broda le'i se broda pa ka ce'u broda ce'u

I'm not going to further use or define `{le'i}`. What's going on here? For
lack of a better convention, f1 is the "name", or "handle", of the function;
this is not just a label, but the actual reference by which functions are
internally identified in the logic. The good news is that you should already
know roughly what this means if I say `{lo pagyfancu}`; the bad news is that
we're still going to be irritatingly formal about the whole affair. A similar
deal applies to the sets in the function type; they are technically supposed
to be references to types, but we don't have quantification over types (yet?)

And why `{pagyfancu}`? First, univalence only guarantees that we have [partial
functions](https://en.wikipedia.org/wiki/Partial_function), not total
functions. So we have the definition, "f1 is a partial function with domain
f2, codomain f3=p2, underlying relation f4, but only covering subset p1 of the
codomain." There are two ways to get to total functions. First, we can
trivially transform between partial functions on some set S, and total
functions on S + 1. Accordingly:

    ro da poi ke'a fancu zo'u:

                     da pagyfancu ko'a ko'e pa ka ce'uxino ce'uxipa bu'a
    ===================================================================================== (fancu-partial)
    da fancu ko'a ko'e .onai le pamei pa ka ce'uxipa se bu'a ce'uxino gi'onai du tarci.bu

This rule was made larger by subscripts on the `{ce'u}` so that I could ensure
that the arguments are in the right order. It's very bulky, and it adds an
extra coproduct. Instead, we can show that there's another functional
property, totality, which is sort of like a dual to univalence: A relation R
is total if R composed with its dagger is lattice-implied by the identity
relation. This is like doing a basic covering check to ensure that every value
in the domain is mapped to at least one thing in the codomain.

    ro da poi ke'a pagyfancu le'i broda le'i se broda zo'u:

    pa ka ce'u du ce'u kei kairni'i pa ka ce'u .e ce'u broda de
    =========================================================== (fancu-intel)
      da fancu le'i broda le'i se broda pa ka ce'u broda ce'u

So, for example, it is the case that `{fancu le'i mlatu le'i se mlatu pa ka
ce'u mlatu ce'u}`; this function has the same data as the relation (it is a
subset of the Cartesian product of cats and cat species) but we are now
carrying additional information which proves that it is functional.

We can examine equality of relations, carefully. We can't simply ask whether
relations are equal, but we can both witness it syntactically and also
logically. First, if two relations lattice-imply each other, then they're
equivalent.

    ro da poi bridi ke'a ku'o ro de poi bridi ke'a zo'u:

    da kairni'i de .ije de kairni'i da
    ================================== (kairni'i-sym)
                da du de

Now, if we don't just have lattice-implication in the univalence property, but
full inversion, so that R composed with its dagger is equivalent to the
identity relation, then R is an injection. The nonce lujvo `{ficyfancu}` has
place structure, "f1, f2, f3, f4 as normal, and also for all x3 in f2, {x1
frica x2} => {f1(x1) frica f1(x2)}." As you can see, this definition got a
little rich, but injections are complicated.

    ro da poi fancu ko'a ko'e zo'u:

    da fancu ko'a ko'e de .ije de kairni'i pa ka ce'u du ce'u
    ========================================================= (ficyfancu-intel)
                    da ficyfancu ko'a ko'e de

Dually, surjections technically have more data but are specified in roughly
the same way, with R's dagger composed with R yielding the identity relation.
The nonce lujvo `{gairfancu}` has place structure "function f1 has domain
f2=g1 covering codomain f3=g2 with the fact that for all x1 in f2, exists x2
in f3 with f1(x1) = x2."

Note that if f2 and f3 were proper sets, then `{gacri}` could be defined as,
among other things, a covering set! This means that when we run
`(gairfancu-intel)` in reverse, we are invoking the Axiom of Choice.

    ro da poi fancu ko'a ko'e ku'o ro de poi bridi ke'a zo'u:

    da fancu ko'a ko'e de .ije pa ka ce'u du ce'u kei kairni'i de
    ============================================================= (gairfancu-intel)
                      da gairfancu ko'a ko'e de

Finally, as a definition, a bijection is both an injection and surjection,
with nonce lujvo `{mitfancu}`, "isomorphism f1 has domain f2=m1 and codomain
f3=m2, and in that direction, has witnessing relation f4=m3."

    ro da poi fancu ko'a ko'e ku'o ro de poi bridi ke'a zo'u:

    da ficyfancu je gairfancu ko'a ko'e de
    ====================================== (mitfancu-intel)
           da mitfancu ko'a ko'e de

And bijections really are isomorphisms. Maybe that's provable with what we've
got, but I'll just give it as an axiom:

     ro da poi mitfancu ko'a ko'e zo'u da mitfancu ko'a ko'e pa ka ce'u bu'a ce'u
    =============================================================================== (mitfancu-iso)
    ro da poi mitfancu ko'e ko'a zo'u da mitfancu ko'a ko'e pa ka ce'u se bu'a ce'u

## Subsets: {steci}

The other essential relation of set theory is `{steci}`, which relates sets to
their subsets using [set
comprehension](https://en.wikipedia.org/wiki/Set-builder_notation).
Interestingly, unlike most flavors of ZF, not only does Lojban preserve which
superset each subset belongs to, but also the unary `{ka}` property which
built it. When we run with steci2 and steci3 but not steci1, then this
effectively selects a choice property out of thin air! Thus, just to implement
`{steci}` will require us to adopt ZFC in full, including the Axiom of Choice.

Fortunately, we are in a position to do just that. We'll relate `{steci}` to
surjections by choosing inverse functions.

    ro da poi bridi ke'a ku'o ro de poi cmima ke'a ro di poi cmima ke'a zo'u:

             pa ka ce'u bu'a kei steci de di
    ================================================= (steci-intel)
    zi'o gairfancu di de pa ka ce'u bu'a gi'e du ce'u

Read carefully. On the top, we have a unary selbri, and on the bottom, we
invoke it as part of a binary selbri. You could read the bottom function as
both calling the top relation as a subroutine on the input, and also copying
the input to the output.

Also, I'm using live sets here, despite using labels earlier. Sorry not sorry.
I'll keep figuring it out.

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

    lo se cmima be lo broda cu brode
    ================================ (lo'i-intel)
          lo'i broda ku brode

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
`{ckaji}`!

    pa ka ce'u broda kei kampu lo'i brode
    ===================================== (kampu-ckaji)
    lo'i broda ku ckaji pa ka ce'u brode

This sort of lovely symmetry is called an **adjunction** in category theory,
and they tend to be important whenever they appear naturally. On top, for each
of `{lo'i brode}`, we have in common that they all fit `{broda}`; on bottom;
all of `{lo'i broda}` are characterized by fit to `{brode}`.

We also can give an axiom for `{kampu}` in terms of `{cmima}`, via `{lo'i}`.

    pa ka ce'u broda kei kampu lo'i broda (kampu-def)

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
