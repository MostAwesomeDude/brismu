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
$)

$( $t
htmltitle "brismu bridi";
htmldef "bridi" as "<em>bridi</em> ";
htmldef "selbri" as "<em>selbri</em> ";
htmldef "sumti" as "<em>sumti</em> ";
htmldef "PA" as "<em>PA</em> ";
htmldef "ko'a" as "k1 <small>ko'a</small> ";
htmldef "ko'e" as "k2 <small>ko'e</small> ";
htmldef "ko'i" as "k3 <small>ko'i</small> ";
htmldef "broda" as "b1 <small>broda</small> ";
htmldef "brode" as "b2 <small>brode</small> ";
htmldef "brodi" as "b3 <small>brodi</small> ";
htmldef "brodo" as "b4 <small>brodo</small> ";
htmldef "brodu" as "b5 <small>brodu</small> ";
htmldef "da" as "x <small>da</small> ";
htmldef "de" as "y <small>de</small> ";
htmldef "di" as "z <small>di</small> ";
htmldef "du" as "= <small>du</small> ";
htmldef "bu'a" as "R <small>bu'a</small> ";
htmldef "bu'e" as "S <small>bu'e</small> ";
htmldef "bu'i" as "T <small>bu'i</small> ";
htmldef "se" as "se ";
htmldef "ganai" as "if <small>ganai</small> ";
htmldef "ge" as "both <small>ge</small> ";
htmldef "gi" as "then <small>gi</small> ";
htmldef "go" as "iff <small>go</small> ";
htmldef ".e" as "& <small>.e</small> ";
htmldef "li" as "# <small>li</small> ";
htmldef "no" as "0 ";
htmldef "pa" as "1 ";
htmldef "ckaji" as "in <small>ckaji</small> ";
htmldef "ckini" as "in <small>ckini</small> ";
htmldef "ka" as "\ <small>ka</small> ";
htmldef "ce'u" as "_ <small>ce'u</small> ";
htmldef "kacna'u" as "in N <small>kacna'u</small> ";
htmldef "kacli'e" as "+1 = <small>kacli'e</small> ";
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
Biconditionals I: {go}
#*#*#
$)

$c go gi $.

$( If {broda} and {brode} are bridi, then so is {go broda gi brode}. $)
bgo $a bridi go broda gi brode $.

$( {go} is reflexive. $)
ax-go-refl $a |- go broda gi broda $.

${
    ax-go-sym.0 $e |- go broda gi brode $.
    $( {go} is symmetric. $)
    ax-go-sym $a |- go brode gi broda $.
$}

${
    ax-go-trans.0 $e |- go broda gi brode $.
    ax-go-trans.1 $e |- go brode gi brodi $.
    $( {go} is transitive. $)
    ax-go-trans $a |- go broda gi brodi $.
$}

$(
#*#*#
Implication I: {ganai}
#*#*#
$)

$c ganai $.

$( If {broda} and {brode} are bridi, then so is {ganai broda gi brode}. $)
bgan $a bridi ganai broda gi brode $.

df-ganai $a |- ganai go broda gi brode gi ganai broda gi brode $.

${
    ax-mp.0 $e |- broda $.
    ax-mp.1 $e |- ganai broda gi brode $.
    $( Because {ganai} encodes a syllogism, it may be eliminated by modus ponens. $)
    ax-mp $a |- brode $.
$}

${
    ganaii.0 $e |- go broda gi brode $.
    $( Biconditional implication may be weakened to unidirectional implication.
       Inference form of ~df-ganai
       (Contributed by la korvo, 17-Jul-2023.) $)
    ganaii $p |- ganai broda gi brode $=
      sbb1 sbb2 bgo sbb1 sbb2 bgan ganaii.0 sbb1 sbb2 df-ganai ax-mp $.
$}

${
    bi.0 $e |- broda $.
    bi.1 $e |- go broda gi brode $.
    $( Provable version of (now removed) ax-bi, using ~ax-mp and ~df-ganai as a basis.
       (Contributed by la korvo, 16-Jul-2023.) $)
    bi $p |- brode $=
      sbb1 sbb2 bi.0 sbb1 sbb2 bi.1 ganaii ax-mp $.
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
    $( The right-hand side of a {go} may also be weakened to a {ganai}.
       (Contributed by la korvo, 10-Jul-2023.) $)
    bi-rev-syl $p |- ganai brode gi broda $=
      sbb2 sbb1 sbb1 sbb2 bi-rev-syl.0 ax-go-sym ganaii $.
$}

$(
#*#*#
Conjunctions: {.e}, {je}, {ge}
#*#*#
$)

$c je ge $.

$c .e $.
sje $a sumti ko'a .e ko'e $.
sbje $a selbri bu'a je bu'e $.
bge $a bridi ge broda gi brode $.

$( Definition of {.e} in terms of {ge}. Forethought version of example 12.2-5
   from [CLL] p. 14. $)
df-e $a |- go ko'a .e ko'e bu'a ko'i gi ge ko'a bu'a ko'i gi ko'e bu'a ko'i $.
$( Definition of {je} in terms of {ge}. From example 12.2-5 of [CLL] p. 14. $)
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
Biconditionals II: {.o}, {jo}
#*#*#
$)

$c jo $.

$c .o $.
sbjo $a selbri bu'a jo bu'e $.
sjo $a sumti ko'a .o ko'e $.

$( Definition of {.o} in terms of {go}. By analogy with forethought version of
   example 12.2-5 from [CLL] p. 14. $)
