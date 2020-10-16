# 1: What is a relation?

First, mathematically, a [binary
relation](https://en.wikipedia.org/wiki/Binary_relation) `R : X -> Y` between
two collections of objects `X` and `Y` is a collection of pairs of objects
`(x, y)` in `(X, Y)`.

Immediately, the most important feature is the reversibility of the relation;
for every `R : X -> Y` there is an `R† : Y -> X`, called the
[dagger](https://en.wikipedia.org/wiki/Dagger_category) of `R`, which is the
same relation but backwards. Another important feature is that we can ask
whether a given pair `(x, y)` is in `R`, and this leads to the [characteristic
function](https://en.wikipedia.org/wiki/Indicator_function) for `R`, which
returns the Boolean truth value, true or false, indicating whether the pair is
in the relation. We'll write this characteristic as `R(x, y)`. We can also ask
about how many pairs are in `R`, and we'll write this as `|R|` and call it the
[cardinality](https://en.wikipedia.org/wiki/Cardinality). We'll say that `R`
is satisfiable when it has nonzero cardinality.

While binary relations are the most common kind, relations can come in any
arity, and we might see unary relations (which are just subsets) or ternary
relations or any arity.

Now, Lojbanically, a selbri has an underlying relation, and its sumti have
underlying sets. When we write `{da broda de}`, we are indicating that `(da,
de)` is within some collection referenced by `broda : abu -> ebu`. The
intermediate Lojbanist will immediately recognize that `{de se broda da}` is
the same utterance, but rearranged; `{se}` acts as a dagger operator.
Similarly, the selbri `{jei da broda de}` is syntax for the characteristic
function; we are applying the selbri `{broda}` onto the pair `(da, de)` and
seeing whether it is present in the relation. The selbri `{ka ce'u broda
ce'u}` allows us to capture the selbri `{broda}` itself and plug many
different pairs of values in to see whether they are present.

While I will try to keep this terminology straight, I may occasionally abuse
words to say that some sumti are in a selbri, by which I mean that the
referent objects of each sumti, taken as a tuple, belong to the relation
referred to by the selbri.

## Inventory issues

It would be nice if there were no synonyms in Lojban. Sometimes, there is a
one-directional quasi-synonym, like {bruna} => {tunba}, but we'll restrict
ourselves to only considering full synonyms.

We'll take it as a meta-axiom: No gismu are synonyms.

## Size issues

[This paper by Shulman](https://arxiv.org/abs/0810.1279) was essential in
figuring this out.

What are things? What are we talking about? We have a [(Grothendieck)
universe](https://en.wikipedia.org/wiki/Grothendieck_universe) filled with
many things. What does that mean? Some of the things are sets. Sets may have
elements, which are also things. Any two things can be put into a set which
contains just the both of those things. Given any set, we can also have its
[power set](https://en.wikipedia.org/wiki/Power_set), which is just the set of
its subsets. And finally, given any set of sets, we can take its union.

We'll add more rules, and be more formal later, but this is enough to be able
to talk about most sorts of infinite objects that the layperson might dream
up. We have enough sets for not just every particle in the observable natural
universe, but every natural number, and indeed we can have a set (*the* set,
but we'll get to that later) of natural numbers, a set of real numbers, etc.
We can also have some objects that are much larger than these "small" sets,
such as a category whose objects and hom-sets are small sets and functions.
Such a category can still be made out of sets, and so it would just be another
thing; indeed, because of this, it would be *the* [category of sets and
functions, Set](https://en.wikipedia.org/wiki/Category_of_sets). We also have
working Yoneda, with presheaves taken over small functors rather than all
functors.

Formally, we're going to do all of this by assuming some nice 4-category,
choosing a free 3-category which will let us do our setup, explicitly
designating a 2-category as our topos using
[ETCC](https://ncatlab.org/nlab/show/ETCC), fixing some inaccessible cardinal
K, fixing some Grothendieck universe U=V\_K, and then setting up second-order
logic inside U and walling ourselves in. We cannot access K or U directly, let
alone any of the higher-order categorical structure, but we don't really need
to, either; we can quantify over all of U's things, and that is enough.

For the future: We still can access most n-categorical tooling, as long as
we're gentle and only work with diagrams. In particular, we can still have
opetopes of any finite order; I'm not sure if suspended opetopes are
available, but probably.

## Second-Order Logic

We're not quite done with our ontology. Sets can have things for elements, and
so relations will have pairs of things as elements. Are there restrictions on
those relations? If we require `{da}` to always be restricted when introduced,
then we'll end up with Henkin semantics, equivalent to many-sorted FOL; if we
allow it to range freely, then we'll need full semantics, which is genuine
SOL.

Either way, `{bu'a}` really does range over all relations in the universe. But
aren't there size issues there? So perhaps it only ranges over small
relations. Indeed, let us identify Rel inside our universe, and then let us
range over that category! After all, we are effectively building Rel plus a
multidisciplinary scientific ontology, so Rel is a good starting point.

Let's examine our typical first axiom:

    ro da zo'u da du da

In the framing we've introduced, this is read as, "for all things X in the
universe, X=X". But, since `{du}` must be a small relation, a more careful
reading is, "for all small things X in the universe, X=X". A casual reader
might think that this is trivial or that we are not talking about objects of
consequence, but for example, the set of all natural numbers is a small thing,
as is any set of real numbers, or the category FinSet whose arrows are total
functions on finite sets.

## Negation

Take a set. We may consider all of the things in the universe which *aren't*
in that set; first, consider all of the things, then subtract our set. Except,
for better or worse, it happens that we don't necessarily get a set back.
Remember, we can't see from inside the universe that the collection of all
things in the universe forms a set, so we can't see that this operation
defines a set, either.

The short answer is that we must take it as an axiom as to whether the law
of the excluded middle is available. I'm going to *not* give the axiom, even
though it appears in CLL. I'm also going to avoid CLL's version of De Morgan's
laws and contraposition, as a result.

The long answer is [Five Stages of Accepting Constructive
Mathematics](https://www.ams.org/journals/bull/2017-54-03/S0273-0979-2016-01556-4/S0273-0979-2016-01556-4.pdf),
and in particular the bitter truth that the law of excluded middle is an
addition that we optionally use to collapse a rich open world of possibilities
into a black-or-white closed world which has many blind spots.
