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
[cardinality](https://en.wikipedia.org/wiki/Cardinality)). We'll say that `R`
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

## Size issues

What are our collections? In mathematics, we usually build relations and pairs
from sets. However, when sets contain other sets, then we have problems about
infinite sets which contain other infinite sets, popularly known as [Russell's
paradoxes](https://en.wikipedia.org/wiki/Russell%27s_paradox), or
affectionately known to mathematicians as ["size
issues"](https://math.stackexchange.com/questions/1971632/whats-behind-the-word-size-issues).
To avoid size issues, we have to say that there are only some certain ways to
form infinite sets. In particular, the only infinite set we'll directly build
is the set of natural numbers.
