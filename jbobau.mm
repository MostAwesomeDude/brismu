$( jbobau.mm $)

$( bridi smuni jbobau $)

$( $t
htmltitle "brismu bridi";
htmldef "bridi" as "<em>bridi</em> ";
htmldef "selbri" as "<em>selbri</em> ";
htmldef "sumti" as "<em>sumti</em> ";
htmldef "vanbi" as " ";
htmldef "vabybri" as "⊢ ";
htmldef "vabysu'i" as "...";
htmldef "da" as "x <small>da</small> ";
htmldef "de" as "y <small>de</small> ";
htmldef "di" as "z <small>di</small> ";
htmldef "du" as "=<small>du</small> ";
htmldef "PA" as "<em>PA</em> ";
htmldef "ro" as "∀<small>ro</small> ";
htmldef "zo'u" as ": <small>zo'u</small> ";
htmldef "bu'a" as "R <small>bu'a</small> ";
htmldef "bu'e" as "S <small>bu'e</small> ";
htmldef "bu'i" as "T <small>bu'i</small> ";
htmldef "SE" as "<em>SE</em> ";
htmldef "se" as "se ";
$)

$( Various sorts of fragments:
* vanbi: elements of a prenex
* selbri: primitive relations
* sumti: expressions of variables
* bridi: selbri fully applied to sumti
* vabybri: vanbi zo'u bridi
$)
$c vanbi selbri sumti bridi vabybri $.

$( The marker terminating the prenex. $)
$c zo'u $.

$v da de di $.
$( $d da de di $. $)
wda $f sumti da $.
wde $f sumti de $.
wdi $f sumti di $.

$( Ad-hoc variable for prenices. $)
$v vabysu'i $.
wv $f sumti vabysu'i $.

$c du $.
sbd $a selbri du $.

$c PA ro $.
qda $a PA ro $.
qrda $a sumti ro da $.

ve $a vanbi zo'u $.
${
    vrd.0 $e vanbi $.
    vrd.1 $e sumti da $.
    vrd $a vanbi ro da $.
$}

ax-id-refl $a vabybri ro da zo'u da du da $.

${
    ax-du-sym.0 $e bridi da du de $.
    ax-du-sym $a bridi de du da $.
$}

$v bu'a bu'e bu'i $.
$d bu'a bu'e bu'i $.
sbba $f selbri bu'a $.
sbbe $f selbri bu'e $.
sbbi $f selbri bu'i $.

$c se $.

${
    sbs.0 $e selbri bu'a $.
    sbs $a selbri se bu'a $.
$}

${
    ax-se-intro.0 $e vabybri vabysu'i zo'u da bu'a de $.
    ax-se-intro $a vabybri vabysu'i zo'u de se bu'a da $.
$}

${
    ax-se-elim.0 $e zo'u da se bu'a de $.
    ax-se-elim $a zo'u de bu'a da $.
$}

du-se $p vabybri ro da zo'u da se du da $=
  wda wda wda qrda sbd wda ax-id-refl ax-se-intro $.

$c .inaja $.

${
    ax-mp.0 $e bridi bu'a $.
    ax-mp.1 $e bridi bu'a .inaja bu'e $.
    ax-mp $a bridi bu'e $.
$}
