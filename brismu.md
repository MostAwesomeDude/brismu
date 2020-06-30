# 0: Introduction

This pamphlet is addressed at folks who know Lojban. They've read not just a tutorial like [la karda](http://ldlework.com/projects/cards/la-karda/index.html), the [Crash Course](https://mw.lojban.org/papri/The_Crash_Course_in_Lojban), or the [Wave Lessons](https://mw.lojban.org/papri/Lojban_Wave_Lessons), but also [CLL](https://lojban.org/publications/cll/cll_v1.1_xhtml-section-chunks/) and the [BPFK Sections](https://mw.lojban.org/papri/Category:BPFK_Section), and some of the various notes from many community members.

I am not aiming to teach the syntax of Lojban, but to radically and fundamentally approach the logical foundations of the semantics of Lojban. We will not start with pronouns, but with relations, and we will always keep the mathematics in mind as we progress.

A common theme in the Lojban community is an uncertainty about what words mean. Since words are treacherous and don't have ultimate meaning, and many Lojbanists are philosophers, it is predictably common for such uncertainty to evolve into passionate discussion featuring these themes:

* "Lojban is not a [relex](https://en.wikibooks.org/wiki/Conlang/Types#Relexes)": Aside from Lojban itself being forked from Loglan, Lojban is not merely a borrowing of semantics precisely established and defined in some natural language.
* Limited words can still blanket semantic space by being vague. We can use tanru to carefully describe observed objects in only certain ways, without committing to imprecision or incorrectness.
* The [grue/bleen problem](https://en.wikipedia.org/wiki/New_riddle_of_induction#Grue_and_bleen) prevents us from fixing any absolute meaning to any word over time.

So, rather than give each word a meaning on its own, I will use categorical logic and reasoning to build up structural meanings for Lojban. The resulting interpretation will have the structure of an [allegory](https://en.wikipedia.org/wiki/Allegory_(mathematics)), indeed a [bicategory of relations](https://ncatlab.org/nlab/show/bicategory+of+relations), but do not let these currently-unfamiliar mathematical terms worry you, as they are both just ways to talk about what relations are.

# 1: What is a relation?

First, mathematically, a [binary relation](https://en.wikipedia.org/wiki/Binary_relation) `R : X -> Y` between two collections of objects `X` and `Y` is a collection of pairs of objects `(x, y)` in `(X, Y)`.

Immediately, the most important feature is the reversibility of the relation; for every `R : X -> Y` there is an `R† : Y -> X`, called the [dagger](https://en.wikipedia.org/wiki/Dagger_category) of `R`, which is the same relation but backwards. Another important feature is that we can ask whether a given pair `(x, y)` is in `R`, and this leads to the [characteristic function](https://en.wikipedia.org/wiki/Indicator_function) for `R`, which returns the Boolean truth value, true or false, indicating whether the pair is in the relation. We'll write this characteristic as `R(x, y)`. We can also ask about how many pairs are in `R`, and we'll write this as `|R|` and call it the [cardinality](https://en.wikipedia.org/wiki/Cardinality)). We'll say that `R` is satisfiable when it has nonzero cardinality.

While binary relations are the most common kind, relations can come in any arity, and we might see unary relations (which are just subsets) or ternary relations or any arity.

Now, Lojbanically, a selbri has an underlying relation, and its sumti have underlying sets. When we write `{da broda de}`, we are indicating that `(da, de)` is within some collection referenced by `broda : abu -> ebu`. The intermediate Lojbanist will immediately recognize that `{de se broda da}` is the same utterance, but rearranged; `{se}` acts as a dagger operator. Similarly, the selbri `{jei da broda de}` is syntax for the characteristic function; we are applying the selbri `{broda}` onto the pair `(da, de)` and seeing whether it is present in the relation. The selbri `{ka ce'u broda ce'u}` allows us to capture the selbri `{broda}` itself and plug many different pairs of values in to see whether they are present.

While I will try to keep this terminology straight, I may occasionally abuse words to say that some sumti are in a selbri, by which I mean that the referent objects of each sumti, taken as a tuple, belong to the relation referred to by the selbri.

## Size issues

What are our collections? In mathematics, we usually build relations and pairs from sets. However, when sets contain other sets, then we have problems about infinite sets which contain other infinite sets, popularly known as [Russell's paradoxes](https://en.wikipedia.org/wiki/Russell%27s_paradox), or affectionately known to mathematicians as ["size issues"](https://math.stackexchange.com/questions/1971632/whats-behind-the-word-size-issues). To avoid size issues, we have to say that there are only some certain ways to form infinite sets. In particular, the only infinite set we'll directly build is the set of natural numbers.

# 2: Definitions and Proofs

Let's define some valsi, just like any good Lojban tutorial. Since I assume that the reader has already consumed an introductory tutorial and a grammar reference, I will attempt to focus on the formal side of our budding correspondence between Lojban and categorical logic.

## Identity: {du}

The first selbri we'll define is `{du}`. With `{du}`, we can relate any object to itself. How do we talk about this property formally? We'll use [natural deduction](https://en.wikipedia.org/wiki/Natural_deduction), which is a common style of formal proof. The idea is to start from some assumptions, and apply some rules, coming to some conclusions.

To start, let's give an axiom for `{du}`. An axiom is an assumption that we can always make. I'll put this axiom in a block by itself, but I'm also going to give it a petname in parentheses so that we can refer to it later easily.

    da du da (id-refl)

"id" is short for "identity", and that's precisely what `{du}` does. "refl" is short for "reflexive", which is one of the three properties of [equivalence relations](https://en.wikipedia.org/wiki/Equivalence_relation). An equivalence relation is a relational way to talk about equality, and `{du}` definitely should be an equivalence relation, so let's add those other rules. The second property is called "symmetry", and it means that we can swap the sumti without changing the bridi. To show what a swap looks like, we'll introduce rules. A rule has some assumptions on top, and then a bar, and then some conclusions on the bottom.

    da du de
    ======== (id-sym)
    de du da

Here I've drawn a double bar to show which part of the rule is which. I will sometimes also draw single bars. The double bar is reversible; it can be turned upside down to gain another rule. For `{du}` this is unsurprising, but some double bars later on may feel confusing at first. I encourage the reader to take their time and carefully examine the diagrams to make sure that they can read each step in a proof.

In relational logic, many rules are reversible. This is an instance of the [microcosm principle](https://ncatlab.org/nlab/show/microcosm+principle), where algebraic structures tend to show up within their own categorified presentations. We will eventually show that rules can be manipulated like sumti.

A rule can have multiple assumptions. Here, I'll use an ampersand to separate multiple assumptions.

    da du de & de du di
    =================== (id-trans)
         da du di

And in relational logic, rules can have multiple conclusions! This happens if we take a reversible rule like `(id-trans)` and run it backwards.

## Conversion Operators: {se}

`{se}` is one of what I will call "operators" on selbri; they are cmavo which alter the structure around a selbri without changing the relation itself. `{se}` also has reversible rules, as one might expect.

     da broda de
    ============== (se-intel)
    de se broda da

"intel" is short for "introduction" and "elimination", which are traditionally two separate rules. With relational logic, it's one reversible rule instead.

We can start to describe a conversion-normal form for selbri by imagining applying `(se-intel)` backwards whenever possible, eliminating `{se}`.

Finally, let's finish our tour of natural deduction by building a proof. A proof is a tree of rules, with the conclusions of one rule becoming the assumptions of the next rule. When a proof only assumes axioms, then I will call its conclusions theorems, and consider them as honorary axioms. Here is our first proof; it starts from an axiom and applies a single rule, concluding in our first theorem.

     da du da   (id-refl)
    =========== (se-intel)
    da se du da

What we have concluded is that, in any context, `{da se du da}` is a true bridi. We could give this theorem a name and reuse it in the future. Here's another useful theorem.

     da du de
     ========   (id-sym)
     de du da
    =========== (se-intel)
    da se du de

This theorem states the symmetry of `{du}` using `{se}`.

# Composition: {gi'e}

When a variable shows up in two different bridi, then we might be able to combine them. The underlying relations compose cleanly, so most of the difficulty is in Lojbanic arrangement. We need to use the concept of contravariance, and turn around one of the bridi, in order to apply `{gi'e}`.

    da broda de & da brode di
    ========================= (gi'e-intel)
    da broda de gi'e brode di

Our ampersand happens to commute, so `{gi'e}` commutes as well. To see this in full, let's do a deduction that can't be done with only two dimensions. The `(sr)` rule is short for "structural rearrangement"; we are doing bookkeeping that doesn't affect the logical correctness of assumptions and that would be free if we could stand our proof up like a tree in three dimensions. Recall that `{gi'e}` groups to the left.

    da broda da gi'e brode de gi'e brodi di
    ======================================= (gi'e-intel)
    da broda da gi'e brode de & da brodi di
    ======================================= (gi'e-intel)
    da broda da & da brode de & da brodi di
    ======================================= (sr)
    da broda da & da brodi di & da brode de
    ======================================= (gi'e-intel)
    da broda da gi'e brodi di & da brode de
    ======================================= (gi'e-intel)
    da broda da gi'e brodi di gi'e brode de

In the middle, those two triangles of assumptions are each two-dimensional, but stacked on top of each other, giving a three-dimensional structure to the proof.

To get more comfortable with proofs, let's do another one. This proof is closer in phrasing to traditional categorical texts, where given `f : X -> Y` and `g : Y -> Z`, one can form `f;g : X -> Z`. Note that, unlike in traditional notation, we do not forget our intermediate connecting values between relations.

     da broda de & de brode di
    ============================ (se-intel)
    de se broda da & de brode di
    ============================ (gi'e-intel)
    de se broda da gi'e brode di

One more rule connects `{gi'e}` back to `{du}` by letting us effectively rewrite across an equality. This is like performing a sort of unification, too.

    da broda de & de du di
    ====================== (du-intel)
         da broda di

We can use both of these new rules to write the more categorically-oriented proof, which says that composition with the identity relation has no effect.

    da broda de gi'e du di
    ====================== (gi'e-intel)
    da broda de & de du di
    ====================== (du-intel)
         da broda di

Along with the other rules introduced, we now have a dagger category on selbri, with `{du}` as our identity selbri, `{gi'e}` for composition, and `{se}` for the dagger.

## Scoping

Scoping comes into play at this time. Up until this point, we have not explained the scoping and binding of our `{da}` variables. However, scoped negation and plural quantifiers do not work with our `(se-intel)` rule. The fix comes from work done on bicategories of relations and [regular logic](https://en.wikipedia.org/wiki/Regular_category#Regular_logic_and_regular_categories): All quantifiers must either be lifted to the top level, or be single positive existential quantifiers.

In more words, `{da}` is fine because it only binds one thing once, it asserts that the bound thing satisfies the bridi it's bound within, and it only claims that there is one satisfying thing at a time rather than all things at once, and it fortunately has all of these properties by default. When we need other quantifiers, we will use a [prenex](https://lojban.org/publications/cll/cll_v1.1_xhtml-section-chunks/section-da-and-zohu.html).

## Interpreting natural deduction

Each logic in natural deduction can be used to give judgements, like "P is true." Wikipedia lists "P is possibly true," "P is always true," "P is true at a given time," and "P is constructible from the given resources," as other examples in other logics. What does relational logic give us? Relational logic judgements are of the form "P is true multiple times, under each of the given contexts;" we can imagine that a bridi is not just true or false, but true for each of the many possible values that are being related.

# 3: Categorical Relational Algebra

Let's investigate more properties of the category of sumti and selbri. In this section, we'll think categorically, and look for abstract patterns which show up elsewhere in logic. We'll look at products and coproducts, as well as internal homs.

## Products: {gi'onai}

Is there a selbri for categorical products? Let's first write out the categorical [universal property](https://en.wikipedia.org/wiki/Universal_property) that we want to search for. Given two objects `X` and `Y`, their product `X * Y` comes with the ability to combine any two arrows `l : I -> X` and `r : I -> Y` into a single compound arrow `l*r : I -> X * Y`, as well as two arrows `p1 : X * Y -> X` and `p2 : X * Y -> Y`. Next, let's write a selbri in English, along the lines of "x1 (set) is the disjoint union of x2 (set) and x3 (set)". We know from the definition of the [category of relations, Rel](https://en.wikipedia.org/wiki/Category_of_relations), that the disjoint union of sets is the correct choice for products.

As it happens, the experimental non-logical cmavo `{jo'ei}` can build disjoint unions, although there is no selbri satisfying `{da jo'ei de broda da de}` as we might like.

Now, let's state the actual universal property. For products, this means combining our two arrows into one arrow. To achieve a disjoint union, we will select from either the left-hand arrow or the right-hand arrow, but not both at once. This is a job for `{onai}`.

     da broda de & da brode di
    ============================ (gi'onai-intel)
    da broda de gi'onai brode di

What makes this rule different from `(gi'e-intel)` is the logical interpretation of results. An `{onai}` forms a branch, and only variables on one side of the branch will be bound. That is, even when the entire bridi succeeds, some of its variables may not have any values. If we wanted to prevent this situation, then we could produce a fresh variable and adopt the convention that scoped variables aren't visible at the top level, but that requires some extra machinery that we haven't set up yet.

Let's get weird. We haven't properly introduced negation yet, so let's just say that when `{onai}` chooses one branch, then the other branch is not explored. Negation is like a refusal to bind any values. We will get more precise later, but for now, consider this surprising statement.

     da broda de gi'e brode di
     =========================   (gi'e-intel)
     da broda de & da brode di
    ============================ (gi'onai-intel)
    da brode de gi'onai brode di

Here is part of the strange reality of relational algebra: The number of results is not necessarily zero, neither on the top nor the bottom of this statement!  On top, we need both relations to be satisfied simultaneously, so we'll get triples `(da, de, di)`. On bottom, we can have pairs of either `(da, de)` or `(da, di)`. So, if we go from top to bottom, then each input triple gives two output triples. In the other direction, we are performing a unification that matches up these pairs into [spans](https://en.wikipedia.org/wiki/Span_(category_theory)), which happens to be a common operation in low-level relational algebra.

## Coproducts

Relations are extremely symmetrical, and sometimes that is very powerful. Categorical coproducts, also known as sums, are very popular in programming language theory. Coproducts are defined by [categorical duality](https://en.wikipedia.org/wiki/Dual_(category_theory)); we take the definition of products, mechanically turn around all of the arrows, and obtain a new universal property. But because relations are so symmetrical, it happens that the disjoint union implements both products and coproducts for relations.

      da broda di      de brode di
     ==============   ============== (se-intel)
     di se broda da & di se brode de
    ================================== (gi'onai-intel)
    di se broda da gi'onai se brode de

One more curious example. Here, we are looking for `broda(di, de)` pairs where `di ≠ di`. We are allowed to transition between zero and nonzero numbers of results!

    da broda de gi'onai du di
    ========================= (gi'onai-intel)
     da broda de & da du di
     ======================   (du-intel)
           di broda de

## Internal homs



# 4: Categorical Set Theory

At this point, we are ready to give the axioms for set theory. We will be using [ZF](https://en.wikipedia.org/wiki/Zermelo%E2%80%93Fraenkel_set_theory), and the shape of each axiom comes from [Rethinking Set Theory](https://arxiv.org/abs/1212.6543).

## Composition

## Terminal object

## Initial object

## Products

## Internal homs

## Pullbacks

## Subobject classifier

## NNO

## Choice

# -1: Notes, Uncleaned

For an example of a reversible rule with surprising behavior, we give meaning to a classically-frustrating sumti, {zi'o}.

     da broda de
    =============
    da broda zi'o

To try to give meaning to this rule:
* When unifying, {zi'o} is a don't-care not-a-value
* A bridi with {zi'o} is true regardless of what values may match {zi'o}
* {zi'o} erases columns from the relations of selbri

When reversing this rule, {de} is existentially bound. Folks often wonder about how this might be interpreted computationally. When computing with relations, imagine all operations as many-to-many, relating multiple inputs to multiple outputs. This existential {de} therefore represents all of the many different possible values which would satisfy the relation if the column were to be added.

We now start inching towards set theory inside Lojban. We begin with an important relation, {cmima}, which corresponds to the notion of membership. First, let us put size issues to rest:

    da na cmima da

A {na} bridi asserts that its tuple of sumti are not related by its selbri; that is, that the tuple doesn't belong to the selbri's relation. And now we can give an equivalent for the axiom of pairing:

    da cmima da ce de

{ce} is commutative:

    da ce de broda
    ==============
    de ce da broda

We now introduce useful sumti. First, {da} may be restricted with {poi}. A sumti {da poi ke'a broda} carries with it the implicit understanding that {da broda}. {broda} is here captured as a selbri, with {ke'a} for the sumti that {da} will fill in. In terms of set theory, the values that {da} can take on are universal, but the values that {da poi ke'a broda} can take on are limited by {broda}'s relation's cardinality. Therefore we cannot have a reversible rule for introducing and eliminating {poi} restrictions, only a one-way rule:

              da broda
    ----------------------------
    da poi ke'a brode ku'o broda

We may now define {lo broda} as {da poi ke'a broda} and {lo broda be de} as {da poi ke'a broda de}.

We know the natural numbers, {no}, {pa}, {re}, etc. already. We may define {li no} to refer to zero itself as a sumti, and similarly for the rest of the natural numbers.

We may also say {pa broda} as a sumti to indicate {pa da poi ke'a broda}, and {pa da} to indicate that there exists exactly one value which {da} can take on for all satisfying rows. Since this is a confusing concept, it is worth spelling out in more detail. Recall that relations are many-to-many in their operation. A {pa da} in the result is an assertion that, for each of the many distinct rows that satisfy the relation, {da} will be unchanging in the value that is assigned to it. We do have a one-way weakening rule:

    pa da broda
    -----------
      da broda

There is also a rule for {no da}, which asserts that zero values are taken on by {da}, which means that no rows match, which means that the relation effectively isn't true. This can be inverted, too.

    no da broda
    ===========
    da na broda

We are now ready to close over bridi with {ka}. {ka ce'u mlatu ce'u} captures the two open places like a lambda, or more precisely like an internal hom. There is only one {mlatu}, and so only one {ka ce'u mlatu ce'u}. Similarly, if there were a {da} bound, then there would only be one {ka da mlatu ce'u}. Why? Because while {da} takes upon multiple values, it only does so within a particular relation. {ka} is therefore performing a relational join between {da}'s source table and its bound bridi.

All of this is to explain that {pa} is the correct quantifier for {ka}. {ckaji} can be used to cleave the first sumti away from a bridi, giving the rest of the bridi in a {ka}.

            da broda de
    ============================
    da ckaji pa ka ce'u broda de

Similarly, {ckini} can produce binary {ka}. That's right, {ka} have arity, and so we must be explicit about {ce'u}.

               da broda de
    =================================
    da ckini de pa ka ce'u broda ce'u

We may now define {lo'i broda} as {lo se cmima be lo broda}. We can also define {lo'i pa broda} as {lo se cmima be lo pa broda}, and {lo pa broda} as {pa da poi ke'a broda}. In fact, for all natural numbers, we have an axiom. Let P be some natural number, and then:
 
    lo P broda cmima lo'i P broda

Applying definitions:

    P da poi ke'a broda ku'o cmima de poi ke'a se cmima P di poi ke'a broda

Or, in plainer language, if we expect {da} to be bound to P distinct values during the course of our query, then it follows that we will explore a set with cardinality P, whose elements each satisfy {da}'s constraints. This may seem trivial, but it is an important sanity check as well as an indication of the strength of our theory: Every defined set has P elements which each satisfy the set's defining property.

As a special case:

                       lo no broda cmima lo'i no broda
    =====================================================================
    no da poi ke'a broda ku'o cmima de poi ke'a se cmima no di ke'a broda
    =====================================================================
    no da poi ke'a broda ku'o cmima de poi ke'a na se cmima di ke'a broda
    =====================================================================
    da poi ke'a broda ku'o na cmima de poi ke'a na se cmima di ke'a broda
    =====================================================================
            lo broda ku na cmima de poi ke'a na se cmima lo broda
            =====================================================
               lo broda ku na cmima lo na se cmima be lo broda

This is a nice double-negation theorem.

We can define {kampu} now. {kampu} relates a {ka} to a set, so that every member of the set can be plugged into the {ka}'s subordinate bridi. More formally, {kampu} relates sets to their membership relations. As a result, after defining {kampu} in terms of {ckaji}:

    pa ka ce'u broda ku kampu lo'i brode
    ====================================
     lo broda ku ckaji pa ka ce'u brode

This looks like an adjunction, doesn't it? We can also define that, as an axiom, {kampu} should relate every membership relation to the set of the members:

    pa ka ce'u broda ku kampu lo'i broda

Let's continue on to get a classic tautology of informal Lojban:

    pa ka ce'u broda ku kampu lo'i broda
    =====================================
      lo broda ku ckaji pa ka ce'u broda
      ==================================
             lo broda ku broda

Note the difference between the earlier axiom that {da brode} -> {lo broda ku brode}, and this axiom that {lo broda ku broda}. The earlier axiom is conditional upon already having established {brode} as a main selbri, while this newer theorem allows us to introduce a restricted query upon any {broda} as a starting point.

We have set membership, one of the two important relations of set theory. The other is the subset relation, {steci}.

# -2: Ideas not yet fully cooked

{me} has poset structure according to https://mw.lojban.org/papri/gadri:_an_unofficial_commentary_from_a_logical_point_of_view for each of our sumti. Even better, it interoperates with {du}. {jo'u} is used for unions; the experimental {jo'ei} could be used for intersections.

{mei} and {moi} ought to have clean interpretations once we introduce NNO properly.

{fancu} has been a thorn in my mind for how long now? Let's say that fancu4 is {pa ka}. We might, at first blush, require fancu4 to be functional ("single-valued"). But another route is to let fancu4 bind multiple times, ranging over each of the possible legal functional subrelations. Like, for each subrelation, if it's functional, then bind it.

Building on that, {da poi selcmi zo'u fancu da da pa ka ce'u du ce'u} ought to designate the identity function on any particular set {da}. But there may be many functional subrelations on {da} which are too small to be the identity! In this case, though, it is okay because every element of fancu2 must be accounted for, and so all functional subrelations satisfying this condition will be big enough. We know, then, that there's a nice sandwich that lets {pa ka ce'u du ce'u} do what we want here.

{mintu} is like {du} but generalized to take an equivalence relation for mintu3.