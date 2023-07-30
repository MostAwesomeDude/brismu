$( jbobau.mm $)

$( bridi smuni jbobau $)

$( Conventions:

* "ax-" starts axioms
* "df-" starts definitions
  * e.g. definition of {du} is "df-du"
  * definitions are of the form {go broda gi brode}, where {broda} has the
    valsi to be defined
* inferences of {go} have same theorem name, but end with "i"
* reverse inferences end with "ri"
* deductions where everything starts {ganai broda gi} end with "d"
* Operators commute, relations are symmetric
$)

$( $t
htmltitle "brismu bridi";
htmlcss "<style type='text/css'>" +
        ".sumti { color: darkgreen; }" +
        ".selbri { color: blue; }" +
        ".bridi { color: brown; }" +
        ".gismu { color: blue; }" +
        ".lujvo { color: blue; }" +
        "</style>";
htmlvarcolor "<span class='sumti'>sumti</span> " +
             "<span class='selbri'>selbri</span> " +
             "<span class='bridi'>bridi</span> ";

htmldef "|-" as '&#8866; ';
htmldef "bridi" as "<em>bridi</em> ";
htmldef "selbri" as "<em>selbri</em> ";
htmldef "sumti" as "<em>sumti</em> ";
htmldef "PA" as "<em>PA</em> ";
htmldef "ko'a" as "<span class='sumti'>ko'a</span> ";
htmldef "ko'e" as "<span class='sumti'>ko'e</span> ";
htmldef "ko'i" as "<span class='sumti'>ko'i</span> ";
htmldef "broda" as "<span class='bridi'>broda</span> ";
htmldef "brode" as "<span class='bridi'>brode</span> ";
htmldef "brodi" as "<span class='bridi'>brodi</span> ";
htmldef "brodo" as "<span class='bridi'>brodo</span> ";
htmldef "brodu" as "<span class='bridi'>brodu</span> ";
htmldef "da" as "<small>da</small> ";
htmldef "de" as "<small>de</small> ";
htmldef "di" as "<small>di</small> ";
htmldef "du" as "<span class='selbri'>du</span> ";
htmldef "cei'i" as "<span class='selbri'>cei'i</span> ";
htmldef "gai'o" as "<span class='selbri'>gai'o</span> ";
htmldef "bu'a" as "<span class='selbri'>bu'a</span> ";
htmldef "bu'e" as "<span class='selbri'>bu'e</span> ";
htmldef "bu'i" as "<span class='selbri'>bu'i</span> ";
htmldef "zo'u" as "<small>zo'u</small> ";
htmldef "se" as "<small>se</small> ";
htmldef "te" as "<small>te</small> ";
htmldef "ganai" as "<small>ganai</small> ";
htmldef "ga" as "<small>ga</small> ";
htmldef "ge" as "<small>ge</small> ";
htmldef "gi" as "<small>gi</small> ";
htmldef "ja" as "<small>ja</small> ";
htmldef "je" as "<small>je</small> ";
htmldef "jo" as "<small>jo</small> ";
htmldef "go" as "<small>go</small> ";
htmldef ".a" as "<small>.a</small> ";
htmldef ".e" as "<small>.e</small> ";
htmldef ".o" as "<small>.o</small> ";
htmldef "li" as "<small>li</small> ";
htmldef "no" as "0 ";
htmldef "pa" as "1 ";
htmldef "ro" as "<small>ro</small> ";
htmldef "ckaji" as "<span class='gismu'>ckaji</span> ";
htmldef "ckini" as "<span class='gismu'>ckini</span> ";
htmldef "dugri" as "<span class='gismu'>dugri</span> ";
htmldef "prami" as "<span class='gismu'>prami</span> ";
htmldef "tenfa" as "<span class='gismu'>tenfa</span> ";
htmldef "ka" as "<small>ka</small> ";
htmldef "ce'u" as "<small>ce'u</small> ";
htmldef "kacna'u" as "<span class='lujvo'>kacna'u</span> ";
htmldef "kacli'e" as "<span class='lujvo'>kacli'e</span> ";
htmldef "mi" as "<span class='sumti'>mi</span> ";
htmldef "do" as "<span class='sumti'>do</span> ";
$)

$(
#*#*#
Basic syntax
#*#*#
$)

$( Various sorts of fragments:
* "sb" for selbri: primitive relations
* "s" for sumti: expressions of variables
* "b" for bridi: selbri fully applied to sumti
$)
$c selbri sumti bridi $.

$( A turnstile. Needed to indicate that a bridi is inhabited. $)
$c |- $.

