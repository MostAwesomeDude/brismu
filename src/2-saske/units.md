# Measurements & Units

We start with the open-class structure of {merli}:

    sanji1: observers
    sanji2: observables

    sidbo1: abstractions of at least one open {ce'u}
    sidbo2: anything
    sidbo3: sanji1

    merli1: sanji1
    merli2: sanji2
    merli3: numbers
    merli4: sidbo1 of at least two open {ce'u}
    merli5: intervals

The intended *selbri* for the abstractions are the *mreselbri*:

    msb1: observables
    msb2: numbers

The central connection between these *gismu* is given by:

    {ko'a sanji ko'e} & {ko'a merli ko'e ko'i pa si'o ce'u bu'a ce'u kei}
    => {pa si'o ce'u bu'a ko'i kei sidbo ko'e ko'a}

The core idea is that we do science via epistemic measurements, where an
observer interacts with an observable and quantifies the interaction on a
scale. By doing this, the observer comes to have a belief about a property of
the observable.

The consensus approach is that only *mreselbri* are allowed in measurements,
and that they can only be combined according to the rules of a free Abelian
group. In English, these are often called "units" and the rules for
manipulating them are known as "dimensional analysis".

In the baseline, the general form of *mreselbri* is "x1 is x2 $UNITs in length
(default 1) by standard x3". We're going to ignore x3 and occasionally x4 for
now; we might revisit them when talking about frames of reference. We will
also ignore that {mitre} has a bad x3.

## Combining Units

Following [this wiki page](https://mw.lojban.org/papri/composite_Units),
dimensional multiplication can be done with {pi'ai}. For inverses, {fei'u} is
available; for repeated dimensions, {te'ai} is available.

## SI Units

There are seven "SI base units" which generate the Abelian group of units
considered in the hard sciences:

SI base unit | quantity | *mreselbri*
---|---|---
second | time | {snidu}
meter | length | {mitre}
kilogram | mass | {kilga}
ampere | current | {xampo}
kelvin | (thermodynamic) temperature | {kelvo}
mole | cardinality | {molro}
candela | luminous intensity | {delno}

There are also "SI derived units" which are merely certain elements of that
group:

SI derived unit | *mreselbri* | equivalent *selbri*
---|---|---
pascal | {paska} | {pi'ai kilga fei'u mitre snidu snidu}
litre | {litce} | {mitre te'ai ci}
radian | {radno} | {pi'ai mitre fei'u mitre}
steradian | {stero} | {pi'ai mitre mitre fei'u mitre mitre}

And particular derived units which are scalar multiples of other units:

*mreselbri* | base *mreselbri* | scalar
---|---|---
{grake} | {kilga} | 1000
{mentu} | {snidu} | 1 / 60
{cacra} | {mentu} | 1 / 60
{djedi} | {cacra} | 1 / 24
