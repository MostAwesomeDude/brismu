# Non-Logical Connectives

This section is about set theory, which we will frame as the study of
`{cmima}`. `{cmima}` is our first example of a **non-logical connective**; it
is a way of assembling *bridi* which cannot be reduced to mere definitions and
so cannot be defined purely as a relation between logically-defined *bridi*.

Traditionally, set theorists study **elementhood**, which we express with
`{cmima}`.  There is also the notion of **subset**, expressed in our database
with the CLL-era irregular *lujvo* `{gripau}`, which is more amenable to
structural study.

## Elementhood

First, we mention elementhood, traditionally studied through a collection of
axioms known as ZF
([WP](https://en.wikipedia.org/wiki/Zermelo%E2%80%93Fraenkel_set_theory),
[nLab](https://ncatlab.org/nlab/show/ZFC)). ZF is often combined with an Axiom
of Choice, which we will discuss later; the reader is advised to carefully note
the distinction between "ZF" and "ZFC".

For now, we don't have a clean enumeration of ZF axioms.

## Subsets

Next, we consider subsets. By defining subsets in terms of elementhood, we can
establish that the subset relation is reflexive and transitive.

XXX table: gripau-refl, gripau-trans

## Internal Homs

This section is also the earliest that we can define the first Lojban
abstractor, `{ka}`, which relates a *selbri* to the various *terbri* which
combine with it to form a complete *bridi*. This is essential for building the
so-called internal homs ([WP](https://en.wikipedia.org/wiki/Hom_functor),
[nLab](https://ncatlab.org/nlab/show/internal+hom)), which will allow us to
treat *selbri* as *terbri*.

```admonish note
Readers acquainted with category theory may find the terminology curious. Note
that the internal hom in [**Loj**](loj.md) is the trivial syntactic one over
`{ganai}` and `{ge}`, with its curry witnessed by theorems ~cur and ~uncur. The
internal hom described here is for the logic of *selbri*: [**Selb**](selb.md).
```

We use this to define many classic *gismu*. Here are some examples:

XXX table: df-ckaji, df-ckini

This section also includes a definition of `{du'u}`, which further internalizes
logic by allowing us to treat *bridi* as *terbri*. At this point we can explain
the main issue with using abstractors as our basis: *terbri* cannot be
manipulated as generic syntax. It's not obvious how to do manipulations with
*gismu* like `{nibli}` which operate upon `{du'u}` abstractions. The situation
is not dire, merely unclear and difficult; theorems like ~nibli-refl have been
proven without any fancy techniques. But we will need some fancy techniques,
like…

## Proper Substitution

Manipulation of *bridi* is getting tiresome, so we introduce the first — and
hopefully only — genuinely new metasyntax in all of *la brismu*: proper
substitution. It is a fairly weak mechanism that only allows us to replace any
first-order quantified variable, like `{da}`, but we may replace it with any
grammatical `{ko'a}`. Theorems about proper substitution are extremely powerful
but take effort to prove; our listing of them is currently fairly short.

XXX table subid

## Not-Free Quantification

We also include a quantifier not in baseline Lojban, `{na'a'u}`, which asserts
that a quantified variable is irrelevant to the *bridi* over which it scopes.
It is not a common feature of most logics, but is used in other Metamath
databases to ease the implementation of proper substitution. A noteworthy
theorem here is ~ceihi-nf, which demonstrates that `{cei'i}` really is a
nullary relation in semantics and not merely an aesthetic choice of our syntax.
