# Relations and **Selb**

**Selb** is a [locally
posetal](https://ncatlab.org/nlab/show/locally+posetal+2-category)
[dagger-category](https://ncatlab.org/nlab/show/dagger+category) formed from
selbri. Specifically, it is the [bicategory of
relations](https://ncatlab.org/nlab/show/bicategory+of+relations) over sumti,
whose:

* objects are classes ("collections", "sets", "masses", etc.) of sumti
* arrows are selbri
* transformations are inclusions/subrelations between selbri

## Summary

Here is a high-level summary of our analogy between logic and Lojban:

Lojban | Set theory | Allegory / dagger-category theory
---|---|---
lo selbri (arity 2) | binary relation | arrow ("morphism")
lo cmima | element | arrow from zero object
lo selcmi | inhabited set | object with incoming/outgoing arrows
lo selbri (arity 1) | subset / injection | monomorphism
gai'o | empty relation | bottom arrow
cei'i | singleton relation | top arrow
du | identity relation | identity arrow
se | inversion of relations | dagger

## Formal Proofs

### Via 1Lab

The 1Lab module [`Cat.Allegory.Base`](https://1lab.dev/Cat.Allegory.Base.html)
defines allegories and proves several of their properties. By proving its
axioms, we show that **Selb** is an allegory relative to 1Lab's foundations
(cubical type theory within homotopy type theory.) We translate as follows:

Agda syntax | brismu syntax
---|---
`Hom`, `Type` | `bridi` (metatheoretical)
`≤` | ganai
`≡` | go
`→` | `&`, `=>` (metatheoretical)
`†` | se
`∘` | (non-primitive)
`∩` | ge

Note that hom-sets and types are both simplified to bridi. Also note that
Metamath is uncurried and Agda is curried, so Agda arrows can be either
conjunctive or deductive. We do not include the `is-prop` assumption because
Metamath's deductive systems usually give non-thin categories. We aren't
especially worried about h-levels, so this is not a serious issue.

1Lab axiom | Metamath entry
---|---
`_≤_` | [bgan](bgan.html)
`≤-refl` | [id](id.html)
`≤-trans` | [syl](syl.html)
`≤-antisym` | [gorii](gorii.html)
`_◆_` | todo
`_†` | [sbs](sbs.html)
`dual` | no closed form yet, can be inferred from [se-invo](se-invo.html) and [seri](seri.html) [seri](seri.html) respectively
`dual-∘` | todo
`dual-≤` | [se-dual](se-dual.html)
`_∩_` | [bge](bge.html)
`∩-le-l` | [ax-ge-le](ax-ge-le.html)
`∩-le-r` | [ax-ge-re](ax-ge-re.html)
`∩-univ` | no closed form yet, deductive form of [ge-ini](ge-ini.html)
`modular` | todo

We also reprove the following theorems:

1Lab theorem | Metamath theorem
---|---
`≤-yoneda` | todo
`dual-≤ₗ` | [se-dual-l](se-dual-l.html)
`dual-≤ᵣ` | [se-dual-r](se-dual-r.html)
`_dual-∩` | todo
`dual-id` | [se-du-elim](se-du-elim.html)

## Interpreting natural deduction

Each logic in natural deduction can be used to give judgements, like "P is
true." Wikipedia lists "P is possibly true," "P is always true," "P is true at
a given time," "P is justifiably believable," "P is provable," and "P is
constructible from the given resources," as other examples in other logics.
What does relational logic give us? Relational logic judgements are of the
form "P is true at least once;" we can imagine that a bridi is not just true
or false, but true for each of the many possible values that are being
related, and that there may be multiple worlds that provide a context where a
statement is true.
