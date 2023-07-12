$( jbobau.mm $)

$( bridi smuni jbobau $)

$( $t
htmltitle "brismu bridi";
htmldef "bridi" as "<em>bridi</em> ";
htmldef "selbri" as "<em>selbri</em> ";
htmldef "sumti" as "<em>sumti</em> ";
htmldef "ko'a" as "k1 <small>ko'a</small> ";
htmldef "ko'e" as "k2 <small>ko'e</small> ";
htmldef "ko'i" as "k3 <small>ko'i</small> ";
htmldef "broda" as "b1 <small>broda</small> ";
htmldef "brode" as "b2 <small>brode</small> ";
htmldef "da" as "x <small>da</small> ";
htmldef "de" as "y <small>de</small> ";
htmldef "di" as "z <small>di</small> ";
htmldef "du" as "=<small>du</small> ";
htmldef "PA" as "<em>PA</em> ";
htmldef "bu'a" as "R <small>bu'a</small> ";
htmldef "bu'e" as "S <small>bu'e</small> ";
htmldef "bu'i" as "T <small>bu'i</small> ";
htmldef "se" as "se ";
htmldef "ganai" as "if <small>ganai</small> ";
htmldef "ge" as "both <small>ge</small> ";
htmldef "gi" as "then <small>gi</small> ";
htmldef "go" as "iff <small>go</small> ";
htmldef ".e" as "& <small>.e</small> ";
htmldef "no" as "0 ";
htmldef "pa" as "1 ";
htmldef "kacna'u" as "in N <small>kacna'u</small> ";
htmldef "kacli'e" as "+1 = <small>kacli'e</small> ";
$)

$(
#*#*#
Basic syntax
#*#*#
$)

$( Various sorts of fragments:
* selbri: primitive relations
* sumti: expressions of variables
* bridi: selbri fully applied to sumti
$)
$c selbri sumti bridi $.

$v ko'a ko'e ko'i $.
wk1 $f sumti ko'a $.
wk2 $f sumti ko'e $.
wk3 $f sumti ko'i $.

$v broda brode $.
sbb1 $f selbri broda $.
sbb2 $f selbri brode $.

b1 $a bridi ko'a broda $.
b2 $a bridi ko'a broda ko'e $.
b3 $a bridi ko'a broda ko'e ko'i $.

$(
#*#*#
Biconditionals I: {go}
#*#*#
$)

$c go gi $.

${
    bgo.0 $e bridi broda $.
    bgo.1 $e bridi brode $.
    $( If {broda} and {brode} are bridi, then so is {go broda gi brode}. $)
    bgo $a bridi go broda gi brode $.
$}

${
    ax-go-sym.0 $e bridi go broda gi brode $.
    $( {go} is symmetric. $)
    ax-go-sym $a bridi go brode gi broda $.
$}

$(
#*#*#
Implication I: {ganai}
#*#*#
$)

$c ganai $.

${
    bgan.0 $e bridi broda $.
    bgan.1 $e bridi brode $.
    $( If {broda} and {brode} are bridi, then so is {ganai broda gi brode}. $)
    bgan $a bridi ganai broda gi brode $.
$}

${
    ax-bi-syl.0 $e bridi go broda gi brode $.
    $( Biconditional implication may be weakened to unidirectional implication. $)
    ax-bi-syl $a bridi ganai broda gi brode $.
$}

${
    ax-mp.0 $e bridi broda $.
    ax-mp.1 $e bridi ganai broda gi brode $.
    $( Because {ganai} encodes a syllogism, it may be eliminated by modus ponens. $)
    ax-mp $a bridi brode $.
$}

${
    bi-rev-syl.0 $e bridi go broda gi brode $.
    $( The right-hand side of a {go} may also be weakened to a {ganai}.
       (Contributed by la korvo, 10-Jul-2023.) $)
    bi-rev-syl $p bridi ganai brode gi broda $=
      sbb2 sbb1 sbb1 sbb2 bi-rev-syl.0 ax-go-sym ax-bi-syl $.
$}

${
    mp-go-lhs.0 $e bridi broda $.
    mp-go-lhs.1 $e bridi go broda gi brode $.
    $( Implication with the left-hand side of a biconditional.
       (Contributed by la korvo, 10-Jul-2023.) $)
    mp-go-lhs $p bridi brode $=
      sbb1 sbb2 mp-go-lhs.0 sbb1 sbb2 mp-go-lhs.1 ax-bi-syl ax-mp $.
$}

