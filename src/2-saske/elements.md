# Elemental Chemistry

Here, we will explain chemistry in terms of elements and molecules.

## Class of Elements

The following schema organizes elemental atoms and molecules:

    ratni1: atoms
    ratni2: atomic numbers (number of protons)
    ratni3: mass numbers (number of nucleons)

    rakle1: atomic numbers (number of protons)
    rakle2: groups
    rakle3: periods (number of full electron shells)

    groups1: atoms
    groups2: ???

    xukmi1: physical objects
    xukmi2: molecules
    xukmi3: purities (0, 1]

Note that ratni3 is always at least ratni2.

Note that {rakle} has two more places which we are ignoring; rakle4 is a
shadow of rakle2, and rakle5 is fixed by the Standard Model.

Groups should probably be indexed by natural numbers. Currently, there are
experimental lujvo for individual elements within a group, but those would
only be useful as indirect labels.

Note that membership in {xukmi} is inherently fuzzy, with xukmi3 as the
fuzziness. Also note that 100% purity is physically unlikely but legal for
textbook examples.

One open question is how atoms form molecules. Something with the structure:

    x1 (molecule) has underlying graph x2 (graph) where x3 (atom) is assigned to vertex x4

For now, we suggest a sharp barrier between atoms and molecules.

One open question is whether molecules in dynamic equilibrium are always
present, probabalistically present, or conditionally present; we assume the
former. For example, in the equilibrium reaction for water:

    2 H₂O <=> H₃O⁺ + HO⁻

Do we say that DI water is 100% H₂O? 50% HO⁻? Does it have more exotic
species? Perhaps it depends on laboratory conditions. In this particular case,
there is a solid argument that water is H₂O by default, because it only
self-ionizes about once per 10 hours (per pair of molecules) and
self-neutralizes about 1 picosecond later, yielding an average purity of 15-16
nines.

Molecule gismu are extensionally identified with sets of physical objects
composed of those molecules. This includes gismu which cover multiple
molecules, as noted below.

Note that the logic of chemical reactions, stoichiometry, is a linear logic
which is not generated from the posetal logic of **Selb** or the deductive
logic of **Loj**. Instead, given any family of stoichiometric equations which
holds parametrically over a relation of elements, **Selb** has a posetal logic
generated by its subrelations. For example, all halogens have hydrogen
halides; for halogen *x*, there are environmental conditions where the
stoichiometric equation holds:

    H₂ + x₂ => 2 Hx

The corresponding posetal logic is generated by subrelations of {kliru}.

### Groups of Chemical Elements

These gismu refer to entire columns of the periodic table.

* sodna: group 1, sodas, alkali metals; lithium, sodium, potassium, rubidium, caesium, francium
* kliru: halogens; fluorine, chlorine, bromine, iodine, astatine, tennessine
* navni: noble gasses; helium, neon, argon, krypton, xenon, radon, oganesson

Hydrogen should also get {cidro}, perhaps? It ought to get its own group, as
too many stoichiometric families of group 1 metals exclude it.

## Elements

These gismu refer to elements.

* cnisa: lead
* margu: mercury
* nikle: nickel
* rijno: silver
* solji: gold
* sliri: sulfur
* tinci: tin
* tirse: iron
* tunka: copper
* zinki: zinc

These gismu are ambiguous about whether they refer to atoms or molecules.

* kijno: oxygen, ozone
* tabno: carbon; graphite, diamond, charcoal
* trano: nitrogen; ammonia, nitrates

## Elemental/Molecular Families

* djacu: water (H₂O)

## Alloys

* gasta: steel (iron, carbon)
* lastu: brass (copper, zinc)
* ransu: bronze (copper, tin)

## States of Matter

* litki: liquid
* gapci: gas
* jinme: metal
* bisli: ice, crystal
* sligu: solid

* dunja: freeze, gel, solidify

## Composite Substances

* kolme: coal, peat, anthracite, bitumen
* tarla: tar, asphalt
* kunra: ore
* romge: polished metal surface
* bakri: chalk

## Chemical Reactions

* slami: acid
* jilka: alkaline

## Other valsi

* runta: solute in solvent
* pulce: precipitate
* curve: pure, unadulterated, unmitigated, simple

Perhaps {curve lo tabno} "pure carbon", for example.

* spisa: piece, portion, lump, chunk, particle (substance)

Perhaps {spisa} => {pagbu}.

### Oxidizers

{fagri}'s third place takes an "oxidizer." This could be oxygen, air, hydrogen
peroxide, or something else.
