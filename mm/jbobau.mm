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
Equality: {du}
#*#*#
$)

$c du $.
$( Equality as a binary relation. $)
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