$v ko'a ko'e ko'i $.
wk1 $f sumti ko'a $.
wk2 $f sumti ko'e $.
wk3 $f sumti ko'i $.

$v broda brode brodi brodo brodu $.
sbb1 $f bridi broda $.
sbb2 $f bridi brode $.
sbb3 $f bridi brodi $.
sbb4 $f bridi brodo $.
sbb5 $f bridi brodu $.

$v bu'a bu'e bu'i $.
$d bu'a bu'e bu'i $.
sbba $f selbri bu'a $.
sbbe $f selbri bu'e $.
sbbi $f selbri bu'i $.

$v da de di $.
$d da de di $.
wda $f sumti da $.
wde $f sumti de $.
wdi $f sumti di $.

bu $a bridi ko'a bu'a $.
bb $a bridi ko'a bu'a ko'e $.
bt $a bridi ko'a bu'a ko'e ko'i $.

$(
#*#*#
Implication I: {ganai}
#*#*#
$)

$c ganai gi $.

$( If {` broda `} and {` brode `} are bridi, then so is
   {` ganai broda gi brode `}. $)
bgan $a bridi ganai broda gi brode $.

${
    ax-mp.0 $e |- broda $.
    ax-mp.1 $e |- ganai broda gi brode $.
    $( Because {` ganai `} encodes a syllogism, it may be eliminated by modus ponens. $)
    ax-mp $a |- brode $.
$}

$( The principle of simplification. Known as "ax-1" in iset.mm. Known as the
constant combinator, or "K", in the BHK interpretation. $)
ax-simp $a |- ganai broda gi ganai brode gi broda $.

${
    simpi.0 $e |- broda $.
    $( Inference form of ~ax-simp
       (Contributed by la korvo, 27-Jul-2023.) $)
    simpi $p |- ganai brode gi broda $=
      sbb1 sbb2 sbb1 bgan simpi.0 sbb1 sbb2 ax-simp ax-mp $.
$}

${
    simpii.0 $e |- broda $.
    simpii.1 $e |- brode $.
    $( Inference form of ~simpi
       (Contributed by la korvo, 27-Jul-2023.) $)
    simpii $p |- broda $=
      sbb2 sbb1 simpii.1 sbb1 sbb2 simpii.0 simpi ax-mp $.
$}

