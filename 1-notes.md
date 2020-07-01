# -1: Notes, Uncleaned

We now start inching towards set theory inside Lojban. We begin with an
important relation, {cmima}, which corresponds to the notion of membership.
First, let us put size issues to rest:

    da na cmima da

This doesn't actually do what I had imagined when I wrote it. It's pretty but
useless.

A {na} bridi asserts that its tuple of sumti are not related by its selbri;
that is, that the tuple doesn't belong to the selbri's relation. And now we
can give an equivalent for the axiom of pairing:

    da cmima da ce de

{ce} is commutative:

    da ce de broda
    ==============
    de ce da broda

We now introduce useful sumti. First, {da} may be restricted with {poi}. A
sumti {da poi ke'a broda} carries with it the implicit understanding that {da
broda}. {broda} is here captured as a selbri, with {ke'a} for the sumti that
{da} will fill in. In terms of set theory, the values that {da} can take on
are universal, but the values that {da poi ke'a broda} can take on are limited
by {broda}'s relation's cardinality. Therefore we cannot have a reversible
rule for introducing and eliminating {poi} restrictions, only a one-way rule:

              da broda
    ----------------------------
    da poi ke'a brode ku'o broda

We may now define {lo broda} as {da poi ke'a broda} and {lo broda be de} as
{da poi ke'a broda de}.

We know the natural numbers, {no}, {pa}, {re}, etc. already. We may define {li
no} to refer to zero itself as a sumti, and similarly for the rest of the
natural numbers.

We may also say {pa broda} as a sumti to indicate {pa da poi ke'a broda}, and
{pa da} to indicate that there exists exactly one value which {da} can take on
for all satisfying rows. Since this is a confusing concept, it is worth
spelling out in more detail. Recall that relations are many-to-many in their
operation. A {pa da} in the result is an assertion that, for each of the many
distinct rows that satisfy the relation, {da} will be unchanging in the value
that is assigned to it. We do have a one-way weakening rule:

    pa da broda
    -----------
      da broda

There is also a rule for {no da}, which asserts that zero values are taken on
by {da}, which means that no rows match, which means that the relation
effectively isn't true. This can be inverted, too.

    no da broda
    ===========
    da na broda

We may now define {lo'i broda} as {lo se cmima be lo broda}. We can also
define {lo'i pa broda} as {lo se cmima be lo pa broda}, and {lo pa broda} as
{pa da poi ke'a broda}. In fact, for all natural numbers, we have an axiom.
Let P be some natural number, and then:
 
    lo P broda cmima lo'i P broda

Applying definitions:

    P da poi ke'a broda ku'o cmima de poi ke'a se cmima P di poi ke'a broda

Or, in plainer language, if we expect {da} to be bound to P distinct values
during the course of our query, then it follows that we will explore a set
with cardinality P, whose elements each satisfy {da}'s constraints. This may
seem trivial, but it is an important sanity check as well as an indication of
the strength of our theory: Every defined set has P elements which each
satisfy the set's defining property.

As a special case:

                       lo no broda cmima lo'i no broda
    =====================================================================
    no da poi ke'a broda ku'o cmima de poi ke'a se cmima no di ke'a broda
    =====================================================================
    no da poi ke'a broda ku'o cmima de poi ke'a na se cmima di ke'a broda
    =====================================================================
    da poi ke'a broda ku'o na cmima de poi ke'a na se cmima di ke'a broda
    =====================================================================
            lo broda ku na cmima de poi ke'a na se cmima lo broda
            =====================================================
               lo broda ku na cmima lo na se cmima be lo broda

This is a nice double-negation theorem.

We can define {kampu} now. {kampu} relates a {ka} to a set, so that every
member of the set can be plugged into the {ka}'s subordinate bridi. More
formally, {kampu} relates sets to their membership relations. As a result,
after defining {kampu} in terms of {ckaji}:

    pa ka ce'u broda ku kampu lo'i brode
    ====================================
     lo broda ku ckaji pa ka ce'u brode

This looks like an adjunction, doesn't it? We can also define that, as an
axiom, {kampu} should relate every membership relation to the set of the
members:

    pa ka ce'u broda ku kampu lo'i broda

Let's continue on to get a classic tautology of informal Lojban:

    pa ka ce'u broda ku kampu lo'i broda
    =====================================
      lo broda ku ckaji pa ka ce'u broda
      ==================================
             lo broda ku broda

Note the difference between the earlier axiom that {da brode} -> {lo broda ku
brode}, and this axiom that {lo broda ku broda}. The earlier axiom is
conditional upon already having established {brode} as a main selbri, while
this newer theorem allows us to introduce a restricted query upon any {broda}
as a starting point.

We have set membership, one of the two important relations of set theory. The
other is the subset relation, {steci}.
