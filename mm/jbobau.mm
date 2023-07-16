$( jbobau.mm $)

$( bridi smuni jbobau $)

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
    ax-go-trans $a |- go brode gi brodi $.
$}

${
    ax-bi.0 $e |- broda $.
    ax-bi.1 $e |- go broda gi brode $.
    $( Because {go} encodes a syllogism, it may be eliminated by modus ponens.
       Due to the nature of relational logic, it will be simpler to assume that
       the biconditional connective is primitive and to derive directed modus
       ponens as a special case. $)
    ax-bi $a |- brode $.
$}

${
    bi-rev.0 $e |- broda $.
    bi-rev.1 $e |- go brode gi broda $.
    $( Modus ponens in the other direction.
       (Contributed by la korvo, 16-Jul-2023.) $)
    bi-rev $p |- brode $=
      sbb1 sbb2 bi-rev.0 sbb2 sbb1 bi-rev.1 ax-go-sym ax-bi $.
$}

$(
#*#*#
Implication I: {ganai}
#*#*#
$)

$c ganai $.

$( If {broda} and {brode} are bridi, then so is {ganai broda gi brode}. $)
bgan $a bridi ganai broda gi brode $.

${
    ax-bi-syl.0 $e |- go broda gi brode $.
    $( Biconditional implication may be weakened to unidirectional implication. $)
    ax-bi-syl $a |- ganai broda gi brode $.
$}

${
    ax-mp.0 $e |- broda $.
    ax-mp.1 $e |- ganai broda gi brode $.
    $( Because {ganai} encodes a syllogism, it may be eliminated by modus ponens. $)
    ax-mp $a |- brode $.
$}

${
    bi-rev-syl.0 $e |- go broda gi brode $.
    $( The right-hand side of a {go} may also be weakened to a {ganai}.
       (Contributed by la korvo, 10-Jul-2023.) $)
    bi-rev-syl $p |- ganai brode gi broda $=
      sbb2 sbb1 sbb1 sbb2 bi-rev-syl.0 ax-go-sym ax-bi-syl $.
$}

${
    mp-go-lhs.0 $e |- broda $.
    mp-go-lhs.1 $e |- go broda gi brode $.
    $( Implication with the left-hand side of a biconditional.
       (Contributed by la korvo, 10-Jul-2023.) $)
    mp-go-lhs $p |- brode $=
      sbb1 sbb2 mp-go-lhs.0 sbb1 sbb2 mp-go-lhs.1 ax-bi-syl ax-mp $.
$}

${
    mp-go-rhs.0 $e |- brode $.
    mp-go-rhs.1 $e |- go broda gi brode $.
    $( Implication with the right-hand side of a biconditional.
       (Contributed by la korvo, 10-Jul-2023.) $)
    mp-go-rhs $p |- broda $=
      sbb2 sbb1 mp-go-rhs.0 sbb2 sbb1 sbb1 sbb2 mp-go-rhs.1 ax-go-sym ax-bi-syl
      ax-mp $.
$}

$(
#*#*#
Conjunctions: {.e}, {je}, {ge}
#*#*#
$)

$c je ge $.

$c .e $.
sje $a sumti ko'a .e ko'e $.

$( Forethought version of example 12.2-5 from [CLL] p. 14. $)
ax-e-intel $a |- go ge ko'a bu'a ko'i gi ko'e bu'a ko'i gi ko'a .e ko'e bu'a ko'i $.
$( From example 12.2-5 of [CLL] p. 14. $)
ax-je-intel $a |- go ge ko'a bu'a ko'e gi ko'a bu'e ko'e gi ko'a bu'a je bu'e ko'e $.

$(
#*#*#
Biconditionals II: {.o}, {jo}
#*#*#
$)

$c jo $.

$c .o $.
sjo $a sumti ko'a .o ko'e $.

