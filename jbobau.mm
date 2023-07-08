$( jbobau.mm $)

$( bridi smuni jbobau $)

$( $t
htmltitle "brismu bridi";
htmldef "bridi" as "bridi";
htmldef "selbri" as "selbri";
htmldef "sumti" as "sumti";
htmldef "da" as "da";
htmldef "de" as "de";
htmldef "du" as "du";
htmldef "PA" as "PA";
htmldef "ro" as "ro";
htmldef "zo'u" as "zo'u";
htmldef "prenex" as "prenex";
htmldef "bu'a" as "bu'a";
htmldef "SE" as "SE";
htmldef "se" as "se";
$)

$c bridi selbri sumti $.

$v da de $.
wda $f sumti da $.
wde $f sumti de $.

$c du $.
sbd $a selbri du $.

$c PA ro $.
qda $a PA ro $.

$c prenex zo'u $.
pz $a prenex zo'u $.

ax-id-refl $a bridi ro da zo'u da du da $.

${
    ax-du-sym.0 $e bridi ro da ro de zo'u da du de $.
    ax-du-sym $a bridi ro da ro de zo'u de du da $.
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
    ax-se-intro.0 $e bridi ro da ro de zo'u da bu'a de $.
    ax-se-intro $a bridi ro da ro de zo'u de se bu'a da $.
$}

${
    ax-se-elim.0 $e bridi ro da ro de zo'u da se bu'a de $.
    ax-se-elim $a bridi ro da ro de zo'u de bu'a da $.
$}

du-se $p bridi ro da zo'u da se du da $=
  ? $.
