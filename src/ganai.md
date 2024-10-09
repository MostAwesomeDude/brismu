# Logical Connectives

We now tour the Metamath axioms and theorems.

## Sentential Logic with SKI Combinator Calculus

The axioms begin with ~ax-mp and two other axioms which we call ~ax-k and
~ax-s. Here is how we phrase them in Metamath:

XXX table: ax-k, ax-s, ax-mp

Where do these axioms come from? These are the rules of SKI combinator calculus
([WP](https://en.wikipedia.org/wiki/SKI_combinator_calculus),
[nLab](https://ncatlab.org/nlab/show/combinatory+logic),
[esolangs](https://esolangs.org/wiki/Combinatory_logic)), a combinatory logic
with some nice properties. A **combinator** is an abstract operation which
takes some objects and arranges them into an applicative tree. Those other
objects are usually also combinators, and application is ~ax-mp, so a
combinator is ultimately some sequence of applications of ~ax-k and ~ax-s.

What are the nice properties of SKI combinators? Well, first, note that K and S
are both **tautologies**
([WP](https://en.wikipedia.org/wiki/Tautology_(logic)),
[nLab](https://ncatlab.org/nlab/show/tautology)): if we test whether each
bridi is true or false, and write out a truth table, then both K and S are
always true. They're also admissible in intuitionistic logic, which means that
if we imagine each bridi to refer to (classes of) things, then we always obtain
more (classes of) things as a result of applying them.

Note that we don't have the identity combinator as an axiom. That's because it
can be proved as a theorem, ~id. This is a nice example of the last nice
property of K and S: they are complete for combinatory logic, which means that
any other combinator can be built from them. Because of the way we set up
Metamath, we can also prove the syllogism form of *modus ponens*, ~syl, as its
own theorem.

## The Five Connectives

We need to set up the five logical connectives in a specific order:

1. `{ganai}`
1. `{ge}`
1. `{go}`
1. `{ga}`
1. `{gonai}`

This is a sort of [bootstrapping](https://en.wikipedia.org/wiki/Bootstrapping)
process which allows us to [define](vlaste.md) new *valsi* in terms of old
*valsi*. In general, once this is set up, a definition will be a `{go}` *bridi*
which uses the *valsi* being defined in its left-hand component but not its
right-hand component. For example, here are two definitions from this section
of the database:

XXX table: df-se, df-du

However, we can't use that for the connectives themselves. We don't define
`{ganai}` at all! It's part of the basis. We add the following axioms, as well
as a suspicious pseudo-definition ~df-go, in order to achieve our bootstrap:

XXX table: ax-ge-le, ax-ge-re, ax-ge-in, df-go

But once this is done, we can define our final two connectives:

XXX table: df-ga, df-gonai

## Negation

It is convenient to define negation alongside `{gonai}`. We define experimental
*valsi* `{cei'i}` and `{gai'o}` for vacuous truth and falsehood respectively,
along with `{naku}` for negating entire *bridi* at once:

XXX table: df-ceihi, df-gaiho, df-naku

We also define two essential axioms of negation. ~ax-sdo defines
[self-defeating
objects](https://terrytao.wordpress.com/2009/11/05/the-no-self-defeating-object-argument/)
and ~ax-efq is the principle of explosion, also called *ex falso quodlibet*
([WP](https://en.wikipedia.org/wiki/Principle_of_explosion),
[nLab](https://ncatlab.org/nlab/show/ex%20falso%20quodlibet)).

XXX table: ax-sdo, ax-efq

And we also prove several classical tautologies:

XXX table: ceihi, na-gaiho, lnc

## Other Axioms

This section includes several axioms whose full potential is not yet unlocked,
but whose inclusion couldn't be postponed to the discussion on [non-logical
connectives](cmima.md). There are axioms of first- and second-order universal quantification:

XXX table: ax-spec1, ax-spec2, ax-qi1, ax-qi2
