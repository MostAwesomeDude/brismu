# 2: Posetal logic

We now focus on relations which have posetal inner structure.

Suppose, for some two ``{broda}`` and ``{brode}``,

    ro da ro de zo'u:

    da broda de
    ----------- (rule)
    da brode de

By some rule. The quantifiers need to be ``{ro}``, but they can be
typed/restricted with ``{poi}``. Then, there is an inner implication, which
I'm calling the posetal implication, from ``{broda}`` to ``{brode}``. These
implications are called "posetal" because they are structured like posets:

* Chained implications are like transitivity
* Equivalences are like antisymmetry
* Conjunction and disjunction work like in posets
* The top and bottom relations are the trivially true and false relations

This structure, interacting with the normal relational logic, is what produces
our categorical allegory structure.

Now, without further ado, let's introduce a two-dimensional rule for this
inner logic. We recall ``{kairni'i}`` from set theory; the posetal logic is
exactly the logic of the lattice of relations that we introduced earlier.
Here, rather than using the lattice properties to build functional
properties, we'll focus on the poset properties.

    ro da ro de zo'u:  ||
                       ||
    da broda de        || pa ka ce'u broda ce'u kei kairni'i pa ka ce'u brode ce'u (rule is posetal)
    ----------- (rule) ||
    da brode de        ||

On the left, standard one-dimensional rules of the sort we've been working
with let us proceed in standard deductive style. On the right, we have axioms
which let us start proofs with posetal facts.

We can remove typed restrictions from the LHS's prenex as long as they're
removed from both the top and bottom.

# Families

A good example of a posetal family would be ``{danlu}`` and its subrelations.
Each member of the family gives a rule like:

    ro da ro de zo'u:

    da mlatu de
    ----------- (mlatu => danlu)
    da danlu de

I give the [entire family of
animals](https://github.com/MostAwesomeDude/zaha/tree/master/jbobau/danlu) in
my zaha repository.

# Functional Properties

Recall the four functional properties of univalence, totality, injectiveness,
and surjectiveness, as well as bijections, which are both injective and
surjective. Now, let's try to find these properties within the baseline!

The family of animal selbri mentioned above all follow the basic pattern of
being surjective functions from danlu1 to danlu2.
