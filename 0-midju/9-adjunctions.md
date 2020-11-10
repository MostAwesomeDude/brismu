# Adjunctions

There are several spots where Lojban has adjoint operators.

## Abstractor adjunction: {jai}, {tu'a}

The general idea is {da jai broda} <=> {tu'a da broda}.

## Mekso adjunction: {na'u}, {nu'a}

`{na'u}` sends mekso operators to selbri, and `{nu'a}` sends selbri to mekso
operators. In both cases, arity is implied.

We get several rules from this. First, for selbri like `{sumji}`, we have a
bijective correspondence between the selbri and the operator:

    ro da ro de ro di zo'u:

      da sumji de di
    ================== (su'i-na'u)
    da na'u su'i de di

And since it's a bijection for each individual operator, we get a cancellation
rule as well:

    ro bu'a zo'u:

    na'u nu'a bu'a
    ============== (na'u-adj)
         bu'a

Note that there's additional structure here which we'll have to explain in
mekso; `{su'i}` is n-ary (binary minimum?) but `{sumji}` is always binary.

### Table of VUhU operators and selbri

operator | selbri
---------|--------------------------------------------------------------------
su'i     | sumji
pi'i     | pilji
vu'u     | se sumji
fe'i     | se pilji
fa'i     | se pilji fe li pa
te'a     | tenfa
gei      | ka su'o da zo'u ge da tenfa ce'u ce'u gi ce'u pilji ce'u da
ge'a     | cei'i
de'o     | dugri
fe'a     | se tenfa
va'a     | se sumji fe li no

Not listed:
* cu'a
* ju'u
* ne'o
* pa'i
* re'a
* pi'a
* sa'i
