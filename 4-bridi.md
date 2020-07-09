# 4: Lojbanic Relations

# Ordered sequences: {ce'o}, {nomoi}, {pamoi}, {remoi}

`{ce'o}` builds ordered sequences, which generalize ordered pairs by having
more than two elements. We will need some metasyntactic help to address these
sequences in a uniform way; we want to be able to address each part of a
sequence numerically. In the following rules, the ellipsis `...`
metasyntactically represents additional variables linked by `{ce'o}`, forming
the "rest" or "tail" of the sequence. This tail could well be empty.

Note for the future: Experimental `{ra'ei}` could represent additional
elements, but is in entirely the wrong selma'o.

    da nomoi da ce'o ... (nomoi)

    de pamoi da ce'o de ce'o ... (pamoi)

    di remoi da ce'o de ce'o di ce'o ... (remoi)

# Ternary relations: {te}, {bridi}

We need to internalize relations, and for that we'll need `{bridi}`. First, we
need to define ternary relations. All of our existing rules work on the first
two sumti of ternary relations, and we'll define `{te}` to access the
otherwise-inaccessible third sumti.

     da broda de di
    ================= (te-intel)
    di te broda de da

At last, we can define `{bridi}`. First, let's relate it to other selbri.
`{bridi}` internalizes the rule of `{ckaji}` and `{ckini}`, which instantiate
relations. When we connect terbri to selbri, we are asking the selbri whether
the given terbri are present in the underlying relation. This is precisely the
characteristic function! We use `{du'u}` to track whether a bridi is
satisfying the characteristic of its selbri.

                               da broda de
    ================================================================== (bridi-intel-2)
    pa du'u da broda de kei bridi pa ka ce'u broda ce'u kei da ce'o de

Just like with `{ka}`, we only get one `{du'u}` bound at a time. A `{du'u}` is
definitely inhabited or not inhabited. On the top of the rule, we have one
result for every pair in the selbri; on the bottom of the rule, we have one
result for every pair in the Cartesian product (the full relation), and also a
`{du'u}` indicating whether or not the pair is also in the selbri.

And once more, for ternary relations:

                                     da broda de di
    ============================================================================= (bridi-intel-3)
    pa du'u da broda de di kei bridi pa ka ce'u broda ce'u ce'u kei da ce'o de di

Whew. This has been a lot of foundational work, hasn't it? But we're almost
done with the basics. We've got a pretty good understanding of bridi and
selbri now, and all that's left is terbri.
