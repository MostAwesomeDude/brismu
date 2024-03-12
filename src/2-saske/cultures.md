# Cultures

There are many cultural gismu allocated. They are extremely divisive,
partially because they aren't well-defined and partially because people have
strong political opinions as well as emotional attachments to gismu.

There's also the concept adopted by some speakers that the cultural gismu are
only usable as rafsi, which precludes a single canonical definition of the
gismu without spoiling all of the relevant rafsi. These speakers use cultural
gismu to decorate lujvo with cultural origin, a Lojbanic adaptation of a
longstanding and widespread practice in many cultures.

## Classes

There should be a class for kulnu1:

    kulnu1: cultures
    kulnu2: people

    culture1: events
    culture2: observations

    natmi1: nations
    natmi2: kulnu2

    rutni1: artifacts
    rutni2: kulnu2

    turni1: people
    turni2: people

    tutra1: territories
    tutra2: turni1

    jecta1: governments
    jecta2: tutra1

    gugde1: countries
    gugde2: kulnu2
    gugde3: tutra1

This defines a template for all of the cultural gismu, as well as {rutni}.

TODO: this implies xamgu1 are events! A longstanding puzzle solved!

It should include the cultural gismu. It should also be in the upcoming
"multiverse" feature, using a multiverse, because the baseline definitions
should be culturally neutral.

What's the difference between {jecta} and {se tutra}? {jecta} doesn't imply
{turni}; a government is a sort of organized group of people (a {stura}
perhaps?) which claim to be {turni}, but turni1 are the violence-monopolists
who physically occupy and oppress their subjects.

However, {kulnu}'s definition requires kulnu2 to be plural masses. The English
says, "culture is what is shared among people and is not an individual trait,"
but this is a misunderstanding of relational logic. Logically, {kulnu} relates
a set of people -- a subset of all kulnu2 -- to individual cultures in a
many-to-many relationship. So, we're going to politely say that the baseline
definition is misleading, and allow both rutni2 and kulnu2 to be individuals.

This class also implies that cultures, e.g. {merko}, should be conjugated
instead of filled directly by individual people. Instead of {mi merko},
perhaps we should say {mi jai merko} for short. Putting the above classes to
work, we might formally say:

    mi se kulnu pa ka merko

## Axioms

We should be able to define {turni} with something like:

    da turni de <=> su'o gy ty zo'u: ty tutra da gi'e te gugde de gy

Why is {rutni} here? Its definition specifies that rutni2 are kulnu2, from
which we may claim the following axiom:

    da rutni de => su'o di kulnu de

Perhaps kulnu2 => cecmu2?

## Related words

* {cecmu}
