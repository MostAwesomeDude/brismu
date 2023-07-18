# Size issues

What are things? What are we talking about? We have a [(Grothendieck)
universe](https://en.wikipedia.org/wiki/Grothendieck_universe) filled with
many things. What does that mean? Some of the things are sets. Sets may have
elements, which are also things. Any two things can be put into a set which
contains just the both of those things. Given any set, we can also have its
[power set](https://en.wikipedia.org/wiki/Power_set), which is just the set of
its subsets. And finally, given any set of sets, we can take its union.

This is enough to be able to talk about most sorts of infinite objects that the
layperson might dream up. We have enough sets for not just every particle in
the observable natural universe, but every natural number, and indeed we can
have the set of natural numbers, a set of real numbers, etc.  We can also have
some objects that are much larger than these "small" sets, such as a category
whose objects and hom-sets are small sets and functions.  Such a category can
still be made out of sets, and so it would just be another thing; indeed,
because of this, it would be *the* [category of sets and functions,
Set](https://en.wikipedia.org/wiki/Category_of_sets). We also have working
Yoneda, with presheaves taken over small functors rather than all functors.

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

Consider the following theorem:

    ro da zo'u da du da

In the framing we've introduced, this is read as, "for all things X in the
universe, X=X". But, since `{du}` must be a small relation, a more careful
reading is, "for all small things X in the universe, X=X". A casual reader
might think that this is trivial or that we are not talking about objects of
consequence, but for example, the set of all natural numbers is a small thing,
as is any set of real numbers, or the category FinSet whose arrows are total
functions on finite sets.
