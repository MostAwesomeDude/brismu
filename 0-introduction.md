# 0: Introduction

This pamphlet is addressed at folks who know Lojban. They've read not just a
tutorial like [la
karda](http://ldlework.com/projects/cards/la-karda/index.html), the [Crash
Course](https://mw.lojban.org/papri/The_Crash_Course_in_Lojban), or the [Wave
Lessons](https://mw.lojban.org/papri/Lojban_Wave_Lessons), but also
[CLL](https://lojban.org/publications/cll/cll_v1.1_xhtml-section-chunks/) and
the [BPFK Sections](https://mw.lojban.org/papri/Category:BPFK_Section), and
some of the various notes from many community members.

I am not aiming to teach the syntax of Lojban, but to radically and
fundamentally approach the logical foundations of the semantics of Lojban. We
will not start with pronouns, but with relations, and we will always keep the
mathematics in mind as we progress.

A common theme in the Lojban community is an uncertainty about what words
mean. Since words are treacherous and don't have ultimate meaning, and many
Lojbanists are philosophers, it is predictably common for such uncertainty to
evolve into passionate discussion featuring these themes:

* "Lojban is not a
  [relex](https://en.wikibooks.org/wiki/Conlang/Types#Relexes)": Aside from
  Lojban itself being forked from Loglan, Lojban is not merely a borrowing of
  semantics precisely established and defined in some natural language.
* Limited words can still blanket semantic space by being vague. We can use
  tanru to carefully describe observed objects in only certain ways, without
  committing to imprecision or incorrectness.
* The [grue/bleen
  problem](https://en.wikipedia.org/wiki/New_riddle_of_induction#Grue_and_bleen)
  prevents us from fixing any absolute meaning to any word over time.

So, rather than give each word a meaning on its own, I will use categorical
logic and reasoning to build up structural meanings for Lojban. The resulting
interpretation will have the structure of an
[allegory](https://en.wikipedia.org/wiki/Allegory_(mathematics)), indeed a
[bicategory of
relations](https://ncatlab.org/nlab/show/bicategory+of+relations), but do not
let these currently-unfamiliar mathematical terms worry you, as they are both
just ways to talk about what relations are.

## FAQ

### Why not just add new words?

Often times, folks ask why I can't just add words for the correct mathematical
objects to Lojban, and then work solely in those words. This doesn't help
clarify the rules surrounding already-established logic!

### Why are you doing this?

The main reason is that *any* logical language ought to have its logic clearly
documented and explained. I'll help do this for Toaq and Xorban and others,
but only once folks start to grok what I'm explaining about Lojban, which is
the best-understood loglang.

### Why don't you work with BPFK / aren't BPFK's reforms enough?

I try to integrate BPFK's recommendations into my logical rules. Indeed, many
details have been hammered out by talking with BPFK members. But BPFK hadn't
published anything as precise as this.

### Why do you use alien language?

Mathematical concepts sometimes contain a lot of functionality inside a very
small package. The phrase "the natural numbers" picks out one particular
object with an uncountable number of properties.

That said, I try to use standard mathematical language, but I know that
advanced mathematics is not common, and try to introduce concepts before I use
them.

## Open questions

Everything listed here is something I'd like resolved eventually, although the
resolution is probably in my own misunderstanding of Lojban.

### Relations between words

* CLL 7.14: Is {dunli} like binary {du} but with a customizeable equivalence
  relation?
* CLL 13.4: Is there a connection between {carmi}, {tsali}, and {ruble}? Does
  {cumki} follow the pattern too?
* CLL 15.3: Do colors form a scale, or a color space?
* logji1: What are rules/methods?

### How to say...

Many times, I suspect that a word exists in Lojban, but don't know what it is.
I'm not asking for new words to be invented; I'm trying to ensure that I
haven't overlooked Lojban's existing inventory.

* How to say "exists unique"? {pa} has been alright so far.

### Cosmetics

* {da} or {ko'a} in the bulk of rules? {da du da} or {ko'a du ko'a}?
* Similarly, {broda} or {bu'a}?
* Prenex-normal form?
* sumti vs terbri?