$( By analogy with forethought version of example 12.2-5 from [CLL] p. 14. $)
ax-o-intel $a |- go go ko'a bu'a gi ko'e bu'a gi ko'a .o ko'e bu'a $.
$( By analogy with example 12.2-5 of [CLL] p. 14. $)
ax-jo-intel $a |- go go ko'a bu'a ko'e gi ko'a bu'e ko'e gi ko'a bu'a jo bu'e ko'e $.

$( {.o} is symmetric. $)
o-sym-new $p |- go ko'a .o ko'e bu'a gi ko'e .o ko'a bu'a $= ? $.

${
    o-sym.0 $e |- ko'a .o ko'e bu'a $.
    $( {.o} is symmetric.
       (Contributed by la korvo, 16-Jul-2023.) $)
    o-sym $p |- ko'e .o ko'a bu'a $=
      wk2 sbba bu wk1 sbba bu bgo wk2 wk1 sjo sbba bu wk1 sbba bu wk2 sbba bu
      wk1 sbba bu wk2 sbba bu bgo wk1 wk2 sjo sbba bu o-sym.0 wk1 wk2 sbba
      ax-o-intel mp-go-rhs ax-go-sym wk2 wk1 sbba ax-o-intel mp-go-lhs $.
$}

$(
#*#*#
Conversion: {se}
#*#*#
$)

$c se $.

$( If {bu'a} is a selbri, then so is {se bu'a}. $)
sbs $a selbri se bu'a $.

${
    ax-se-intro.0 $e |- ko'a bu'a ko'e $.
    $( From example 11.1-2 of [CLL] p. 5, where {mi prami do} and {do se prami mi}
       are equivalent. $)
    ax-se-intro $a |- ko'e se bu'a ko'a $.
$}

${
    ax-se-invo.0 $e |- ko'a se se bu'a ko'e $.
    $( {se} is an involution. $)
    ax-se-invo $a |- ko'a bu'a ko'e $.
$}

${
    se-elim.0 $e |- ko'a se bu'a ko'e $.
    $( From example 11.1-2 of [CLL] p. 5, where {mi prami do} and {do se prami mi}
       are equivalent.
       (Contributed by la korvo, 9-Jul-2023.) $)
    se-elim $p |- ko'e bu'a ko'a $=
      wk2 wk1 sbba wk1 wk2 sbba sbs se-elim.0 ax-se-intro ax-se-invo $.
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
      sbb1 sbb2 sbba ro-bi.0 sbb1 sbb2 ro-bi.1 ax-bi-syl ax-ro-mp $.
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
    du-sym.0 $e |- ko'a du ko'e $.
    $( {du} is symmetric. $)
    du-sym $p |- ko'e du ko'a $=
      ? ? ? ? ? ? ? du-sym.0 ? ? ? df-du mp-go-lhs ? ax-ro-mp ? ? ? df-du
      mp-go-rhs $.
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
      wk2 wk1 wk1 wk2 sbdu se-du-elim.0 se-elim ax-du-sym $.
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

$( Based on example 4.1-2 of [CLL] p. 11. $)
ax-ckaji-intel $a |- go ko'a bu'a ko'e gi ko'a ckaji pa ka ce'u bu'a ko'e $.
ax-ckini-intel $a |- go ko'a bu'a ko'e gi ko'a ckini ko'e pa ka ce'u bu'a ce'u $.

${
    ckini-se.0 $e |- ko'a ckini ko'e pa ka ce'u bu'a ce'u $.
    $( {se} can be inserted underneath ckini3.
       (Contributed by la korvo, 12-Jul-2023.) $)
    ckini-se $p |- ko'e ckini ko'a pa ka ce'u se bu'a ce'u $=
      ( sbs bb sc spkb sbckini ax-ckini-intel mp-go-rhs ax-se-intro mp-go-lhs
      bt ) BACEZFBAGGOHINABCABCFABGGCHINDABCJKLBAOJM $.
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
