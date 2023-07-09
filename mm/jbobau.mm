$( jbobau.mm $)

$( bridi smuni jbobau $)

$( $t
htmltitle "brismu bridi";
htmldef "bridi" as "<em>bridi</em> ";
htmldef "selbri" as "<em>selbri</em> ";
htmldef "sumti" as "<em>sumti</em> ";
htmldef "ko'a" as "k1 <small>ko'a</small> ";
htmldef "ko'e" as "k2 <small>ko'e</small> ";
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

$( Various sorts of fragments:
* selbri: primitive relations
* sumti: expressions of variables
* bridi: selbri fully applied to sumti
$)
$c selbri sumti bridi $.

$v ko'a ko'e $.
wk1 $f sumti ko'a $.
wk2 $f sumti ko'e $.

$v broda brode $.
sbb1 $f selbri broda $.
sbb2 $f selbri brode $.

$c du $.
$( Equality as a binary relation. $)
sbd $a selbri du $.

ax-id-refl $a bridi ko'a du ko'a $.

${
    ax-du-sym.0 $e bridi ko'a du ko'e $.
    ax-du-sym $a bridi ko'e du ko'a $.
$}

$c se $.

${
    sbs.0 $e selbri broda $.
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

$( {du} is invariant under {se}. (Contributed by la korvo, 9-Jul-2023.) $)
du-se $p bridi ko'a se du ko'a $=
  wk1 wk1 sbd wk1 ax-id-refl ax-se-intro $.

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
