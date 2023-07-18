# 0: Introduction

According to the [Encyclopedia of
Philosophy](https://plato.stanford.edu/entries/category-theory/), there is a
category for "any deductive system T with objects formulae and morphisms
proofs." I present a deductive system for Lojban with a strong focus on
relations, category-theoretic framing, and formalizability.

This book comes in two halves. This half is written mostly in English prose.
The other half is written mostly in [Metamath](https://us.metamath.org/), a
system for formalizing symbolic logic. The other half explains which bridi are
logically provable; this half explains the meaning of the various axioms.

This book is addressed at folks who know Lojban and want to gain a deeper
understanding of Lojbanic logic. If the reader does not know Lojban, then they
may be somewhat mystified by the purpose of this work. For that reader, please
consider Lojban as a sort of neutral speakable language for reading well-formed
formulae aloud.

There are no mathematical prerequisites. Instead, the first few pages will
rapidly build up all of the mathematical concepts which are required, and any
additional concepts will be built as needed.

## Frequently Asked Questions

### Where can I learn Lojban?

The following tutorials are all adequate:

* [la karda](http://ldlework.com/projects/cards/la-karda/index.html)
* the [Crash Course](https://mw.lojban.org/papri/The_Crash_Course_in_Lojban)
* the [Wave Lessons](https://mw.lojban.org/papri/Lojban_Wave_Lessons)

### Why not just add new words?

Often times, folks ask why I can't just add words for the correct mathematical
objects to Lojban, and then work solely in those words. This doesn't help
clarify the rules surrounding already-established logic!

I've added new words where there's really no other option, and I've clearly
indicated that I don't *want* to recommend my words when there are
community-supported alternatives already.

### Why are you doing this?

The main reason is that *any* logical language ought to have its logic clearly
documented and explained. I'll help do this for Toaq and Xorban and others,
but only once folks start to grok what I'm explaining about Lojban, which is
the best-understood loglang.

### What was so lacking about CLL? Aren't the BPFK reforms sufficient?

CLL doesn't directly explain the underlying axioms. BPFK gave some axioms, but
they are sometimes incomplete and sometimes inconsistent. Both CLL and the BPFK
sections are cited as sources in the bibliography.

### Why don't you work with LFK?

No LFK members have indicated an interest in pursuing this work.

### Can't I just learn logic by learning Lojban?

That has not worked in the past, and it probably won't start working now. I
recommend studying a basic introduction to first-order predicate logic in your
native language, and then hopefully an introduction to relational algebra. For
English-speakers, I recommend Peter Smith's [An Introduction to Gödel's
Theorems](https://www.logicmatters.net/resources/pdfs/godelbook/GodelBookLM.pdf),
the "Gödel book," which covers every relevant feature of first-order logic and
also several tangents which are relevant to formalization.

### Isn't this futile, since words can change in meaning?

Many Lojbanists have encountered the following collection of themes in
philosophical discussion:

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

However, rather than give each word a meaning on its own, we use categorical
logic and reasoning to build up structural meanings for Lojban. We don't merely
attach meanings to individual words, but relate those words to each other,
creating non-trivial theorems.
