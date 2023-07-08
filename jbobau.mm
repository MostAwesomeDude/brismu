$( jbobau.mm $)

$( bridi smuni jbobau $)

$( $t
htmltitle "brismu bridi";
htmldef "bridi" as "<small>bridi</small> ";
htmldef "selbri" as "<small>selbri</small> ";
htmldef "sumti" as "<small>sumti</small> ";
htmldef "vanbi" as " ";
htmldef "vabybri" as "⊢ ";
htmldef "da" as "φ<small>da</small> ";
htmldef "de" as "χ<small>de</small> ";
htmldef "di" as "ψ<small>di</small> ";
htmldef "du" as "=<small>du</small> ";
htmldef "PA" as "<em>PA</em> ";
htmldef "ro" as "∀<small>ro</small> ";
htmldef "zo'u" as ": <small>zo'u</small> ";
htmldef "bu'a" as "bu'a ";
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
wda $f sumti da $.
wde $f sumti de $.
wdi $f sumti di $.

$c du $.
sbd $a selbri du $.

$c PA ro $.
qda $a PA ro $.

vrd $a vanbi ro da $.

ax-id-refl $a vabybri ro da zo'u da du da $.

${
    ax-du-sym.0 $e bridi da du de $.
    ax-du-sym $a bridi de du da $.
$}

$v bu'a $.
sbb $f selbri bu'a $.

$c SE se $.
SEse $a SE se $.

${
    sbs.0 $e selbri bu'a $.
    sbs $a selbri se bu'a $.
$}

${
    ax-ro-intro.0 $e bridi bu'a $.
    ax-ro-intro $a bridi ro da zo'u bu'a $.
$}

${
    ax-se-intro.0 $e bridi da bu'a de $.
    ax-se-intro $a bridi de se bu'a da $.
$}

${
    ax-se-elim.0 $e bridi da se bu'a de $.
    ax-se-elim $a bridi de bu'a da $.
$}

du-se $p vabybri ro da zo'u da se du da $=
  ? $.
