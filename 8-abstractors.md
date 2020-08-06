# 8: Abstractors

The basic idea behind abstractors is to take a selbri/bridi and produce a new
selbri. Note carefully that the abstractors come in two families, depending on
whether they take selbri or bridi. What's the difference? A selbri has
`{ce'u}` slots open, and thus has an arity; it's a relation, after all. A
bridi, however, is a concrete state of values being related by a relation
(terbri related by selbri). They aren't the same type of thing.

"Hold on," you might object, "but what about nullary relations?" On one hand,
yes, okay, the two selbri `{cei'i}` and `{gai'o}` are also bridi, because of
this. But they're the only ones! All other nullary relations are isomorphic to
one of those two.

"Hold on again," you might continue, "but don't all NU syntactically permit
{ce'u}?" Yes, that's a fair objection. However, it is a well-established
community standard that `{du'u}` and `{nu}` do not capture `{ce'u}`, and
further that they capture fully-applied predicates with truth values.

First, `{ka}`. We understand `{ka}` pretty well by now; when we informally
talk of e.g. `{mlatu}`, we are talking of `{pa ka ce'u mlatu ce'u}`, or
mlatu/2, the binary relation which is inalienable from the text `{zo mlatu}`.

Next, `{du'u}`. We haven't yet dug into these, but they are fully constructed
bridi; `{lo mlatu ku cadzu}` is represented as `{pa du'u lo mlatu be zo'e ku
cazdu zo'e zo'e}`. Folks like to imagine these as having definite truth
values, and it's tempting to join in; after all, *surely* every relation
either does or does not contain a given row, right? Well, if we do that, then
we actually hobble our logical power! It seems strange, but classical logic
loses the ability to consider certain kinds of infinite objects if it would
take infinite time to determine their truth value in a true-or-false context.
What we can give is something nearly as good: Every subset of some set S has a
complement relative to S. When S is a Von Neumann universe (a powerset of an
ordinal, basically), then the elements of S have a bounded set theory that
does allow for Boolean logic.

"Hold on," you might object, "but this sounds like romantic hogwash." There
are two ways to look at it. One way is computationally: We can't know whether
some element is definitely in a set or not without running a program, and that
program can take forever. We can't tell if a real number is equal to zero or
any other real number without running a program forever, either. Another way
is logically: Gödel et al. have rigorously showed us that there's no way to
just assign a truth value to an utterance like `{nei na fatci}`. Either way,
it's very solid, and Boolean logic can either be classical, and have a gaping
hole where we can be convinced of things that we can't build, or constructive,
and have a lot of times where things are true, false, or not false; zero,
non-zero, or not non-zero; infinte, finite, or not finite. For extra fun, we
can say "not" as "not yet known to be, but maybe if we run the program just a
little longer..." This is Turing's undecidability.

Okay, that's where we've been. Now let's go to new places.

## Amounts: {jei}, {ni}

Despite incompleteness, truth values are still limited to "true" and "false";
a relation either has or doesn't have (or is incomplete on) a row. We can
enrich any relation by adjoining some type and using its elements to decorate
rows, and we can use that enriched data in our characteristic function. Now, a
row isn't simply present or not present, but present *and annotated* or not
present.

First, let's generalize presence. Some selbri will have a hidden column for
the likelihood that the relation holds, expressed as a classical probability
in the unit interval. These are [fuzzy
sets](https://en.wikipedia.org/wiki/Fuzzy_set). Fuzzy sets happen to need a
universe relative to which to establish their probability distributions, which
happens to just be the way in which subsets were given the ability to have
complements in my earlier rant.

For now, I can't find any gismu which would directly allow accessing fuzzy
membership probabilities, so I'll hold off on axioms, but the idea is roughly
that a `{du'u}`, which is a proof of membership, could be traded freely for a
`{jei}`, which indicates the degree of membership.

For `{ni}`, the story could be much brighter. We could imagine bending around
a wire from a `{ka}`, so that `{pa ka ce'u broda ce'u}` could become `{pa ni
ce'u broda}`, with broda2 becoming the measurement somehow. Questions abound,
including why broda2 and not broda1, whether the arity change is correct, and
how arithmetic evaluation interacts with the whole shebang. Nonetheless, the
core theory is the same: Treat a numeric column as a numeric per-row
annotation, and create a new abstracted relation which bends the wires. This
makes `{ni}` like a subtype of `{ka}`, although the as-parent-type and the
as-true-as relation send `{ni}` to *different* `{ka}`.

## Events: {nu}, {mu'e}, {pu'u}, {za'i}, {zu'o}

Now for tougher food. What is an event? For starters, an event *happens*.
We'll think of this again in terms of annotations. Let's imagine some sort of
spacetime coordinates around which the event is happening. Formally, the event
has a spatiotemporal neighborhood. Within that neighborhood, the event is
happening; outside that neighborhood, the event is not happening. Immediately,
there is the problem where we cannot tell if an event is one instance, paused
and resumed, or two instances; it's not obvious just by looking at the
neighborhood. So we will have to be better about quantification. The good news
is that universal and existential quantification should still work; the bad
news is that we will need to allow more than just `{pa nu}` formation, because
an event might have more than one neighborhood within which it is occurring.

Also, `{nu}` doesn't capture `{ce'u}`, so immediately we know that it
abstracts over bridi, not selbri.

CLL says that each of the different event abstractors could be replaced with
`{nu}`, being just as true, just less structured. We could take that to imply
that there's structure within each specialized event abstractor.

First, `{mu'e}`, which treats events as points in spacetime. On one shoulder,
quantum mechanics tells us that point idealizations are bogus; on the other
shoulder, from the definition of "neighborhood", if we zoom out far enough
from an event then we should eventually find a reference frame from which the
entire event is visible. It follows that `{mu'e}` asserts that the
neighborhood of an event is connected; if it wasn't actually connected, then
we're imagining the smallest ball/neighborhood which contains all of the
pieces and is connected, but technically we should only be allowed to go
one-way on this. When we go from `{mu'e}` to `{nu}`, we forget connectedness.

Next, `{pu'u}`, which breaks events into stages. Obviously, I am biased about
how rich a composition of stages should be, but for starters, let's imagine
serial algorithms. pu'u2 would merely be a sequence of component events which,
when composed in order, yield the entire event. So, with processes, we're
talking about events which are decomposable, regardless of whether or not
they're connected. But, also, they're composed in an order. Spacetime's events
are only partially ordered, so we're asserting that these particular
components are actually causally related. Putting this all together, pu'u2 is
a totally ordered sequence of events, and pu'u1 is the smallest neighborhood
which contains them.

Guh, that one was tough. But `{za'i}` is much easier. CLL says that continuous
states have sharp boundaries. So their neighborhoods also have boundaries.

Finally, we have `{zu'o}`, for activities. An activity recurs many times
within its neighborhood, and although each zu'o2 action is clear, the entire
zu'o1 might not be. To give an example, imagine stirring a mixture. A zu'o2
would be a full rotation of the stirrer, while a zu'o1 might contain multiple
incomplete rotations. Just like with `{pu'u}`, zu'o2 is an ordered sequence;
the activity of walking consists of two symmetric, but chirally distinct,
actions, for example.

CLL 11.11 explains that event contours aren't available for all subtypes of
event. The only one always available might be `{ca'o}`. We also should be able
to zoom out and get `{co'i}`. Imagining a sheaf, we might expect that the
subtypes have more contours. `{pu'u}` has all contours, while `{mu'e}` adds
only `{pu'o}` and `{ba'o}`; CLL forbids `{ca'o}`, but if we can zoom out, then
we can zoom in.

Finishing up, both `{za'i}` and `{zu'o}` allow `{pu'o}`, `{ba'o}`, and
`{ca'o}`, and `{za'i}` also has `{co'a}` and `{co'u}`.

## Minor abstractors: {li'i}, {si'o}, {su'u}

CLL lumps these in a "minor" page, and I guess I will too. `{li'i}` is a
subjective `{nu}`; li'i2 is the experiencer of the event. Not much more to say
for now; we'll have to get to subjective experiences for this to be useful.

`{si'o}` is similar, but vague. si'o2 is an agent who is imagining a bridi.
Can `{ce'u}` appear underneath? Nobody knows.

`{su'u}` is theoretically essential for constructing abstractors, but CLL
doesn't give us enough information for how to wield it. It's not even clear
whether `{ce'u}` are bound, although many folks believe so.

## Summary of Abstractors

Here's what I know.

Abstractor | over selbri or bridi? | Produces/annotated in x1
-----------|-----------------------|--------------------------------------------------------------
ka         | selbri                | selbri (identity)
du'u       | bridi                 | truth value (implication)
jei        | bridi                 | fuzzy truth value in [0,1]
ni         | selbri                | number
nu         | bridi                 | spacetime neighborhood
mu'e       | bridi                 | connected spacetime neighborhood
pu'u       | bridi                 | spacetime neighborhood containing ordered sequence of events
za'i       | bridi                 | bounded spacetime neighborhood
zu'o       | bridi                 | many overlapping neighborhoods each with ordered structure
li'i       | bridi                 | spacetime neighborhood
si'o       | bridi                 | reference to si'o2's mental state
su'u       | selbri                | configurable based on su'u2
