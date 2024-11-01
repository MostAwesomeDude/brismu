# Natural Numbers

We will pay special attention to the definition of natural numbers because it
will be our foundation for number theory. Our axioms are chosen based on
[second-order
arithmetic](https://en.wikipedia.org/wiki/Second-order_arithmetic), following
Robinson's axioms for numberhood and Frege's axioms for cardinality.

## Numberhood

Zero is a natural number. In fact, the natural numbers are zero and the
successors.

~table ax-nat-no ax-succ-std

Zero is not a successor. Combined with the above axioms, this constrains the
natural numbers to a single tower of successors above zero.

~table ax-succ-zero

While many results do not require it, we also have the Axiom of Successors,
which states that the operator/function taking each natural number to its
successor is injective.

~table ax-baihei-inj

Induction over natural numbers is definable in second-order logic.

~table ax-nat-ind

## Addition

Addition is given via standard axioms.

~table ax-plus-zero ax-plus-succ

We have not proven many arithmetic results yet.

~table 1p0e1

## Multiplication

Multiplication is also given via standard axioms.

~table ax-mul-zero ax-mul-succ

## Ordering

The natural numbers are totally ordered. This order is not realized on its
own, but defined recursively.

~table ax-gt-zero df-kacmeha

## Cardinality

We also have some axioms of Fregean cardinality.

~table ax-card-fun ax-card-ex