${
    mp-go-rhs.0 $e bridi brode $.
    mp-go-rhs.1 $e bridi go broda gi brode $.
    $( Implication with the right-hand side of a biconditional.
       (Contributed by la korvo, 10-Jul-2023.) $)
    mp-go-rhs $p bridi broda $=
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
ax-e-intel $a bridi go ge ko'a broda ko'i gi ko'e broda ko'i gi ko'a .e ko'e broda ko'i $.
$( From example 12.2-5 of [CLL] p. 14. $)
ax-je-intel $a bridi go ge ko'a broda ko'e gi ko'a brode ko'e gi ko'a broda je brode ko'e $.

$(
#*#*#
Conversion: {se}
#*#*#
$)

$c se $.

${
    sbs.0 $e selbri broda $.
    $( If {broda} is a selbri, then so is {se broda}. $)
    sbs $a selbri se broda $.
$}

${
    ax-se-intro.0 $e bridi ko'a broda ko'e $.
    $( From example 11.1-2 of [CLL] p. 5, where {mi prami do} and {do se prami mi}
       are equivalent. $)
    ax-se-intro $a bridi ko'e se broda ko'a $.
$}

${
    ax-se-invo.0 $e bridi ko'a se se broda ko'e $.
    $( {se} is an involution. $)
    ax-se-invo $a bridi ko'a broda ko'e $.
$}

${
    se-elim.0 $e bridi ko'a se broda ko'e $.
    $( From example 11.1-2 of [CLL] p. 5, where {mi prami do} and {do se prami mi}
       are equivalent.
       (Contributed by la korvo, 9-Jul-2023.) $)
    se-elim $p bridi ko'e broda ko'a $=
      wk2 wk1 sbb1 wk1 wk2 sbb1 sbb1 sbs se-elim.0 ax-se-intro ax-se-invo $.
$}

$(
#*#*#
Identity: {du}
#*#*#
$)

$c du $.
$( Identity as a binary relation. {du} is an equivalence relation. $)
sbd $a selbri du $.

$( Because {du} is an equivalence, it is reflexive. $)
ax-id-refl $a bridi ko'a du ko'a $.

${
    ax-du-sym.0 $e bridi ko'a du ko'e $.
    $( Because {du} is an equivalence, it is symmetric. $)
    ax-du-sym $a bridi ko'e du ko'a $.
$}

${
    ax-du-trans.0 $e bridi ko'a du ko'e $.
    ax-du-trans.1 $e bridi ko'e du ko'i $.
    $( Because {du} is an equivalence, it is transitive. $)
    ax-du-trans $a bridi ko'a du ko'i $.
$}

$( {se du} is reflexive. (Contributed by la korvo, 9-Jul-2023.) $)
se-du-refl $p bridi ko'a se du ko'a $=
  wk1 wk1 sbd wk1 ax-id-refl ax-se-intro $.

${
    se-du-sym.0 $e bridi ko'a se du ko'e $.
    $( {se du} is symmetric.
       (Contributed by la korvo, 9-Jul-2023.) $)
    se-du-sym $p bridi ko'e se du ko'a $=
      wk1 wk2 sbd wk2 wk1 wk1 wk2 sbd se-du-sym.0 se-elim ax-du-sym ax-se-intro
      $.
$}

${
    se-du-trans.0 $e bridi ko'a se du ko'e $.
    se-du-trans.1 $e bridi ko'e se du ko'i $.
    $( {se du} is transitive.
       (Contributed by la korvo, 9-Jul-2023.) $)
    se-du-trans $p bridi ko'a se du ko'i $=
      wk3 wk1 sbd wk3 wk2 wk1 wk2 wk3 sbd se-du-trans.1 se-elim wk1 wk2 sbd
      se-du-trans.0 se-elim ax-du-trans ax-se-intro $.
$}

${
    se-du-elim.0 $e bridi ko'a se du ko'e $.
    $( {se du} may be replaced with {du}.
       (Contributed by la korvo, 9-Jul-2023.) $)
    se-du-elim $p bridi ko'a du ko'e $=
      wk2 wk1 wk1 wk2 sbd se-du-elim.0 se-elim ax-du-sym $.
$}

$(
#*#*#
Internal hom: {ka}, {ckaji}, {ckini}
#*#*#
$)

$c pa ka ce'u ckaji ckini $.

$( Based on example 4.1-2 of [CLL] p. 11. $)
ax-ckaji-intel $a bridi go ko'a broda ko'e gi ko'a ckaji pa ka ce'u broda ko'e $.
ax-ckini-intel $a bridi go ko'a broda ko'e gi ko'a ckini ko'e pa ka ce'u broda ce'u $.

${
    ckini-se.0 $e bridi ko'a ckini ko'e pa ka ce'u broda ce'u $.
    $( {se} can be inserted underneath ckini3. $)
    ckini-se $p bridi ko'e ckini ko'a pa ka ce'u se broda ce'u $= ? $.
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

ax-nat-zero $a bridi li no kacna'u $.

${
    ax-succ-succ.0 $e bridi ko'a .e ko'e kacli'e ko'i $.
    ax-succ-succ $a bridi ko'a du ko'e $.
$}

$(
#*#*#
Uncategorized
#*#*#
$)

$v da de di $.
$d da de di $.
wda $f sumti da $.
wde $f sumti de $.
wdi $f sumti di $.

$v bu'a bu'e bu'i $.
$d bu'a bu'e bu'i $.
sbba $f selbri bu'a $.
sbbe $f selbri bu'e $.
sbbi $f selbri bu'i $.
