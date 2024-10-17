# Mereology

Mereology ([WP](https://en.wikipedia.org/wiki/Mereology),
[nLab](https://ncatlab.org/nlab/show/mereology)) is the study of parts and
wholes. It is closely related to set theory, in the sense that subsets are
parts of whole supersets, but is studied independently.

## Axioms

We present System M, the simplest possible collection of mereological axioms.
System M asserts that parthood is reflexive, antisymmetric, and transitive: a
partial order. We augment System M with two additional axioms, the Axioms of
Top and Bottom, which assert that the universal and null objects exist.

~table ax-pagbu-refl ax-pagbu-antisym ax-pagbu-trans ax-pagbu-top ax-pagbu-bot

Note that `{pagbu}` is a primitive symbol and cannot be defined as an
extension of the basis. However, given `{pagbu}`, we can extend the resulting
basis with a few more definitions:

~table df-jompau df-kuzypau

## Bridge to Set Theory

While it is not currently part of the database, set theory can be seen as a
special case of mereology:

    ganai da gripau de gi da pagbu de

This axiom is only absent because no use case has been found for it so far.
This parallels the development of set theory as a finer-grained and more
powerful mereology which is able to not only distinguish parthood but also
elementhood.
