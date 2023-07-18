# Relations

## What is a relation?

Mathematically, a [binary
relation](https://en.wikipedia.org/wiki/Binary_relation) `R : X -> Y` between
two collections of objects `X` and `Y` is a collection of ordered pairs of
objects `(x, y)` in `(X, Y)`. In most cases, it will be useful to imagine that
the collections are [sets](https://en.wikipedia.org/wiki/Set_(mathematics)), so
that `x` and `y` are elements of sets `X` and `Y` respectively.

Please, pause for a moment and be sure that you understand the above paragraph.

## Properties of relations

Okay, let's continue. Immediately, the most important feature is the
reversibility of the relation; for every `R : X -> Y` there is an
`R† : Y -> X`, called the
[dagger](https://en.wikipedia.org/wiki/Dagger_category) of `R`, which is the
same relation but backwards. Where `R` has pairs like `(x, y)`, `R†` has
corresponding pairs `(y, x)`. Note that `R†† = R`; swapping a pair twice is the
same as not swapping it at all.

Another important feature is that we can ask whether a given pair `(x, y)` is
in `R`, and this leads to the [characteristic
function](https://en.wikipedia.org/wiki/Indicator_function) for `R`, which
returns the Boolean truth value, true or false, indicating whether the pair is
in the relation. We'll write this characteristic as `R(x, y)`. Not all
relations have a characteristic; we'll say that a relation is
[decidable](https://en.wikipedia.org/wiki/Computable_set) when it does.
Decidable sets also have characteristic functions; these relate sets to their
subsets. We cannot ask whether `x` is in `X`, but if we know that `S` is a
subset of `X` and `x` is in `X`, then we can ask whether `x` is also in `S`.

We can also ask about how many pairs are in `R`, and we'll write this as `|R|`
and call it the [cardinality](https://en.wikipedia.org/wiki/Cardinality). We'll
say that `R` is satisfiable when it has nonzero cardinality. Again, cardinality
for sets is also defined; the cardinality of a set is the number of elements.

While binary relations are the most common kind, relations can come in any
arity, and we might see unary relations (which are just subsets) or ternary
relations or any arity.

Okay! Take a breath.

## Relations in Lojban

Now, Lojbanically, every selbri has an underlying relation, and its sumti have
underlying sets. When we write `{da bu'a de}`, we are indicating that the pair
`(da, de)` is within some collection of pairs referenced by the relation `bu'a
: abu -> ebu`. The intermediate Lojbanist will immediately recognize that `{de
se bu'a da}` is the same utterance, but rearranged; `{se}` acts as a dagger
operator. (XXX axiom reference here for sei!) Similarly, the selbri `{jei da
bu'a de}` is syntax for the characteristic function; we are applying the selbri
`{bu'a}` onto the pair `(da, de)` and seeing whether it is present in the
relation. The selbri `{ka ce'u bu'a ce'u}` allows us to capture the selbri
`{bu'a}` itself as a relation `bu'a` and range over many different pairs of
values `(ce'u, ce'u)` which `bu'a` relates.

While I will try to keep this terminology straight, I may occasionally abuse
words to say that some sumti are in a selbri, by which I mean that the
referent objects of each sumti, taken as a tuple, belong to the relation
referred to by the selbri.

## Second-Order Logic

We're not quite done with our ontology. Sets can have things for elements, and
so relations will have pairs of things as elements.

Are there restrictions on the range of relations? No. A relation like `{mlatu}`
can range over anything whatsoever. To restore our normal expectations, we will
*define* sets like `mlatu1` in terms of `mlatu : mlatu1 -> mlatu2`; in la
brismu, a cat is something which is related to its species.

For logicians: If we require `{da}` to always be restricted when introduced,
then we'll end up with [Henkin
semantics](https://en.wikipedia.org/wiki/Second-order_logic#Semantics),
equivalent to many-sorted FOL; if we allow it to range freely, then we'll need
full semantics, which is genuine SOL.  We want SOL, so we will work without
typed first-order variables.

Either way, `{bu'a}` really does range over all relations in the universe. Note
that, metatheoretically, we may allow ourselves to be convinced of the
existence of relations which aren't in the universe; this is just a standard
effect of Gödel's Incompleteness, in that we expect to find a few
unprovably-extant large objects lurking outside of our formal reach.

Once we agree to embrace SOL, then we can consider the
[NFO](https://en.wikipedia.org/wiki/Nonfirstorderizability) concepts, like
identity as equality, graph connectivity, the Archimedean property, and
Geach-Kaplan sentences.

## Negation

Take a set. We may consider all of the things in the universe which *aren't* in
that set; first, consider all of the things, then subtract our set. Except, for
better or worse, it happens that we don't necessarily get a set back. Why not?
Because the collection of all things in the universe doesn't appear to form a
set from inside Lojban, thanks to [Russell's
paradox](https://en.wikipedia.org/wiki/Russell%27s_paradox). As a result, we
can't see that this operation defines a set, either.

So, if we want to use negation, then we will need another justification for it.
The typical approach is to use the [Law of Excluded
Middle](https://en.wikipedia.org/wiki/Law_of_excluded_middle), a
non-constructive axiom which insists that every bridi is either true or false.
Recall that a characteristic function always returns true or false. Thus, the
Law of Excluded Middle says that every selbri has a characteristic function. We
can build negation from characteristic functions; the negation of a relation
doesn't have a collection of pairs, but it can ask the original relation
whether a pair is related, and then negate the response. 

If we want it, then we must take it as an axiom as to whether the law of the
excluded middle is available. It can't be derived as a theorem.

I'm going to *not* give the axiom, even though it appears in CLL. I'm also
going to avoid CLL's version of De Morgan's laws and contraposition, as a
result. Later, I'll note when the Axiom of Choice -- which implies the Law of
Excluded Middle -- first appears. The bitter truth is that the law of excluded
middle is an addition that we optionally use to collapse a rich open world of
possibilities into a black-or-white closed world which has many blind spots.
