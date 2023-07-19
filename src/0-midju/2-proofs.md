# 2: Definitions and Proofs

Let's define some valsi, just like any good Lojban tutorial. Since I assume
that the reader has already consumed an introductory tutorial and a grammar
reference, I will attempt to focus on the formal side of our budding
correspondence between Lojban and categorical logic.

## Identity: du

The first defined selbri we'll discuss is `{du}`. With `{du}`, we can relate
any object to itself:

    ko'a du ko'a (id-refl) (bicat-equality)

"id" is short for "identity", and that's precisely what `{du}` does. "refl" is
short for "reflexive", which is one of the three properties of [equivalence
relations](https://en.wikipedia.org/wiki/Equivalence_relation). An equivalence
relation is a relational way to talk about equality, and `{du}` definitely
should be an equivalence relation!

Our references starting with "bicat-" are to the bicategory-of-relations
logical structure. This structure includes several axiom schemata which we
will instantiate over multiple different rules.

Often we'll want to work underneath a single prenex, focusing on the body of
the bridi. In addition, we'll want to use the classic prenex-expansion and
prenex-contraction rules from CLL. And finally, [regular
logic](https://en.wikipedia.org/wiki/Regular_category#Regular_logic_and_regular_categories)
requires a single prenex to be configured for each implication rule. So, for
most rules, we'll configure one prenex for two bridi bodies.

Let's continue with `{du}`. The second property is called "symmetry", and it
means that we can swap the sumti without changing the bridi:

    go ko'a du ko'e gi ko'e du ko'a (id-sym) (bicat-equality)

Note that `{go}` is also symmetric! In relational logic, many rules are
reversible. This is an instance of the [microcosm
principle](https://ncatlab.org/nlab/show/microcosm+principle), where algebraic
structures tend to show up within their own categorified presentations. We will
eventually show that rules can be manipulated within Lojban itself.

## Conjunction: {ge}, {gi}

A rule can have multiple assumptions. Here, I'll use ``{ge}`` to conjoin two
bridi into a single bridi. We could also have an extralogical ampersand, or
just some extra whitespace, but it will be much simpler for us to fully
internalize the idea of one bridi which represents the conjunction of multiple
bridi from the start.

    ro da ro de ro di zo'u:

    ge da du de gi de du di
    ======================= (id-trans) (bicat-equality)
           da du di

Lojban has several options for bridi connectives. We will focus on ``{gi}``
because it allows for nesting prenices, which will become essential to how we
compose rules.

There are many facts about conjunction, but the main one we'll start with is
that it is commutative:

    ro bu'a ro bu'e zo'u:

    ge bu'a gi bu'e
    =============== (ge-sym)
    ge bu'e gi bu'a

And it is legal to rewrite under only one branch of a ``{gi}``. I'll give only
one rule for now, but the other one should be fine, too.

    ... zo'u:

    bu'a         | ge bu'a gi bu'i
    ~~~~ (rule)  | ~~~~~~~~~~~~~~~ (rule under ge)
    bu'e         | ge bu'e gi bu'i

Why did I use a squiggly line ~~~ for the rules? Because the RHS is reversible
only if the LHS is also reversible. I'm pattern-matching the reversibility of
the rule! And also the prenex. Lots of stuff is matched here.

## NFOL N: Identity

Some concepts which universally/categorically identify various objects,
including relations, are
[nonfirstorderizable](https://en.wikipedia.org/wiki/Nonfirstorderizability),
or "NFOL". The idea is that the ability of SOL to quantify over all properties
in the universe grants us the ability to imagine what a global view of some
object might be like. As a classic and powerful first example, we can now give
a redefinition of `{du}` in NFOL terms.

    ro da ro de zo'u:

             da du de
    ========================== (id-def)
    ro bu'a zo'u da .o de bu'a

This rule is a second-order *definition*; such rules are not possible within
first-order logic. There are many reasons to justify this sort of explanation
as a definition, but the primary reason is that they could be entered into
Lojban dictionaries. For example, we could define ``{du}`` as:

    ro bu'a zo'u x₁ .o x₂ bu'a

And give any tautology, like ``(id-refl)``, as an example:

    ro da zo'u da du da

Once so defined, ``{du}`` is technically not in terms of any particular
selbri; rather, it is a global property of *all* selbri!

## Conversion Operators: {se}

`{se}` is one of what I will call "operators" on selbri; they are cmavo which
alter the structure around a selbri without changing the relation itself.
`{se}` also has reversible rules, as one might expect.

    ro da ro de zo'u:

     da broda de
    ============== (se-intel) [CLL 5.11]
    de se broda da

"intel" is short for "introduction" and "elimination", which are traditionally
two separate rules. With relational logic, it's one reversible rule instead.
In brackets, "CLL 5.11" is a citation.

We can start to describe a conversion-normal form for selbri by imagining
applying `(se-intel)` backwards whenever possible, eliminating `{se}`.

Finally, let's finish our tour of natural deduction by building a proof. A
proof is a tree of rules, with the conclusions of one rule becoming the
assumptions of the next rule. When a proof only assumes axioms, then I will
call its conclusions theorems, and consider them as honorary axioms. Here is
our first proof; it starts from an axiom and applies a single rule, concluding
in our first theorem.

    ro da zo'u:

     da du da   (id-refl)
    =========== (se-intel)
    da se du da

What we have concluded is that, in any context, `{da se du da}` is a true
bridi. The reason that this conclusion needs no context is because `(id-refl)`
is always true. We could give this theorem a name and reuse it in the future.
Here's another useful theorem.

    ro da ro de zo'u:

     da du de
     ========   (id-sym)
     de du da
    =========== (se-intel)
    da se du de

This theorem states the symmetry of `{du}` using `{se}`.

# Composition: {.ije}, {gi'e}

Let's introduce some sugar. When there is no need to nest a prenex, we can
transform forethought connectives into afterthought connectives. In
particular:

    ro bu'a ro bu'e zo'u:

    ge bu'a gi bu'e
    =============== (.ije-intel) [CLL 14.5]
    bu'a .ije bu'e

When a variable shows up in two different bridi, then we might be able to
combine them. The underlying relations compose cleanly, so most of the
difficulty is in Lojbanic arrangement. We need to use the concept of
contravariance, and turn around one of the bridi, in order to apply `{gi'e}`.

    ro bu'a ro bu'e ro da ro de ro di zo'u:

    da bu'a de .ije da bu'e di
    ========================== (gi'e-intel)
     da bu'a de gi'e bu'e di

Our ampersand `{.ije}` happens to commute:

    ro bu'a ro bu'e zo'u:

    bu'a .ije bu'e
    =============== (.ije-intel)
    ge bu'a gi bu'e
    =============== (ge-sym)
    ge bu'e gi bu'a
    =============== (.ije-intel)
    bu'e .ije bu'a  (.ije-sym)

So `{gi'e}` commutes as well:

    ro bu'a ro bu'e ro da ro de ro di zo'u:

     da bu'a de gi'e bu'e di
    ========================== (gi'e-intel)
    da bu'a de .ije da bu'e di
    ========================== (.ije-sym)
    da bu'e di .ije da bu'a de
    ========================== (gi'e-intel)
     da bu'e di gi'e bu'a de   (gi'e-sym)

Let's do a deduction that can't be done with only two dimensions. Recall that
`{gi'e}` groups to the left.

    ro da ro de ro di zo'u:

      da broda da gi'e brode de gi'e brodi di
     ==========================================   (gi'e-intel)
     da broda da gi'e brode de .ije da brodi di
     ==========================================   (gi'e-intel)
    da broda da .ije da brode de .ije da brodi di
    ============================================= (.ije-sym)
    da broda da .ije da brodi di .ije da brode de
    ============================================= (gi'e-intel)
     da broda da gi'e brodi di .ije da brode de
     ==========================================   (gi'e-intel)
      da broda da gi'e brodi di gi'e brode de

In the middle, those two triangles of assumptions are each two-dimensional,
but stacked on top of each other, giving a three-dimensional structure to the
proof.

To get more comfortable with proofs, let's do another one. This proof is
closer in phrasing to traditional categorical texts, where given `f : X -> Y`
and `g : Y -> Z`, one can form `f;g : X -> Z`. Note that, unlike in
traditional notation, we do not forget our intermediate connecting values
between relations.

    ro da ro de ro di zo'u:

     da broda de .ije de brode di
    =============================== (se-intel under .ije)
    de se broda da .ije de brode di
    =============================== (gi'e-intel)
     de se broda da gi'e brode di

One more rule connects `{gi'e}` back to `{du}` by letting us effectively
rewrite across an equality. This is like performing a sort of unification,
too.

    ro da ro de ro di zo'u:

    da broda de .ije de du di
    ========================= (du-intel)
           da broda di

We can use both of these new rules to write the more categorically-oriented
proof, which says that composition with the identity relation has no effect.

    ro da ro de ro di zo'u:

     de se broda da gi'e du di
    ============================ (gi'e-intel)
    de se broda da .ije de du di
    ============================ (se-intel under .ije)
     da broda de .ije de du di
     =========================   (du-intel)
           da broda di
          ==============         (se-intel)
          di se broda da

Along with the other rules introduced, we now have a dagger category on
selbri, with `{du}` as our identity selbri, `{gi'e}` for composition, and
`{se}` for the dagger. I assert that this is actually a regular category as
well, and that our prenices connect us to untyped regular logic.

## Scoping

Scoping comes into play at this time. Up until this point, we have not
explained the scoping and binding of our `{da}` variables. However, scoped
negation and plural quantifiers do not work with our `(se-intel)` rule. The
fix comes from work done on bicategories of relations and [regular
logic](https://en.wikipedia.org/wiki/Regular_category#Regular_logic_and_regular_categories):
All quantifiers must either be lifted to the prenex, or be single positive
existential quantifiers.

## Omitted sumti: {zo'e}

The short version: `{zo'e}` should be read as `{zi'o}` if you're feeling
charitable, and if not, then apply the following formal process.

Lojban does not have a strong syntactic barrier between unary relations (mere
sets, properties) and binary relations; both are encoded as selbri. This will
bite us again and again, such as when we define `{poi}` and `{ke'a}`, or
`{ka}` and `{ce'u}`, because arity matters and we have no way to annotate it
other than by manually counting and requiring every place to be specified.

So, here's the first part of the `{zo'e}` convention, and more will be added
as needed. Whenever a rule has the form:

    ro da zo'u:

    da bu'a

You may, if the selbri of `{bu'a}` needs to be binary, substitute the
augmented rule:

    ro da ro de zo'u:

    da bu'a de

And vice versa. The point is that the arity of the main selbri should not be
an impediment to applying most deductive rules.

## Interpreting natural deduction

Each logic in natural deduction can be used to give judgements, like "P is
true." Wikipedia lists "P is possibly true," "P is always true," "P is true at
a given time," and "P is constructible from the given resources," as other
examples in other logics. What does relational logic give us? Relational logic
judgements are of the form "P is true at least once;" we can imagine that a
bridi is not just true or false, but true for each of the many possible values
that are being related, and that there may be multiple worlds which provide a
context in which a statement is true.

## Logical Sugar: {.e}, {je}

Lojban contains sugar syntax for some connectives, known as the "logical
connectives". This means that when we see `{.e}` or `{je}`, then just like
with `{gi'e}`, we must remember that there are two underlying bridi.

First, whenever `{.ije}` connects two bridi which only differ in a single
sumti, then we may use `{.e}` instead.

    ro da ro de zo'u:

    da broda .ije de broda
    ====================== (.e-intel) [CLL 10.17, 14.6, 14.12, 16.10]
        da .e de broda

Second, whenever `{.ije}` connects two bridi which only differ in selbri, then
we may use `{je}` instead.

    ro da ro de zo'u:

    da broda de .ije da brode de
    ============================ (je-intel) [CLL 9.15, 14.12]
        da broda je brode de

Over the next few pages, we'll explore ever-more-powerful sugar.
