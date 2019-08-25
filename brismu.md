We interpret Lojban by building a correspondence between Lojban utterances and relations. (Content warning: Set theory and relational algebra ahead!)

We start with bridi. A bridi relates a selbri to an ordered sequence, or tuple, of sumti. A bridi has a truth value within a context.

To each selbri, we assign a relation. To each bridi, we consider whether the given tuple of sumti belongs to the given selbri's relation. Recall that a relation's characteristic function tells whether a given tuple belongs to the relation; then, to each bridi, we assign a truth value that tells the underlying selbri's relation's characteristic function on the bridi's sumti.

We now assume sets and relations. To address the immediate size issues, we will forbid taking sets of all sets, or similar formulations. We will need to introduce {lo} and {lo'i} shortly, but not yet.

The first selbri we'll define is {du}. {du} corresponds to structural rules in natural deduction, but with the constraint of identity. An example rule for {du}:

    da du de
    ========
    de du da

This rule says that, given some bridi whose selbri is {du}, we may consider its sumti, which are not inspected further than to be bound to names {da} and {de}, and we may interchange {de} with {da} and vice versa. This rule is not surprising in its content, but in its structure; the double-line === instead of a single-line --- indicates that the rule is reversible and may be run backwards. In relational logic, many rules are reversible.

Our first selbri-altering word, {se}, also has reversible rules.

     da broda de
    ==============
    de se broda da

This rule breaks the scoped interpretation, including scoped negation and scoped sumti. It corresponds to the reversibility of binary relations.

We can give a {se} normal form for selbri by requiring this rule to be applied in reverse whenever possible.

We can bind {da} multiple times in a rule, and require that the referent sumti are unified. We really do require that the referents unify to a single identity, though, as in relational logic. Thus, another rule for {du} establishes its role in identity:

    da du da

This rule is an axiom! We may always start from axioms, rather than starting from nothing. We may now state trivial theorems, like {da se du da}:

     da du da
    ===========
    da se du da

For an example of a reversible rule with surprising behavior, we give meaning to a classically-frustrating sumti, {zi'o}.

     da broda de
    =============
    da broda zi'o

To try to give meaning to this rule:
* When unifying, {zi'o} is a don't-care not-a-value
* A bridi with {zi'o} is true regardless of what values may match {zi'o}
* {zi'o} erases columns from the relations of selbri

When reversing this rule, {de} is existentially bound. Folks often wonder about how this might be interpreted computationally. When computing with relations, imagine all operations as many-to-many, relating multiple inputs to multiple outputs. This existential {de} therefore represents all of the many different possible values which would satisfy the relation if the column were to be added.

We now start inching towards set theory inside Lojban. We begin with an important relation, {cmima}, which corresponds to the notion of membership. First, let us put size issues to rest:

    da na cmima da

A {na} bridi asserts that its tuple of sumti are not related by its selbri; that is, that the tuple doesn't belong to the selbri's relation. And now we can give an equivalent for the axiom of pairing:

    da cmima da ce de

{ce} is commutative:

    da ce de broda
    ==============
    de ce da broda

We now introduce useful sumti. First, {da} may be restricted with {poi}. A sumti {da poi ke'a broda} carries with it the implicit understanding that {da broda}. {broda} is here captured as a selbri, with {ke'a} for the sumti that {da} will fill in. In terms of set theory, the values that {da} can take on are universal, but the values that {da poi ke'a broda} can take on are limited by {broda}'s relation's cardinality. Therefore we cannot have a reversible rule for introducing and eliminating {poi} restrictions, only a one-way rule:

              da broda
    ----------------------------
    da poi ke'a brode ku'o broda

We may now define {lo broda} as {da poi ke'a broda} and {lo broda be de} as {da poi ke'a broda de}.

We know the natural numbers, {no}, {pa}, {re}, etc. already. We may define {li no} to refer to zero itself as a sumti, and similarly for the rest of the natural numbers.

We may also say {pa broda} as a sumti to indicate {pa da poi ke'a broda}, and {pa da} to indicate that there exists exactly one value which {da} can take on for all satisfying rows. Since this is a confusing concept, it is worth spelling out in more detail. Recall that relations are many-to-many in their operation. A {pa da} in the result is an assertion that, for each of the many distinct rows that satisfy the relation, {da} will be unchanging in the value that is assigned to it. We do have a one-way weakening rule:

    pa da broda
    -----------
      da broda