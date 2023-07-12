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

$v broda brode $.
sbb1 $f bridi broda $.
sbb2 $f bridi brode $.

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

${
    ax-go-sym.0 $e |- go broda gi brode $.
    $( {go} is symmetric. $)
    ax-go-sym $a |- go brode gi broda $.
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
Identity: {du}
#*#*#
$)

$c du $.
$( Identity as a binary relation. {du} is an equivalence relation. $)
sbdu $a selbri du $.

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
