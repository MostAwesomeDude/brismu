# 3: Categorical Relational Algebra

Let's investigate more properties of the category of sumti and selbri. In this
section, we'll think categorically, and look for abstract patterns which show
up elsewhere in logic. We'll look at products and coproducts, as well as
internal homs. We will be guided by the properties of [bicategories of
relations](https://arxiv.org/abs/1706.00526) and regular and coherent logic.
In fact, I'm going to introduce some basic connectives, and then introduce the
inference rules from Appendix B of this paper.

## Typed restriction: {poi}, {ke'a}

We can add any type to any untyped variable in the prenex. This restriction is
one-way, and cannot be logically reversed.

           ro da zo'u bu'a
    ------------------------------ (poi-intro)
    ro da poi ke'a brode zo'u bu'a

Why `{bu'a}`? Because we can logically weaken any bridi by adding irrelevant
typed variables to its prenex, and so `{da}` might not be used. We'll add a
rule just for this sort of logical weakening.

         bu'a
    --------------- (da-weak)
    ro da zo'u bu'a

Another `{zo'e}` convention appears here; restrictions can occur over
non-unary selbri. For example, I might want to talk about cats with an
utterance like `{ro da poi ke'a mlatu}`; in that case, the implicit `{zo'e}`
should be read as `{zi'o}`; I am talking only about the cats themselves and
not their species. This doesn't mean that we've cleaved apart cats and their
species; because cats are still identified by `{mlatu}`, the inherent ability
to be related is still present. In other words, we are keeping the type
information.

Finally, we can have a dependent type; we can range over relations, and then
range over elements of the relation. Again, observe the `{zo'e}` convention.

              ro bu'a zo'u bu'e
    ------------------------------------- (da-dep-weak)
    ro bu'a ro da poi ke'a bu'a zo'u bu'e

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
     ==============  (se-intel)
     de se broda da
    ================ (zi'o-del)
    de se broda zi'o
    ================ (se-intel)
     zi'o broda de

It is fair to ask, after the previous section, whether `{zi'o}` can be removed
from underneath `{poi}`. No, there is a strict separation between
quantification and relation in coherent logic, and so we need to complete our
quantifications before we can do relational restrictions. We'll see how to
make the syntax lighter in later chapters.

## Internal homs: {ka}, {ckaji}, {ckini}

We can now search for the [internal
hom](https://ncatlab.org/nlab/show/internal+hom)
([WP](https://en.wikipedia.org/wiki/Hom_functor#Internal_Hom_functor)), the
construction which behaves like functions with closure. It turns out that
relationally, internal homs are built from Cartesian products. To see this,
let's see the universal property: Given a pair `(X, Y^X)`, we can apply the
latter to the former, and get a `Y`. So the universal property comes as a
single arrow `apply : (X, Y^X) -> Y`.

    ro bu'a ro da zo'u:

            da bu'a
    ======================== (ckaji-intel) [CLL 11.4]
    da ckaji pa ka ce'u bu'a

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

    ro bu'a ro da ro de zo'u:

               da bu'a de
    ================================ (ckini-intel)
    da ckini de pa ka ce'u bu'a ce'u

I can think of a few useful lemmas to try out. First, let's see if we can
connect `{ckaji}` and `{ckini}` without any more rules.

    ro bu'a ro da ro de zo'u:

       da ckaji pa ka ce'u bu'a de
       ===========================   (ckaji-intel)
               da bu'a de
    ================================ (ckini-intel)
    da ckini de pa ka ce'u bu'a ce'u

Looks reasonable. What about the symmetry within `{ckini}`? Can we, say, put
`{se}` underneath `{ka}`? Yes, we can.

    ro bu'a ro da ro de zo'u:

     da ckini de pa ka ce'u bu'a ce'u
     ================================   (ckini-intel)
                da bu'a de
               =============            (se-intel)
               de se bu'a da
    =================================== (ckini-intel)
    de ckini da pa ka ce'u se bu'a ce'u

## Truth, Falsity: {cei'i}, {gai'o}

Truth is not very interesting; in any context, we may conclude an empty,
vacuous truth.

    cei'i (cei'i) (bicat-truth)

More interestingly, we can be in a state of negation. From such a state, we
have a [principle of
explosion](https://en.wikipedia.org/wiki/Principle_of_explosion), and we may
prove anything. Relationally, from falsity there are no possible worlds, and
so we may assign these zero possible worlds any imaginary properties that we
like, since there are no witnesses to contradict our imaginations.

    ro bu'a zo'u:

    gai'o
    ----- (gai'o) (bicat-falsity)
    bu'a

I've added a courtesy prenex, but `(gai'o)` is usually going to be an
arbitrary bridi composed from already-introduced variables, so it won't be
necessary.

I don't really like the cmavo for these predicates, but there are no good
alternatives.

## Singleton, Empty Set: {nomei}, {pamei}

First, we'll need our unit object. This object will only have one way to
represent and relate data. We'll have this be a one-element set, or [singleton
set](https://en.wikipedia.org/wiki/Singleton_(mathematics)). The bridi `{da
pamei de}` relates this set to its lone element. We would like to be able to
say `{le pamei}`, and maybe we will eventually, but for now we'll have to
designate the uniqueness of these sumti in a different way; we'll say
`{tarci.bu}` for the singleton object.

    ro da poi pamei ke'a zo'u:

    da du tarci.bu (pamei) (bicat-singleton)

For the empty set, however, the elements don't exist. This is a form of
negation.

    ro da poi nomei ke'a zo'u:

    gai'o (nomei) (bicat-empty)

## Projection: {fa'u}, {nomoi}, {pamoi}

To characterize pairs, we will enlist some helpers. `{fa'u}` designates
ordered pairs of elements, like `{le se remei}`. We can address each member of
a pair with `{nomoi}` and `{pamoi}` respectively.

    ro da ro de zo'u:

    da nomoi da fa'u de (fa'u-nomoi) (bicat-projection)

    .i

    de pamoi da fa'u de (fa'u-pamoi) (bicat-projection)

We have reached the point where we need at least four distinct sumti, and so
we will need `{xi}` to give us additional names. Note that, as before with
`{gi'e}` and `{se}`, the symmetry of our proof tree leads to a symmetry
underneath `{fa'u}`.

## Pairs: {remei}

We can also draw from pairs of relations. It's a bit verbose; we have to draw
from the pair, and then lay out the cardinal and ordinal relationships with an
existential quantifier.

    ro da poi ke'a broda fa'u brode zo'u:

    de di zo'u da remei de fa'u di .ije de nomoi da .ije di pamoi da (remei) (bicat-pair)

This is the first time we've used such existential quantifiers. Unlike the
top-level prenex, each existential quantification is scoped and can nest, with
order mattering. In general, existential quantifiers aren't for top-level
values that we want to capture and manipulate, but for inner plumbing in
composite expressions. We'll see in a bit how to introduce and eliminate them
more generally.

## Disjoint Unions and Inclusions: {.a}, {.onai}, {dijro}

We can form disjoint unions for sumti by using `{.onai}`, and for selbri by
using `{jonai}`.

In lieu of a community-accepted selbri, I will use the placeholder `{dijro}`,
with the following place structure:

    d1 is a disjoint union with value d2 from amongst possible types d3

Which is a useless mouthful on its own, but can be made worse with
`{zulrdijro}` and `{pritrdijro}`, which have place structures:

    z1 is a left-hand/first/fixed disjoint union with value z2

    p1 is a right-hand/second/varying disjoint union with value p2

This is enough to be able to create binary coproducts.

    ro da ro de zo'u:

    da .onai de zulrdijro da (zulrdijro) (bicat-injection)

    da .onai de pritrdijro de (pritrdijro) (bicat-injection)

We can also eliminate binary coproducts if they're formed in the prenex,
leading to disjunction. While binary coproducts have an XOR behavior, since
disjoint unions can only take on one possible value at a time, disjunction of
bridi allows for an inclusive OR behavior, and so we'll use a different word.

    ro da poi ke'a broda jonai brode zo'u:

    da zulrdijro de .ija da pritrdijro de (ija-intro) (bicat-case)

The existential quantifiers are not wrong; they are closely scoped to each
component bridi. `{de}` ranges over two different types here, one for each
side of the disjoint union.

This next rule is part of proofs by contradiction. Since a disjoint union
can't be in two states at once, if we have existential witnesses which see it
in both states, then we can conclude falsity.

    ro da poi ke'a broda jonai brode zo'u:

    da zulrdijro de .ije da pritrdijro de
    ------------------------------------- (ije-false) (bicat-case)
                    gai'o

## Distributivity

Before we get to the difficult-to-visualize rules, let's handle the
distributive law quickly. There is only one distributive law, and it relates
`{.a}` and `{.e}` in a one-way derivation. For any three bridi in context:

          bu'a .ije bu'e .ijabo bu'i
    -------------------------------------- (ija-dist) (bicat-distributivity)
    bu'a .ijebo bu'e .ija bu'a .ijebo bu'i

This rule is reminiscent of, but not literally, CLL 14.8. We don't want to
really deal with the syntax of `{bo}` in general, and it's just here for
grouping; we will leave the full details of parentheses to the interested (and
masochistic) reader.

## Conjunction & Disjunction

We continue to be extremely general and work under a single fixed context.
First, a pair of rules for dismissing conjunction:

    bu'a .ije bu'e
    -------------- (ije-left) (bicat-conjunction)
         bu'a

    bu'a .ije bu'e
    -------------- (ije-right) (bicat-conjunction)
         bu'e

And now, a new sort of diagram, for a two-dimensional rule. Here we will take
pairs of rules on the left, and create a new composite rule on the right. This
will allow us to cleanly combine pairs of rules in a natural way.

    bu'a  |
    ----  |
    bu'e  |       bu'a
          |  -------------- (ije) (bicat-conjunction)
    bu'a  |  bu'e .ije bu'i
    ----  |
    bu'i  |

I hope that this makes sense, because we're about to take the duals and do it
all again. First, a pair of rules for introducing disjunction:

         bu'a
    -------------- (ija-left) (bicat-disjunction)
    bu'a .ija bu'e

         bu'e
    -------------- (ija-right) (bicat-disjunction)
    bu'a .ija bu'e

And then another two-dimensional rule for removing disjunction:

    bu'a  |
    ----  |
    bu'i  |  bu'a .ija bu'e
          |  -------------- (ija) (bicat-disjunction)
    bu'e  |       bu'i
    ----  |
    bu'i  |

## Existential Quantifiers: {su'o}

I'm only mentioning `{su'o}`. If community convention emerges, then `{su'o
da}` might be the correct way to instantiate existential quantifiers, rather
than `{da}`. However, right now, it's not mandatory to add `{su'o}` in order
to be correct and so I am just leaving a note and doing it here in this
section.

Once again, we are going to forge a two-dimensional rule. This one is
reversible. On the left, we have a context which holds for all possible
values; on the right, we have individual values which witness each instance of
a relation.

    ro da poi ke'a broda zo'u:  ||
                                ||  su'o da zo'u bu'a
    bu'a                        ||  ----------------- (su'o-intel) (bicat-existential quantifier)
    ----                        ||        bu'e
    bu'e                        ||

It is crucial to keep in mind that universal claims live at the top, at the
prenex, and existential claims are scoped to particular formulae in the body.

Think carefully about this rule, in both directions, to be sure that it makes
sense. From left to right, if a rule always holds under some context, and we
can choose a value from that context which witnesses the first part of the
rule, then we can conclude the second part. From right to left, if we have a
conditional conclusion which is waiting for a witness, then for all of the
possible witnesses, it would be the case that conditionally we could draw the
conclusion given the premise.

Note also that we assumed that `{da}` was free. We will make this assumption a
lot. In fact...

## Frobenius

Let's give the Frobenius law. This rule allows us to stretch the scope of
existential quantifiers and include many component bridi. For a final time,
please assume a fixed context under which `{da}` is free.

    bu'a .ije su'o da zo'u bu'e
    --------------------------- (ije-frob) (bicat-Frobenius)
    su'o da zo'u bu'a .ije bu'e