df-o $a |- go ko'a .o ko'e bu'a gi go ko'a bu'a gi ko'e bu'a $.
ax-o-intel $a |- go go ko'a bu'a gi ko'e bu'a gi ko'a .o ko'e bu'a $.
$( Definition of {jo} in terms of {go}. By analogy with example 12.2-5 of [CLL]
   p. 14. $)
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

$( {.o} is symmetric. $)
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
Conversion: {se}
#*#*#
$)

$c se $.

$( If {bu'a} is a selbri, then so is {se bu'a}. $)
sbs $a selbri se bu'a $.

$( Definition of {se} as a swap of terbri. Implied by example 11.1-2 of [CLL]
   p. 5. $)
df-se $a |- go ko'e se bu'a ko'a gi ko'a bu'a ko'e $.

${
    sei.0 $e |- ko'e se bu'a ko'a $.
    $( From example 11.1-2 of [CLL] p. 5, where {mi prami do} and {do se prami mi}
       are equivalent. Inference form of ~df-se
       (Contributed by la korvo, 17-Jul-2023.) $)
    sei $p |- ko'a bu'a ko'e $=
      wk2 wk1 sbba sbs bb wk1 wk2 sbba bb sei.0 wk1 wk2 sbba df-se bi $.
$}

${
    seri.0 $e |- ko'a bu'a ko'e $.
    $( From example 11.1-2 of [CLL] p. 5, where {mi prami do} and {do se prami mi}
       are equivalent. Reverse inference form of ~df-se
       (Contributed by la korvo, 17-Jul-2023.) $)
    seri $p |- ko'e se bu'a ko'a $=
      wk1 wk2 sbba bb wk2 wk1 sbba sbs bb seri.0 wk1 wk2 sbba df-se bi-rev $.
$}

${
    ax-se-invo.0 $e |- ko'a se se bu'a ko'e $.
    $( {se} is an involution. $)
    ax-se-invo $a |- ko'a bu'a ko'e $.
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
    $( {ro bu'a} may be instantiated with any selbri. As
       example 13.3 of [CLL] p. 16 notes, this will be of limited use, and is
       included largely to allow for a second-order definition of equality. $)
    ax-ro-inst-u $a |- ko'a bu'a $.
$}

${
    ax-ro-mp.0 $e |- ro bu'a zo'u broda $.
    ax-ro-mp.1 $e |- ganai broda gi brode $.
    $( Modus ponens under {ro bu'a}. $)
    ax-ro-mp $a |- ro bu'a zo'u brode $.
$}

${
    ro-bi.0 $e |- ro bu'a zo'u broda $.
    ro-bi.1 $e |- go broda gi brode $.
    $( Biconditional modus ponens under {ro bu'a}.
       (Contributed by la korvo, 16-Jul-2023.) $)
    ro-bi $p |- ro bu'a zo'u brode $=
      sbb1 sbb2 sbba ro-bi.0 sbb1 sbb2 ro-bi.1 ganaii ax-ro-mp $.
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
    $( {du} is symmetric. $)
    du-sym $p |- ko'e du ko'a $=
      ? ? ? ? ? ? ? du-sym.0 ? ? ? df-du bi ? ax-ro-mp ? ? ? df-du
      bi-rev $.
$}

$( {du} is reflexive. $)
du-refl $p |- ko'a du ko'a $= ? $.

${
    du-trans.0 $e |- ko'a du ko'e $.
    du-trans.1 $e |- ko'e du ko'i $.
    $( {du} is transitive. $)
    du-trans $p |- ko'a du ko'i $= ? $.
$}

$( Because {du} is an equivalence, it is reflexive. $)
ax-id-refl $a |- ko'a du ko'a $.

${
    ax-du-sym.0 $e |- ko'a du ko'e $.
    $( Because {du} is an equivalence, it is symmetric. $)
    ax-du-sym $a |- ko'e du ko'a $.
$}

${
    ax-du-trans.0 $e |- ko'a du ko'e $.
    ax-du-trans.1 $e |- ko'e du ko'i $.
    $( Because {du} is an equivalence, it is transitive. $)
    ax-du-trans $a |- ko'a du ko'i $.
$}

${
    se-du-elim.0 $e |- ko'a se du ko'e $.
    $( {se du} may be replaced with {du}.
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

$( If {bu'a} is a selbri, then wrapping it with {pa ka} yields sumti. $)
spku $a sumti pa ka ko'a bu'a $.
spkb $a sumti pa ka ko'a bu'a ko'e $.
spkt $a sumti pa ka ko'a bu'a ko'e ko'i $.

$( {ckaji} is often found with this conjugation. $)
bckaji $p bridi ko'a ckaji pa ka ce'u bu'a $=
  wk1 sc sbba spku sbckaji bb $.
$( {ckini} is often found with this conjugation. $)
bckini $p bridi ko'a ckini ko'e pa ka ce'u bu'a ce'u $=
  wk1 wk2 sc sc sbba spkb sbckini bt $.

$( Definition of {ckaji} from {ka}. Based on example 4.1-2 of [CLL] p. 11. $)
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
    $( {se} can be inserted underneath ckini3.
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

ax-nat-zero $a |- li no kacna'u $.

${
    ax-succ-succ.0 $e |- ko'a .e ko'e kacli'e ko'i $.
    ax-succ-succ $a |- ko'a du ko'e $.
$}

$(
#*#*#
Uncategorized
#*#*#
$)
