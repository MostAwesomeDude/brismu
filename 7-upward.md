# 6: Upward

Let's start tackling arbitrary easy gismu.

# Equivalence relations: {mintu}

We can generalize `{du}` to arbitrary equivalence relations with `{mintu}`.

               da du de
    ============================== (mintu-intel)
    da mintu de pa ka ce'u du ce'u

`{mintu}` gets a special rule to enforce equivalence on mintu3.

    da mintu de pa ka ce'u broda ce'u
    ================================= (mintu-refl)
    de mintu da pa ka ce'u broda ce'u

# Example elements: {mupli}

`{mupli}` is a straightforward combination of what we've already seen.

    da ckaji de & da cmima di
    ========================= (mupli-intel)
         da mupli de di

# Substitutes: {basti}

Similarly, `{basti}` is straightforward once we look below the `{ckaji}` in
the traditional definitions.

           da .e de broda
    ============================ (basti-intel)
    da basti de pa ka ce'u broda

# Similarities and Differences: {simsa}, {frica}, {makau}

Once again, we have a pair of relations where one is easier to describe than
the other. As usual, first, we'll define the simpler one. The selbri `{simsa}`
is akin to `{basti}` in that it relates similar objects, but includes extra
data indicating *how* the objects are related; informally, this is what they
have in common.

           da .e de broda di
    =============================== (simsa-intel)
    da simsa de lo ka ce'u broda di

`{frica}` is similar, but instead claims that its components are distinct.
Note that `{simsa}` unifies its witnesses, but `{frica}` cannot do that,
because the witnesses are supposed to be distinct. One possible solution would
be to include a `{fa'u}` pair somewhere in the definition, but the
community-accepted solution is to instead remove the value entirely from
binding. There *is not* a bindable value, because the value would be
indeterminate even in each single possible world.

The way that we indicate this, again by community convention, is with the
compound cmavo `{makau}`.

    zi'o broda de
    -------------- (makau-intro)
    makau broda de

This one-way rule is a strict weakening. But now we can explain how `{frica}`
works.

          da .onai de broda makau
    ================================== (frica-intel)
    da frica de lo ka ce'u broda makau

We can imagine `(makau-intro)` as witnessing the weakening in the chain of
conclusions:

* {ta cinfo py. zo leo} "That lion is a P. leo."
* {ta cinfo da} "That lion is of some species."
* {ta cinfo zi'o} "That is a lion of unknown species."
* {ta cinfo makau} "That lion's a whatchamacallit."

Similarly, {ta frica tu lo ka ce'u cinfo} can be read as "that and that other
lion are different in that they are not of the same species". The `{makau}`
is implicit in regular speech.

# Restrictive Apposition: {po'u}

Let's use some linguistic terminology. A [restrictive appositive
clause](https://en.wikipedia.org/wiki/Apposition) combines a relative clause
with an identity relation. CLL 8.3 says that `{po'u}` means `{poi du}`,
and we'll go with it.

    da poi ke'a du de broda di
    ========================== (po'u-intel) [CLL 8.3]
       da po'u de broda di

# Reciprocity: {simxu}

simxu1 is a set, and for each pair of elements in the set, the selbri simxu2
relates that pair. We can give a very plain definition based on that
description.

    de cmima da & di cmima da & de broda di
    ======================================= (simxu-intel)
        da simxu pa ka ce'u broda ce'u

Once again, since we are working relationally, we get many different sets,
each of which satisfying the reciprocality property that we are designating.

# Signs: {sinxa}, {la'e}, {lu'e}

As in CLL, we can define `{la'e}` and `{lu'e}` as shorthand for `{sinxa}`.
Note that symbols and interpretations are things, and thus are subject to
quantification.

    lo sinxa be da ku broda de
    ========================== (lu'e-intel) [CLL 6.10]
      lu'e da lu'u broda de

    lo se sinxa be da ku broda de
    ============================= (la'e-intel) [CLL 6.10]
        la'e da lu'u broda de

I recall discussion about whether sinxa3 is implicitly `{mi}` or `{mi'a}` or
some similar connection to the speaker. However, I am not sure whether this is
a cultural convention, and at any rate, leaving sinxa3 unbound allows for more
flexible usage.
