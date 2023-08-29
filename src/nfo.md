# Non-first-order-izability (NFO)

One of the curious phenomena of second-order logic is that some sentences
cannot be translated from second-order to first-order logic, even when both
logics agree about set theory. In a certain sense, second-order logic is more
expressive than first-order logic, and also more abstractive. Specifically, it
is more
[Felleisen-expressive](https://en.wikipedia.org/wiki/Expressive_power_%28computer_science%29)
and
[Shutt-abstractive](https://fexpr.blogspot.com/2013/12/abstractive-power.html).

## Identity

As a classic and powerful first example, we can give a redefinition of `{du}`
in NFOL terms.

    ro da ro de zo'u:

             da du de
    ========================== (id-def)
    ro bu'a zo'u da .o de bu'a

This rule is a second-order *definition*; such rules are not possible within
first-order logic. There are many reasons to justify this sort of explanation
as a definition, but the primary reason is that they could be entered into
Lojban dictionaries. For example, we could define ``{du}`` as:

    ro bu'a zo'u x₁ .o x₂ bu'a

And give any tautology, like ``(id-refl)``, as an example:

    ro da zo'u da du da

Once so defined, ``{du}`` is technically not in terms of any particular
selbri; rather, it is a global property of *all* selbri!

## Natural numbers

We can give the induction principle for natural numbers with SO quantifiers.

    ro bu'a zo'u:

    ge li no bu'a gi ro da su'o de zo'u da na.a de bu'a .ije da kacli'e de
    ---------------------------------------------------------------------- (kacna'u-ind)
                      ro da zo'u da kacna'u nagi'a bu'a