$( Frege's axiom. $)
ax-freg $a |- ganai ganai broda gi ganai brode gi brodi gi ganai ganai broda gi brode gi ganai broda gi brodi $.

${
    fregi.0 $e |- ganai broda gi ganai brode gi brodi $.
    $( Inference form of ~ax-freg
       (Contributed by la korvo, 27-Jul-2023.) $)
    fregi $p |- ganai ganai broda gi brode gi ganai broda gi brodi $=
      sbb1 sbb2 sbb3 bgan bgan sbb1 sbb2 bgan sbb1 sbb3 bgan bgan fregi.0 sbb1
      sbb2 sbb3 ax-freg ax-mp $.
$}

${
    mpd.0 $e |- ganai broda gi brode $.
    mpd.1 $e |- ganai broda gi ganai brode gi brodi $.
    $( Deductive form of ~ax-mp
       (Contributed by la korvo, 27-Jul-2023.) $)
    mpd $p |- ganai broda gi brodi $=
      ( bgan fregi ax-mp ) ABFACFDABCEGH $.
$}

$( The principle of identity. This is distantly related to, but not the same
   as, the identity relation ~df-du
   (Contributed by la korvo, 27-Jul-2023.) $)
id $p |- ganai broda gi broda $=
  ( sbb2 bgan ax-simp mpd ) ABACZAABDAFDE $.

${
    mpi.0 $e |- broda $.
    mpi.1 $e |- ganai brode gi ganai broda gi brodi $.
    $( A nested modus ponens. Known as "mpi" in iset.mm.
       (Contributed by la korvo, 27-Jul-2023.) $)
    mpi $p |- ganai brode gi brodi $=
      sbb2 sbb1 sbb3 sbb1 sbb2 mpi.0 simpi mpi.1 mpd $.
$}

${
    mp2.0 $e |- broda $.
    mp2.1 $e |- brode $.
    mp2.2 $e |- ganai broda gi ganai brode gi brodi $.
    $( Double modus ponens. Known as "mp2" in iset.mm.
       (Contributed by la korvo, 27-Jul-2023.) $)
    mp2 $p |- brodi $=
      sbb1 sbb3 mp2.0 sbb2 sbb1 sbb3 mp2.1 mp2.2 mpi ax-mp $.
$}

$(
#*#*#
Conjunctions I: {ge}
#*#*#
$)

$c ge $.
bge $a bridi ge broda gi brode $.

$( Elimination of {` ge `} on the left. Known as "ax-ia1" in iset.mm. Curry
   of the left-hand projection. $)
ax-ge-le $a |- ganai ge broda gi brode gi broda $.

$( Elimination of {` ge `} on the right. Known as "ax-ia2" in iset.mm. Curry
   of the right-hand projection. $)
ax-ge-re $a |- ganai ge broda gi brode gi brode $.

$( Introduction of {` ge `}. Known as "ax-ia3" in iset.mm. Curry of the I
   combinator. $)
ax-ge-in $a |- ganai broda gi ganai brode gi ge broda gi brode $.

${
    ge-lei.0 $e |- ge broda gi brode $.
    $( Inference form of ~ax-ge-le
       (Contributed by la korvo, 27-Jul-2023.) $)
    ge-lei $p |- broda $=
      sbb1 sbb2 bge sbb1 ge-lei.0 sbb1 sbb2 ax-ge-le ax-mp $.
$}

${
    ge-rei.0 $e |- ge broda gi brode $.
    $( Inference form of ~ax-ge-re
       (Contributed by la korvo, 27-Jul-2023.) $)
    ge-rei $p |- brode $=
      sbb1 sbb2 bge sbb2 ge-rei.0 sbb1 sbb2 ax-ge-re ax-mp $.
$}

${
    ge-ini.0 $e |- broda $.
    ge-ini.1 $e |- brode $.
    $( Inference form of ~ax-ge-in
       (Contributed by la korvo, 27-Jul-2023.) $)
    ge-ini $p |- ge broda gi brode $=
      sbb1 sbb2 sbb1 sbb2 bge ge-ini.0 ge-ini.1 sbb1 sbb2 ax-ge-in mp2 $.
$}

$(
#*#*#
Biconditionals I: {go}
#*#*#
$)

$c go $.

$( If {` broda `} and {` brode `} are bridi, then so is {` go broda gi brode `}. $)
bgo $a bridi go broda gi brode $.

$( Definition of {` go `} in terms of {` ganai `} and {` ge `}. This is the
   standard definition of the biconditional connective in higher-order
   intuitionistic logic. This can be justified intuitionistically; see
   "df-bi" and "bijust" in iset.mm. $)
df-go $a |-
  ge
    ganai go broda gi brode
    gi ge ganai broda gi brode gi ganai brode gi broda
  gi
    ganai ge ganai broda gi brode gi ganai brode gi broda
    gi go broda gi brode $.

${
    goli.0 $e |- go broda gi brode $.
    $( Inference form of left side of ~df-go
       (Contributed by la korvo, 29-Jul-2023.) $)
    goli $p |- ge ganai broda gi brode gi ganai brode gi broda $=
      sbb1 sbb2 bgo sbb1 sbb2 bgan sbb2 sbb1 bgan bge goli.0 sbb1 sbb2 bgo sbb1
      sbb2 bgan sbb2 sbb1 bgan bge bgan sbb1 sbb2 bgan sbb2 sbb1 bgan bge sbb1
      sbb2 bgo bgan sbb1 sbb2 df-go ge-lei ax-mp $.
$}

${
    golili.0 $e |- go broda gi brode $.
    $( Biconditional implication may be weakened to unidirectional implication.
       Inference form of left side of ~goli
       (Contributed by la korvo, 17-Jul-2023.)
       (Shortened by la korvo, 29-Jul-2023.) $)
    golili $p |- ganai broda gi brode $=
      sbb1 sbb2 bgan sbb2 sbb1 bgan sbb1 sbb2 golili.0 goli ge-lei $.
$}

${
    gori.0 $e |- ge ganai broda gi brode gi ganai brode gi broda $.
    $( Inference form of right side of ~df-go
       (Contributed by la korvo, 30-Jul-2023.) $)
    gori $p |- go broda gi brode $=
      sbb1 sbb2 bgan sbb2 sbb1 bgan bge sbb1 sbb2 bgo gori.0 sbb1 sbb2 bgo sbb1
      sbb2 bgan sbb2 sbb1 bgan bge bgan sbb1 sbb2 bgan sbb2 sbb1 bgan bge sbb1
      sbb2 bgo bgan sbb1 sbb2 df-go ge-rei ax-mp $.
$}

${
    gorii.0 $e |- ganai broda gi brode $.
    gorii.1 $e |- ganai brode gi broda $.
    $( Inference form of right side of ~gori
       (Contributed by la korvo, 30-Jul-2023.) $)
    gorii $p |- go broda gi brode $=
      sbb1 sbb2 sbb1 sbb2 bgan sbb2 sbb1 bgan gorii.0 gorii.1 ge-ini gori $.
$}

$( {` go `} is reflexive.
   (Contributed by la korvo, 30-Jul-2023.) $)
go-refl $p |- go broda gi broda $=
  sbb1 sbb1 sbb1 id sbb1 id gorii $.

${
    ax-go-sym.0 $e |- go broda gi brode $.
    $( {` go `} is symmetric. $)
    ax-go-sym $a |- go brode gi broda $.
$}

${
    ax-go-trans.0 $e |- go broda gi brode $.
    ax-go-trans.1 $e |- go brode gi brodi $.
    $( {` go `} is transitive. $)
    ax-go-trans $a |- go broda gi brodi $.
$}

${
    bi.0 $e |- broda $.
    bi.1 $e |- go broda gi brode $.
    $( Like modus ponens ~ax-mp but for biconditionals.
       (Contributed by la korvo, 16-Jul-2023.) $)
    bi $p |- brode $=
      sbb1 sbb2 bi.0 sbb1 sbb2 bi.1 golili ax-mp $.
$}

${
    bi-rev.0 $e |- broda $.
    bi-rev.1 $e |- go brode gi broda $.
    $( Modus ponens in the other direction.
       (Contributed by la korvo, 16-Jul-2023.) $)
    bi-rev $p |- brode $=
      sbb1 sbb2 bi-rev.0 sbb2 sbb1 bi-rev.1 ax-go-sym bi $.
$}

${
    bi-rev-syl.0 $e |- go broda gi brode $.
    $( The right-hand side of a {` go `} may also be weakened to a {` ganai `}.
       (Contributed by la korvo, 10-Jul-2023.) $)
    bi-rev-syl $p |- ganai brode gi broda $=
      sbb2 sbb1 sbb1 sbb2 bi-rev-syl.0 ax-go-sym golili $.
$}

$(
#*#*#
Conjunctions II: {.e}, {je}
#*#*#
$)

$c je $.

$c .e $.
sje $a sumti ko'a .e ko'e $.
sbje $a selbri bu'a je bu'e $.

$( Definition of {` .e `} in terms of {` ge `}. Forethought version of
   example 12.2-5 from [CLL] p. 14. $)
df-e $a |- go ko'a .e ko'e bu'a ko'i gi ge ko'a bu'a ko'i gi ko'e bu'a ko'i $.
$( Definition of {` je `} in terms of {` ge `}. From example 12.2-5 of [CLL] p. 14. $)
df-je $a |- go ko'a bu'a je bu'e ko'e gi ge ko'a bu'a ko'e gi ko'a bu'e ko'e $.

${
    ei.0 $e |- ko'a .e ko'e bu'a ko'i $.
    $( Inference form of ~df-e
       (Contributed by la korvo, 17-Jul-2023.) $)
    ei $p |- ge ko'a bu'a ko'i gi ko'e bu'a ko'i $=
      wk1 wk2 sje wk3 sbba bb wk1 wk3 sbba bb wk2 wk3 sbba bb bge ei.0 wk1 wk2
      wk3 sbba df-e bi $.
$}

${
    eri.0 $e |- ge ko'a bu'a ko'i gi ko'e bu'a ko'i $.
    $( Reverse inference form of ~df-e
       (Contributed by la korvo, 17-Jul-2023.) $)
    eri $p |- ko'a .e ko'e bu'a ko'i $=
      wk1 wk3 sbba bb wk2 wk3 sbba bb bge wk1 wk2 sje wk3 sbba bb eri.0 wk1 wk2
      wk3 sbba df-e bi-rev $.
$}

${
    jei.0 $e |- ko'a bu'a je bu'e ko'e $.
    $( Inference form of ~df-je
       (Contributed by la korvo, 17-Jul-2023.) $)
    jei $p |- ge ko'a bu'a ko'e gi ko'a bu'e ko'e $=
      wk1 wk2 sbba sbbe sbje bb wk1 wk2 sbba bb wk1 wk2 sbbe bb bge jei.0 wk1
      wk2 sbba sbbe df-je bi $.
$}

${
    jeri.0 $e |- ge ko'a bu'a ko'e gi ko'a bu'e ko'e $.
    $( Reverse inference form of ~df-je
       (Contributed by la korvo, 17-Jul-2023.) $)
    jeri $p |- ko'a bu'a je bu'e ko'e $=
      wk1 wk2 sbba bb wk1 wk2 sbbe bb bge wk1 wk2 sbba sbbe sbje bb jeri.0 wk1
      wk2 sbba sbbe df-je bi-rev $.
$}

$(
#*#*#
Disjunctions: {.a}, {ja}, {ga}
#*#*#
$)

$c .a ja ga $.
sbja $a selbri bu'a ja bu'e $.
sja $a sumti ko'a .a ko'e $.
bga $a bridi ga broda gi brode $.

$( Definition of {` ga `} in terms of {` go `}, {` ganai `}, and {` ge `}. Known as
   "ax-io" in iset.mm. $)
df-ga $a |- go ganai ga brode gi brodi gi broda gi ge ganai brode gi broda gi ganai brodi gi broda $.

${
    gai.0 $e |- ganai ga brode gi brodi gi broda $.
    $( Inference form of ~df-ga
       (Contributed by la korvo, 28-Jul-2023.) $)
    gai $p |- ge ganai brode gi broda gi ganai brodi gi broda $=
      sbb2 sbb3 bga sbb1 bgan sbb2 sbb1 bgan sbb3 sbb1 bgan bge gai.0 sbb1 sbb2
      sbb3 df-ga bi $.
$}

${
    gari.0 $e |- ge ganai brode gi broda gi ganai brodi gi broda $.
    $( Reverse inference form of ~df-ga
       (Contributed by la korvo, 28-Jul-2023.) $)
    gari $p |- ganai ga brode gi brodi gi broda $=
      sbb2 sbb1 bgan sbb3 sbb1 bgan bge sbb2 sbb3 bga sbb1 bgan gari.0 sbb1
      sbb2 sbb3 df-ga bi-rev $.
$}

$( Definition of {` .a `} in terms of {` ga `}. Forethought version of
   example 12.2-5 from [CLL] p. 14. $)
df-a $a |- go ko'a .a ko'e bu'a ko'i gi ga ko'a bu'a ko'i gi ko'e bu'a ko'i $.
$( Definition of {` ja `} in terms of {` ga `}. From example 12.2-5 of [CLL] p. 14. $)
df-ja $a |- go ko'a bu'a ja bu'e ko'e gi ga ko'a bu'a ko'e gi ko'a bu'e ko'e $.

$(
#*#*#
Biconditionals II: {.o}, {jo}
#*#*#
$)

$c jo $.

$c .o $.
sbjo $a selbri bu'a jo bu'e $.
sjo $a sumti ko'a .o ko'e $.

$( Definition of {` .o `} in terms of {` go `}. By analogy with forethought
   version of example 12.2-5 from [CLL] p. 14. $)
df-o $a |- go ko'a .o ko'e bu'a gi go ko'a bu'a gi ko'e bu'a $.
$( Definition of {` jo `} in terms of {` go `}. By analogy with
   example 12.2-5 of [CLL] p. 14. $)
df-jo $a |- go ko'a bu'a jo bu'e ko'e gi go ko'a bu'a ko'e gi ko'a bu'e ko'e $.

${
    oi.0 $e |- ko'a .o ko'e bu'a ko'i $.
    $( Inference form of ~df-o $)
    oi $p |- go ko'a bu'a ko'i gi ko'e bu'a ko'i $= ? $.
$}

${
    ori.0 $e |- go ko'a bu'a ko'i gi ko'e bu'a ko'i $.
    $( Reverse inference form of ~df-o $)
    ori $p |- ko'a .o ko'e bu'a ko'i $= ? $.
$}

${
    joi.0 $e |- ko'a bu'a jo bu'e ko'e $.
    $( Inference form of ~df-jo
       (Contributed by la korvo, 17-Jul-2023.) $)
    joi $p |- go ko'a bu'a ko'e gi ko'a bu'e ko'e $=
      wk1 wk2 sbba sbbe sbjo bb wk1 wk2 sbba bb wk1 wk2 sbbe bb bgo joi.0 wk1
      wk2 sbba sbbe df-jo bi $.
$}

${
    jori.0 $e |- go ko'a bu'a ko'e gi ko'a bu'e ko'e $.
    $( Reverse inference form of ~df-jo
       (Contributed by la korvo, 17-Jul-2023.) $)
    jori $p |- ko'a bu'a jo bu'e ko'e $=
      wk1 wk2 sbba bb wk1 wk2 sbbe bb bgo wk1 wk2 sbba sbbe sbjo bb jori.0 wk1
      wk2 sbba sbbe df-jo bi-rev $.
$}

$( {` .o `} is symmetric. $)
o-sym $p |- go ko'a .o ko'e bu'a gi ko'e .o ko'a bu'a $= ? $.

${
    o-symi.0 $e |- ko'a .o ko'e bu'a $.
    $( Inference form of ~o-sym
       (Contributed by la korvo, 16-Jul-2023.) $)
    o-symi $p |- ko'e .o ko'a bu'a $=
      wk1 wk2 sjo sbba bu wk2 wk1 sjo sbba bu o-symi.0 wk1 wk2 sbba o-sym bi $.
$}

$(
#*#*#
Conversion I: {se}
#*#*#
$)

$c se $.

$( If {` bu'a `} is a selbri, then so is {` se bu'a `}. $)
sbs $a selbri se bu'a $.

$( Definition of {` se `} as a swap of terbri. Implied by
   example 11.1-2 of [CLL] p. 5. $)
df-se $a |- go ko'e se bu'a ko'a gi ko'a bu'a ko'e $.

${
    sei.0 $e |- ko'e se bu'a ko'a $.
    $( From example 11.1-2 of [CLL] p. 5, where {` mi prami do `} and
       {` do se prami mi `} are equivalent. Inference form of ~df-se
       (Contributed by la korvo, 17-Jul-2023.) $)
    sei $p |- ko'a bu'a ko'e $=
      wk2 wk1 sbba sbs bb wk1 wk2 sbba bb sei.0 wk1 wk2 sbba df-se bi $.
$}

${
    seri.0 $e |- ko'a bu'a ko'e $.
    $( From example 11.1-2 of [CLL] p. 5, where {` mi prami do `} and
       {` do se prami mi `} are equivalent. Reverse inference form of ~df-se
       (Contributed by la korvo, 17-Jul-2023.) $)
    seri $p |- ko'e se bu'a ko'a $=
      wk1 wk2 sbba bb wk2 wk1 sbba sbs bb seri.0 wk1 wk2 sbba df-se bi-rev $.
$}

${
    se-invo.0 $e |- ko'a se se bu'a ko'e $.
    $( {` se `} is an involution.
       (Contributed by la korvo, 18-Jul-2023.) $)
    se-invo $p |- ko'a bu'a ko'e $=
      wk1 wk2 sbba wk2 wk1 sbba sbs se-invo.0 sei sei $.
$}

$(
#*#*#
Universal quantifiers I: {ro}
#*#*#
$)

$c ro zo'u $.

$( XXX occurs checks are missing! $)

${
    brb.0 $e bridi broda $.
    $( Syntax for second-order universal quantification. $)
    brb $a bridi ro bu'a zo'u broda $.
$}

${
    ax-ro-inst-u.0 $e selbri bu'a $.
    ax-ro-inst-u.1 $e |- ro bu'e zo'u ko'a bu'e $.
    $( {` ro bu'a `} may be instantiated with any selbri. As
       example 13.3 of [CLL] p. 16 notes, this will be of limited use, and is
       included largely to allow for a second-order definition of equality. $)
    ax-ro-inst-u $a |- ko'a bu'a $.
$}

${
    ax-ro-mp.0 $e |- ro bu'a zo'u broda $.
    ax-ro-mp.1 $e |- ganai broda gi brode $.
    $( Modus ponens under {` ro bu'a `}. $)
    ax-ro-mp $a |- ro bu'a zo'u brode $.
$}

${
    ro-bi.0 $e |- ro bu'a zo'u broda $.
    ro-bi.1 $e |- go broda gi brode $.
    $( Biconditional modus ponens under {` ro bu'a `}.
       (Contributed by la korvo, 16-Jul-2023.) $)
    ro-bi $p |- ro bu'a zo'u brode $=
      sbb1 sbb2 sbba ro-bi.0 sbb1 sbb2 ro-bi.1 golili ax-ro-mp $.
$}

$(
#*#*#
Identity: {du}
#*#*#
$)

$c du $.
$( Identity as a binary relation. $)
sbdu $a selbri du $.

$( A second-order characterization of identity which is non-first-order-izable. $)
df-du $a |- go ko'a du ko'e gi ro bu'a zo'u ko'a .o ko'e bu'a $.

${
    dui.0 $e |- ko'a du ko'e $.
    $( Inference form of ~df-du
       (Contributed by la korvo, 18-Jul-2023.) $)
    dui $p |- ro bu'a zo'u ko'a .o ko'e bu'a $=
      wk1 wk2 sbdu bb wk1 wk2 sjo sbba bu sbba wk1 wk2 sjo sbba bu brb dui.0
      wk1 wk2 sbba df-du bi $.
$}

${
    duri.0 $e |- ro bu'a zo'u ko'a .o ko'e bu'a $.
    $( Reverse inference form of ~df-du
       (Contributed by la korvo, 18-Jul-2023.) $)
    duri $p |- ko'a du ko'e $=
      wk1 wk2 sjo sbba bu sbba wk1 wk2 sjo sbba bu brb wk1 wk2 sbdu bb duri.0
      wk1 wk2 sbba df-du bi-rev $.
$}

${
    du-sym.0 $e |- ko'a du ko'e $.
    $( {` du `} is symmetric. $)
    du-sym $p |- ko'e du ko'a $=
      ? ? ? ? ? ? ? du-sym.0 ? ? ? df-du bi ? ax-ro-mp ? ? ? df-du
      bi-rev $.
$}

$( {` du `} is reflexive. $)
du-refl $p |- ko'a du ko'a $= ? $.

${
    du-trans.0 $e |- ko'a du ko'e $.
    du-trans.1 $e |- ko'e du ko'i $.
    $( {` du `} is transitive. $)
    du-trans $p |- ko'a du ko'i $= ? $.
$}

$( Because {` du `} is an equivalence, it is reflexive. $)
ax-id-refl $a |- ko'a du ko'a $.

${
    ax-du-sym.0 $e |- ko'a du ko'e $.
    $( Because {` du `} is an equivalence, it is symmetric. $)
    ax-du-sym $a |- ko'e du ko'a $.
$}

${
    ax-du-trans.0 $e |- ko'a du ko'e $.
    ax-du-trans.1 $e |- ko'e du ko'i $.
    $( Because {` du `} is an equivalence, it is transitive. $)
    ax-du-trans $a |- ko'a du ko'i $.
$}

${
    se-du-elim.0 $e |- ko'a se du ko'e $.
    $( {` se du `} may be replaced with {` du `}.
       (Contributed by la korvo, 9-Jul-2023.) $)
    se-du-elim $p |- ko'a du ko'e $=
      wk2 wk1 wk2 wk1 sbdu se-du-elim.0 sei ax-du-sym $.
$}

$(
#*#*#
Internal hom: {ka}, {ckaji}, {ckini}
#*#*#
$)

$c pa ka ce'u ckaji ckini $.

sc $a sumti ce'u $.
sbckaji $a selbri ckaji $.
sbckini $a selbri ckini $.

$( If {` bu'a `} is a selbri, then wrapping it with {` pa ka `} yields sumti. $)
spku $a sumti pa ka ko'a bu'a $.
spkb $a sumti pa ka ko'a bu'a ko'e $.
spkt $a sumti pa ka ko'a bu'a ko'e ko'i $.

$( {` ckaji `} is often found with this conjugation. $)
bckaji $p bridi ko'a ckaji pa ka ce'u bu'a $=
  wk1 sc sbba spku sbckaji bb $.
$( {` ckini `} is often found with this conjugation. $)
bckini $p bridi ko'a ckini ko'e pa ka ce'u bu'a ce'u $=
  wk1 wk2 sc sc sbba spkb sbckini bt $.

$( Definition of {` ckaji `} from {` ka `}. Based on example 4.1-2 of [CLL] p. 11. $)
df-ckaji $a |- go ko'a ckaji pa ka ce'u bu'a ko'e gi ko'a bu'a ko'e $.
df-ckini $a |- go ko'a ckini ko'e pa ka ce'u bu'a ce'u gi ko'a bu'a ko'e $.

${
    ckajii.0 $e |- ko'a ckaji pa ka ce'u bu'a ko'e $.
    $( Inference form of ~df-ckaji
       (Contributed by la korvo, 17-Jul-2023.) $)
    ckajii $p |- ko'a bu'a ko'e $=
      wk1 sc sbba spku wk2 sbckaji bt wk1 wk2 sbba bb ckajii.0 wk1 wk2 sbba
      df-ckaji bi $.
$}

${
    ckajiri.0 $e |- ko'a bu'a ko'e $.
    $( Reverse inference form of ~df-ckaji
       (Contributed by la korvo, 17-Jul-2023.) $)
    ckajiri $p |- ko'a ckaji pa ka ce'u bu'a ko'e $=
      wk1 wk2 sbba bb wk1 sc sbba spku wk2 sbckaji bt ckajiri.0 wk1 wk2 sbba
      df-ckaji bi-rev $.
$}

${
    ckinii.0 $e |- ko'a ckini ko'e pa ka ce'u bu'a ce'u $.
    $( Inference form of ~df-ckini
       (Contributed by la korvo, 17-Jul-2023.) $)
    ckinii $p |- ko'a bu'a ko'e $=
      wk1 wk2 sbba bckini wk1 wk2 sbba bb ckinii.0 wk1 wk2 sbba df-ckini bi $.
$}

${
    ckiniri.0 $e |- ko'a bu'a ko'e $.
    $( Reverse inference form of ~df-ckini
       (Contributed by la korvo, 17-Jul-2023.) $)
    ckiniri $p |- ko'a ckini ko'e pa ka ce'u bu'a ce'u $=
      wk1 wk2 sbba bb wk1 wk2 sbba bckini ckiniri.0 wk1 wk2 sbba df-ckini
      bi-rev $.
$}

${
    ckini-se.0 $e |- ko'a ckini ko'e pa ka ce'u bu'a ce'u $.
    $( {` se `} can be inserted underneath ckini3.
       (Contributed by la korvo, 12-Jul-2023.) $)
    ckini-se $p |- ko'e ckini ko'a pa ka ce'u se bu'a ce'u $=
      wk2 wk1 sbba sbs wk1 wk2 sbba wk1 wk2 sbba ckini-se.0 ckinii seri ckiniri
      $.
$}

$(
#*#*#
Natural numbers: {kacna'u}, {kacli'e}
#*#*#
$)

$c kacna'u kacli'e $.
$c li no $.

sl0 $a sumti li no $.
sl1 $a sumti li pa $.

$( Zero is a natural number. $)
ax-nat-zero $a |- li no kacna'u $.

${
    ax-succ-succ.0 $e |- ko'a .e ko'e kacli'e ko'i $.
    $( Successors of natural numbers are also natural numbers. $)
    ax-succ-succ $a |- ko'a du ko'e $.
$}

$(
#*#*#
Boolean predicates: {cei'i}
#*#*#
$)

$c cei'i $.
bceihi $a bridi cei'i $.

$( The predicate which is always true. Note that both sides are relational:
   the left-hand side definitionally only has one inhabitant, so this
   definition asserts that {` ko'a du ko'a `} is only true via one path. $)
df-ceihi $a |- go cei'i gi ko'a du ko'a $.

$( {` cei'i `} is always true.
   (Contributed by la korvo, 18-Jul-2023.) $)
ceihi $p |- cei'i $=
  wk1 wk1 sbdu bb bceihi wk1 ax-id-refl wk1 df-ceihi bi-rev $.

$(
#*#*#
Conversion II: {te}
#*#*#
$)

$c te $.

$( If {` bu'a `} is a selbri, then so is {` te bu'a `}. $)
sbt $a selbri te bu'a $.

$( Definition of {` te `} as a swap of terbri. $)
df-te $a |- go ko'i te bu'a ko'e ko'a gi ko'a bu'a ko'e ko'i $.

${
    tei.0 $e |- ko'i te bu'a ko'e ko'a $.
    $( Inference form of ~df-te
       (Contributed by la korvo, 18-Jul-2023.) $)
    tei $p |- ko'a bu'a ko'e ko'i $=
      wk3 wk2 wk1 sbba sbt bt wk1 wk2 wk3 sbba bt tei.0 wk1 wk2 wk3 sbba df-te
      bi $.
$}

${
    teri.0 $e |- ko'a bu'a ko'e ko'i $.
    $( Reverse inference form of ~df-te
       (Contributed by la korvo, 18-Jul-2023.) $)
    teri $p |- ko'i te bu'a ko'e ko'a $=
      wk1 wk2 wk3 sbba bt wk3 wk2 wk1 sbba sbt bt teri.0 wk1 wk2 wk3 sbba df-te
      bi-rev $.
$}

${
    te-invo.0 $e |- ko'a te te bu'a ko'e ko'i $.
    $( {` te `} is an involution.
       (Contributed by la korvo, 18-Jul-2023.) $)
    te-invo $p |- ko'a bu'a ko'e ko'i $=
      wk1 wk2 wk3 sbba wk3 wk2 wk1 sbba sbt te-invo.0 tei tei $.
$}

$(
#*#*#
Logarithms: {dugri}
#*#*#
$)

$c dugri tenfa $.
sbdugri $a selbri dugri $.
sbtenfa $a selbri tenfa $.

$( {` dugri `} is a permutation of {` tenfa `}. $)
df-dugri $a |- go ko'a dugri ko'e ko'i gi ko'a te se tenfa ko'e ko'i $.
