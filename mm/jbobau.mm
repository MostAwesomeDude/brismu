$( jbobau.mm $)

$( bridi smuni jbobau $)

$( !

Conventions:

* "ax-" starts axioms
  * conclusions which are along the same lines as axioms should not start with
    "ax-"; compare ~ax-mp and ~mpi and ~mpd or ~ax-s and ~si and ~sd
* "df-" starts definitions
  * e.g. definition of {du} is ~df-du
  * definitions are generally of the form {GA broda gi brode}, where {broda}
    contains the defined valsi, {GA} may be one of {ganai}, {go}, {ge}
* Inferences and deductions have systematic names
  * {ganai} can always be converted to inference form; use ~ax-mp and append
    "i", as in ~ax-k and ~ki
  * {go} can have forwards and backwards inferences with "i" and "ri", as in
    ~ei and ~eri for ~df-e
  * {ge} may have inferences which conclude the left-hand or right-hand
  * components with "li" and "ri", as in ~goli and ~gori for ~df-go
  * most inferences admit some deductive form as well, usually by applying
    ~syl and appending "d", as in ~mpd for ~ax-mp
* Lemmas append "-lem", as in ~ge-com-lem and ~ge-com
  * Multiple lemmas append "-lem0", "-lem1", etc.
* Operators commute "-com", relations are symmetric "-sym"

References to iset.mm are not just for comparison and contrast, but for
borrowing; many minor lemmas can be proven by reusing steps from iset.mm.
Formally, there's a functor from a fragment of iset.mm to jbobau.mm.

$)

$( $t
htmltitle "brismu bridi";
htmlcss "<style type='text/css'>" +
        ".sumti { color: darkgreen; }" +
        ".gadri { color: green; }" +
        ".selbri { color: blue; }" +
        ".brirebla { color: darkblue; }" +
        ".bridi { color: brown; }" +
        ".gismu { color: olive; }" +
        ".lujvo { color: teal; }" +
        ".pa { color: orange; }" +
        "</style>";
htmlvarcolor "<span class='sumti'>sumti</span> " +
             "<span class='selbri'>selbri</span> " +
             "<span class='bridi'>bridi</span> ";

htmldef "|-" as '&#8866; ';
htmldef "bridi" as "<em>bridi</em> ";
htmldef "selbri" as "<em>selbri</em> ";
htmldef "sumti" as "<em>sumti</em> ";
htmldef "brirebla" as "<em>brirebla</em> ";
htmldef "skaselbri" as "<em>skaselbri</em> ";
htmldef "PA" as "<em>PA</em> ";
htmldef "ko'a" as "<span class='sumti'>ko'a</span> ";
htmldef "ko'e" as "<span class='sumti'>ko'e</span> ";
htmldef "ko'i" as "<span class='sumti'>ko'i</span> ";
htmldef "ko'o" as "<span class='sumti'>ko'o</span> ";
htmldef "broda" as "<span class='bridi'>broda</span> ";
htmldef "brode" as "<span class='bridi'>brode</span> ";
htmldef "brodi" as "<span class='bridi'>brodi</span> ";
htmldef "brodo" as "<span class='bridi'>brodo</span> ";
htmldef "brodu" as "<span class='bridi'>brodu</span> ";
htmldef "da" as "<span class='selbri'>da</span> ";
htmldef "de" as "<span class='selbri'>de</span> ";
htmldef "di" as "<span class='selbri'>di</span> ";
htmldef "du" as "<span class='selbri'>du</span> ";
htmldef "cei'i" as "<span class='selbri'>cei'i</span> ";
htmldef "gai'o" as "<span class='selbri'>gai'o</span> ";
htmldef "bu'a" as "<span class='selbri'>bu'a</span> ";
htmldef "bu'e" as "<span class='selbri'>bu'e</span> ";
htmldef "bu'i" as "<span class='selbri'>bu'i</span> ";
htmldef "bo'a" as "<span class='brirebla'>bo'a</span> ";
htmldef "bo'e" as "<span class='brirebla'>bo'e</span> ";
htmldef "bo'i" as "<span class='brirebla'>bo'i</span> ";
htmldef "bo'o" as "<span class='brirebla'>bo'o</span> ";
htmldef "bo'u" as "<span class='brirebla'>bo'u</span> ";
htmldef "zo'u" as "<small>zo'u</small> ";
htmldef "se" as "<small>se</small> ";
htmldef "te" as "<small>te</small> ";
htmldef "ga" as "<small>ga</small> ";
htmldef "ganai" as "<small>ganai</small> ";
htmldef "ge" as "<small>ge</small> ";
htmldef "gi" as "<small>gi</small> ";
htmldef "go" as "<small>go</small> ";
htmldef "gonai" as "<small>gonai</small> ";
htmldef "gi'a" as "<small>gi'a</small> ";
htmldef "gi'anai" as "<small>gi'anai</small> ";
htmldef "gi'e" as "<small>gi'e</small> ";
htmldef "gi'o" as "<small>gi'o</small> ";
htmldef "gi'onai" as "<small>gi'onai</small> ";
htmldef "nagi'a" as "<small>nagi'a</small> ";
htmldef "ja" as "<small>ja</small> ";
htmldef "janai" as "<small>janai</small> ";
htmldef "je" as "<small>je</small> ";
htmldef "jo" as "<small>jo</small> ";
htmldef "jonai" as "<small>jonai</small> ";
htmldef "naja" as "<small>naja</small> ";
htmldef ".a" as "<small>.a</small> ";
htmldef ".anai" as "<small>.anai</small> ";
htmldef ".e" as "<small>.e</small> ";
htmldef ".o" as "<small>.o</small> ";
htmldef ".onai" as "<small>.onai</small> ";
htmldef "na.a" as "<small>na.a</small> ";
htmldef "na" as "<small>na</small> ";
htmldef "naku" as "<small>naku</small> ";
htmldef "poi" as "<small>poi</small> ";
htmldef "ke'a" as "<small>ke'a</small> ";
htmldef "ku'o" as "<small>ku'o</small> ";
htmldef "li" as "<small>li</small> ";
htmldef "no" as "<span class='pa'>0</span> ";
htmldef "pa" as "<span class='pa'>1</span> ";
htmldef "re" as "<span class='pa'>2</span> ";
htmldef "ku'i'a" as "<span class='pa'>ku'i'a</span> ";
htmldef "ku'i'e" as "<span class='pa'>ku'i'e</span> ";
htmldef "ku'i'i" as "<span class='pa'>ku'i'i</span> ";
htmldef "bai'ei" as " +1 ";
htmldef "su'i" as " + ";
htmldef "pi'i" as " * ";
htmldef "vu'u" as " - ";
htmldef "ro" as "<small>ro</small> ";
htmldef "su'o" as "<small>su'o</small> ";
htmldef "ce" as "<small>ce</small> ";
htmldef "ce'o" as "<small>ce'o</small> ";
htmldef "fa'u" as "<small>fa'u</small> ";
htmldef "jo'e" as "<small>jo'e</small> ";
htmldef "ku'a" as "<small>ku'a</small> ";
htmldef "cu" as "<small>cu</small> ";
htmldef "nomei" as "<span class='lujvo'>nomei</span> ";
htmldef "pamei" as "<span class='lujvo'>pamei</span> ";
htmldef "balvi" as "<span class='gismu'>balvi</span> ";
htmldef "berti" as "<span class='gismu'>berti</span> ";
htmldef "bridi" as "<span class='gismu'>bridi</span> ";
htmldef "cabna" as "<span class='gismu'>cabna</span> ";
htmldef "ckaji" as "<span class='gismu'>ckaji</span> ";
htmldef "ckini" as "<span class='gismu'>ckini</span> ";
htmldef "cmima" as "<span class='gismu'>cmima</span> ";
htmldef "cnita" as "<span class='gismu'>cnita</span> ";
htmldef "crane" as "<span class='gismu'>crane</span> ";
htmldef "drata" as "<span class='gismu'>drata</span> ";
htmldef "dugri" as "<span class='gismu'>dugri</span> ";
htmldef "dunli" as "<span class='gismu'>dunli</span> ";
htmldef "fatci" as "<span class='gismu'>fatci</span> ";
htmldef "fatne" as "<span class='gismu'>fatne</span> ";
htmldef "frica" as "<span class='gismu'>frica</span> ";
htmldef "gapru" as "<span class='gismu'>gapru</span> ";
htmldef "kampu" as "<span class='gismu'>kampu</span> ";
htmldef "kanxe" as "<span class='gismu'>kanxe</span> ";
htmldef "kinfi" as "<span class='gismu'>kinfi</span> ";
htmldef "kinra" as "<span class='gismu'>kinra</span> ";
htmldef "mapti" as "<span class='gismu'>mapti</span> ";
htmldef "mintu" as "<span class='gismu'>mintu</span> ";
htmldef "mupli" as "<span class='gismu'>mupli</span> ";
htmldef "natfe" as "<span class='gismu'>natfe</span> ";
htmldef "nenri" as "<span class='gismu'>nenri</span> ";
htmldef "nibli" as "<span class='gismu'>nibli</span> ";
htmldef "pagbu" as "<span class='gismu'>pagbu</span> ";
htmldef "pilji" as "<span class='gismu'>pilji</span> ";
htmldef "prami" as "<span class='gismu'>prami</span> ";
htmldef "pritu" as "<span class='gismu'>pritu</span> ";
htmldef "purci" as "<span class='gismu'>purci</span> ";
htmldef "rinka" as "<span class='gismu'>rinka</span> ";
htmldef "sigda" as "<span class='gismu'>sigda</span> ";
htmldef "simsa" as "<span class='gismu'>simsa</span> ";
htmldef "simxu" as "<span class='gismu'>simxu</span> ";
htmldef "skari" as "<span class='gismu'>skari</span> ";
htmldef "snanu" as "<span class='gismu'>snanu</span> ";
htmldef "steci" as "<span class='gismu'>steci</span> ";
htmldef "stici" as "<span class='gismu'>stici</span> ";
htmldef "stuna" as "<span class='gismu'>stuna</span> ";
htmldef "sumji" as "<span class='gismu'>sumji</span> ";
htmldef "takni" as "<span class='gismu'>takni</span> ";
htmldef "tenfa" as "<span class='gismu'>tenfa</span> ";
htmldef "trixe" as "<span class='gismu'>trixe</span> ";
htmldef "tsida" as "<span class='gismu'>tsida</span> ";
htmldef "vlina" as "<span class='gismu'>vlina</span> ";
htmldef "xlane" as "<span class='gismu'>xlane</span> ";
htmldef "xlane" as "<span class='gismu'>xlane</span> ";
htmldef "xinmo" as "<span class='gismu'>xinmo</span> ";
htmldef "zunle" as "<span class='gismu'>zunle</span> ";
htmldef "du'u" as "<small>du'u</small> ";
htmldef "ka" as "<small>ka</small> ";
htmldef "ce'u" as "<small>ce'u</small> ";
htmldef "kei" as "<small>kei</small> ";
htmldef "efklipi" as "<span class='lujvo'>efklipi</span> ";
htmldef "efklizu" as "<span class='lujvo'>efklizu</span> ";
htmldef "jompau" as "<span class='lujvo'>jompau</span> ";
htmldef "kacli'e" as "<span class='lujvo'>kacli'e</span> ";
htmldef "kacme'a" as "<span class='lujvo'>kacme'a</span> ";
htmldef "kacna'u" as "<span class='lujvo'>kacna'u</span> ";
htmldef "ki'irkanxe" as "<span class='lujvo'>ki'irkanxe</span> ";
htmldef "ki'irni'i" as "<span class='lujvo'>ki'irni'i</span> ";
htmldef "ki'irvlina" as "<span class='lujvo'>ki'irvlina</span> ";
htmldef "kuzypau" as "<span class='lujvo'>kuzypau</span> ";
htmldef "pagyfancu" as "<span class='lujvo'>pagyfancu</span> ";
htmldef "selbri" as "<span class='lujvo'>selbri</span> ";
htmldef "mi" as "<span class='sumti'>mi</span> ";
htmldef "do" as "<span class='sumti'>do</span> ";
htmldef "le" as "<span class='gadri'>le</span> ";
$)

$(
#####
LOGICAL CONNECTIVES
#####

We start by internalizing five standard logical connectives: {` ganai `},
{` ge `}, {` go `}, {` ga `}, and {` gonai `}. We will use these connectives
to provide a basic logical framework for defining selbri and proving bridi.
$)

$(
#*#*#
Basic syntax
#*#*#

Before logic, we must define some basic elements of syntax: bridi, selbri,
and sumti. We will also embrace some experimental concepts not named in the
baseline valsi, but exposed in the baseline grammar: prenexes and bridi-tails.
$)

$( Various sorts of fragments:
* "sb" for selbri: primitive relations
* "s" for sumti: expressions of variables
* "b" for bridi: selbri fully applied to sumti
* "p" for prenex: row of bound sumti preceding bridi
* "t" for bridi-tail: selbri plus appended sumti

We adopt the experimental lujvo {brirebla} and {brili'e} for tagging
bridi-tails and prenexes respectively. We are not adopting their smuni, just
their lerfu and rafsi.
$)
$c selbri sumti bridi brirebla brili'e $.

$( A turnstile. Needed to indicate that a bridi is inhabited. $)
$c |- $.

$v ko'a ko'e ko'i ko'o $.
wk1 $f sumti ko'a $.
wk2 $f sumti ko'e $.
wk3 $f sumti ko'i $.
wk4 $f sumti ko'o $.

$v broda brode brodi brodo brodu $.
sbb1 $f bridi broda $.
sbb2 $f bridi brode $.
sbb3 $f bridi brodi $.
sbb4 $f bridi brodo $.
sbb5 $f bridi brodu $.

$v bo'a bo'e bo'i bo'o bo'u $.
tb1 $f brirebla bo'a $.
tb2 $f brirebla bo'e $.
tb3 $f brirebla bo'i $.
tb4 $f brirebla bo'o $.
tb5 $f brirebla bo'u $.

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

$( Any selbri is a valid brirebla. $)
tsb $a brirebla bu'a $.

${
    tss.0 $e brirebla bo'a $.
    $( Any brirebla can have an additional trailing sumti. $)
    tss $a brirebla bo'a ko'a $.
$}

$( Build a bridi from a sumti and brirebla. $)
btb $a bridi ko'a bo'a $.

$( Normal form for unary selbri.
   (Contributed by la korvo, 14-Aug-2023.) $)
bu $p bridi ko'a bu'a $=
  ( tsb btb ) ABCD $.
$( Normal form for binary selbri.
   (Contributed by la korvo, 14-Aug-2023.) $)
bb $p bridi ko'a bu'a ko'e $=
  ( tsb tss btb ) ABCDZGEF $.
$( Normal form for ternary selbri.
   (Contributed by la korvo, 14-Aug-2023.) $)
bt $p bridi ko'a bu'a ko'e ko'i $=
  ( tsb tss btb ) ACBDEZHFZIFG $.
$( Normal form for quaternary selbri.
   (Contributed by la korvo, 19-Mar-2024.) $)
bq $p bridi ko'a bu'a ko'e ko'i ko'o $=
  ( tsb tss btb ) ADCBEFZIGZJGZKGH $.

$(
#*#*#
Implication I: {ganai}
#*#*#

We start with the most fundamental connective, {` ganai `}, which denotes
implication. We will build combinators from the SK basis, which is universal
over parametric combinators. This gives us both an enormous degree of
flexibility, because we may build any well-typed combinator, as well as
confidence in correctness, because the SK basis is well-studied.

We also require a single inference-building rule, ~ax-mp .

In terms of category theory, {` ganai broda gi brode `} is an arrow in a
syntactic category of equivalence classes of bridi, and the bridi
{` broda `} and {` brode `} are objects. Note that, since we are using
metavariables to denote bridi, we automatically denote equivalence classes.
$)

$c ganai gi $.

$( If {` broda `} and {` brode `} are bridi, then so is
   {` ganai broda gi brode `}. In terms of category theory, our category of
   bridi is closed. $)
bgan $a bridi ganai broda gi brode $.

${
    ax-mp.0 $e |- broda $.
    ax-mp.1 $e |- ganai broda gi brode $.
    $( Because {` ganai `} encodes a syllogism, it may be eliminated by modus
       ponens. In terms of categorical logic, {` broda `} implies {` brode `}
       and {` broda `} is assumed. $)
    ax-mp $a |- brode $.
$}

$( The principle of simplification. Known as "ax-1" in iset.mm. Known as the
   constant combinator, or K, in combinator calculus. $)
ax-k $a |- ganai broda gi ganai brode gi broda $.

${
    ki.0 $e |- broda $.
    $( Inference form of ~ax-k
       (Contributed by la korvo, 27-Jul-2023.) $)
    ki $p |- ganai brode gi broda $=
      sbb1 sbb2 sbb1 bgan ki.0 sbb1 sbb2 ax-k ax-mp $.
$}

${
    kii.0 $e |- broda $.
    kii.1 $e |- brode $.
    $( Inference form of ~ki
       (Contributed by la korvo, 27-Jul-2023.) $)
    kii $p |- broda $=
      sbb2 sbb1 kii.1 sbb1 sbb2 kii.0 ki ax-mp $.
$}

$( Frege's axiom. Known as "ax-2" in iset.mm. Known as the S combinator in
   combinator calculus. $)
ax-s $a |- ganai ganai broda gi ganai brode gi brodi gi ganai ganai broda gi brode gi ganai broda gi brodi $.

${
    si.0 $e |- ganai broda gi ganai brode gi brodi $.
    $( Inference form of ~ax-s
       (Contributed by la korvo, 27-Jul-2023.) $)
    si $p |- ganai ganai broda gi brode gi ganai broda gi brodi $=
      sbb1 sbb2 sbb3 bgan bgan sbb1 sbb2 bgan sbb1 sbb3 bgan bgan si.0 sbb1
      sbb2 sbb3 ax-s ax-mp $.
$}

${
    mpd.0 $e |- ganai broda gi brode $.
    mpd.1 $e |- ganai broda gi ganai brode gi brodi $.
    $( Deductive form of ~ax-mp
       (Contributed by la korvo, 27-Jul-2023.) $)
    mpd $p |- ganai broda gi brodi $=
      ( bgan si ax-mp ) ABFACFDABCEGH $.
$}

$( The principle of identity. This is distantly related to, but not the same
   as, the identity relation ~df-du . In terms of category theory, this proves
   that identity arrows exist.
   (Contributed by la korvo, 27-Jul-2023.) $)
id $p |- ganai broda gi broda $=
  ( sbb2 bgan ax-k mpd ) ABACZAABDAFDE $.

${
    syl.0 $e |- ganai broda gi brode $.
    syl.1 $e |- ganai brode gi brodi $.
    $( The quintessential syllogism. This inference is a standard workhorse
       for producing deductive forms. In terms of category theory, it composes
       arrows.
       (Contributed by la korvo, 30-Jul-2023.) $)
    syl $p |- ganai broda gi brodi $=
      sbb1 sbb2 sbb3 syl.0 sbb2 sbb3 bgan sbb1 syl.1 ki mpd $.
$}

${
    sd.0 $e |- ganai broda gi ganai brode gi ganai brodi gi brodo $.
    $( Deductive form of ~ax-s
       (Contributed by la korvo, 31-Jul-2023.) $)
    sd $p |- ganai broda gi
                  ganai ganai brode gi brodi gi ganai brode gi brodo $=
      ( bgan ax-s syl ) ABCDFFBCFBDFFEBCDGH $.
$}

${
    mpdd.0 $e |- ganai broda gi ganai brode gi brodi $.
    mpdd.1 $e |- ganai broda gi ganai brode gi ganai brodi gi brodo $.
    $( Nested form of ~mpd
       (Contributed by la korvo, 31-Jul-2023.) $)
    mpdd $p |- ganai broda gi ganai brode gi brodo $=
      ( bgan sd mpd ) ABCGBDGEABCDFHI $.
$}

${
    sylcom.0 $e |- ganai broda gi ganai brode gi brodi $.
    sylcom.1 $e |- ganai brode gi ganai brodi gi brodo $.
    $( A syllogism which shuffles antecedents.
       (Contributed by la korvo, 30-Jul-2023.) $)
    sylcom $p |- ganai broda gi ganai brode gi brodo $=
      sbb1 sbb2 sbb3 bgan sbb2 sbb4 bgan sylcom.0 sbb2 sbb3 sbb4 sylcom.1 si
      syl $.
$}

${
    syl6.0 $e |- ganai broda gi ganai brode gi brodi $.
    syl6.1 $e |- ganai brodi gi brodo $.
    $( A syllogism replacing consequents.
       (Contributed by la korvo, 31-Jul-2023.) $)
    syl6 $p |- ganai broda gi ganai brode gi brodo $=
      ( bgan ki sylcom ) ABCDECDGBFHI $.
$}

${
    syl6c.0 $e |- ganai broda gi ganai brode gi brodi $.
    syl6c.1 $e |- ganai broda gi ganai brode gi brodo $.
    syl6c.2 $e |- ganai brodi gi ganai brodo gi brodu $.
    $( A contractive variant of ~syl6
       (Contributed by la korvo, 31-Jul-2023.) $)
    syl6c $p |- ganai broda gi ganai brode gi brodu $=
      ( bgan syl6 mpdd ) ABDEGABCDEIFHJK $.
$}

${
    kd.0 $e |- ganai broda gi brode $.
    $( Deductive form of ~ax-k
       (Contributed by la korvo, 30-Jul-2023.) $)
    kd $p |- ganai broda gi ganai brodi gi brode $=
      sbb1 sbb2 sbb3 sbb2 bgan kd.0 sbb2 sbb3 ax-k syl $.
$}

${
    syl5com.0 $e |- ganai broda gi brode $.
    syl5com.1 $e |- ganai brodi gi ganai brode gi brodo $.
    $( A syllogism which shuffles antecedents.
       (Contributed by la korvo, 30-Jul-2023.) $)
    syl5com $p |- ganai broda gi ganai brodi gi brodo $=
      sbb1 sbb3 sbb2 sbb4 sbb1 sbb2 sbb3 syl5com.0 kd syl5com.1 sylcom $.
$}

${
    ganai-swap12.0 $e |- ganai broda gi ganai brode gi brodi $.
    $( Naturally swap the first and second antecedents in an internalized
       inference.
       (Contributed by la korvo, 30-Jul-2023.) $)
    ganai-swap12 $p |- ganai brode gi ganai broda gi brodi $=
      sbb2 sbb2 sbb1 sbb3 sbb2 id ganai-swap12.0 syl5com $.
$}

${
    syl5.0 $e |- ganai broda gi brode $.
    syl5.1 $e |- ganai brodi gi ganai brode gi brodo $.
    $( A syllogism which shuffles antecedents.
       (Contributed by la korvo, 31-Jul-2023.) $)
    syl5 $p |- ganai brodi gi ganai broda gi brodo $=
      sbb1 sbb3 sbb4 sbb1 sbb2 sbb3 sbb4 syl5.0 syl5.1 syl5com ganai-swap12 $.
$}

${
    syl2im.0 $e |- ganai broda gi brode $.
    syl2im.1 $e |- ganai brodi gi brodo $.
    syl2im.2 $e |- ganai brode gi ganai brodo gi brodu $.
    $( Replace two antecedents in parallel.
       (Contributed by la korvo, 31-Jul-2023.) $)
    syl2im $p |- ganai broda gi ganai brodi gi brodu $=
      ( bgan syl5 syl ) ABCEIFCDBEGHJK $.
$}

${
    ganai-abs.0 $e |- ganai broda gi ganai broda gi brode $.
    $( Absorb a redundant antecedent.
       (Contributed by la korvo, 30-Jul-2023.) $)
    ganai-abs $p |- ganai broda gi brode $=
      sbb1 sbb1 sbb2 sbb1 id ganai-abs.0 mpd $.
$}

${
    sylc.0 $e |- ganai broda gi brode $.
    sylc.1 $e |- ganai broda gi brodi $.
    sylc.2 $e |- ganai brode gi ganai brodi gi brodo $.
    $( A contracting syllogism.
       (Contributed by la korvo, 31-Jul-2023.) $)
    sylc $p |- ganai broda gi brodo $=
      ( syl2im ganai-abs ) ADABACDEFGHI $.
$}

${
    mpi.0 $e |- broda $.
    mpi.1 $e |- ganai brode gi ganai broda gi brodi $.
    $( A nested modus ponens. Known as "mpi" in iset.mm.
       (Contributed by la korvo, 27-Jul-2023.) $)
    mpi $p |- ganai brode gi brodi $=
      sbb2 sbb1 sbb3 sbb1 sbb2 mpi.0 ki mpi.1 mpd $.
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
    ge-led.0 $e |- ganai broda gi ge brode gi brodi $.
    $( Deductive form of ~ax-ge-le
       (Contributed by la korvo, 31-Jul-2023.) $)
    ge-led $p |- ganai broda gi brode $=
      ( bge ax-ge-le syl ) ABCEBDBCFG $.
$}

${
    ge-rei.0 $e |- ge broda gi brode $.
    $( Inference form of ~ax-ge-re
       (Contributed by la korvo, 27-Jul-2023.) $)
    ge-rei $p |- brode $=
      sbb1 sbb2 bge sbb2 ge-rei.0 sbb1 sbb2 ax-ge-re ax-mp $.
$}

${
    ge-red.0 $e |- ganai broda gi ge brode gi brodi $.
    $( Deductive form of ~ax-ge-re
       (Contributed by la korvo, 31-Jul-2023.) $)
    ge-red $p |- ganai broda gi brodi $=
      ( bge ax-ge-re syl ) ABCECDBCFG $.
$}

${
    ge-ini.0 $e |- broda $.
    ge-ini.1 $e |- brode $.
    $( Inference form of ~ax-ge-in
       (Contributed by la korvo, 27-Jul-2023.) $)
    ge-ini $p |- ge broda gi brode $=
      sbb1 sbb2 sbb1 sbb2 bge ge-ini.0 ge-ini.1 sbb1 sbb2 ax-ge-in mp2 $.
$}

$( ~ax-ge-in with swapped antecedents.
   (Contributed by la korvo, 31-Jul-2023.) $)
ge-in-swap12 $p |- ganai broda gi ganai brode gi ge brode gi broda $=
  ( bge ax-ge-in ganai-swap12 ) BABACBADE $.

${
    cur.0 $e |- ganai broda gi ganai brode gi brodi $.
    $( The natural curry (or "import") for any well-formed statement. Known as
       "imp" in iset.mm.
       (Contributed by la korvo, 31-Jul-2023.) $)
    cur $p |- ganai ge broda gi brode gi brodi $=
      ( bge ax-ge-le ax-ge-re sylc ) ABEABCABFABGDH $.
$}

${
    uncur.0 $e |- ganai ge broda gi brode gi brodi $.
    $( The natural uncurry (or "export") for any well-formed statement. Known
       as "ex" in iset.mm.
       (Contributed by la korvo, 31-Jul-2023.) $)
    uncur $p |- ganai broda gi ganai brode gi brodi $=
      ( bge ax-ge-in syl6 ) ABABECABFDG $.
$}

${
    syl2anc.0 $e |- ganai broda gi brode $.
    syl2anc.1 $e |- ganai broda gi brodi $.
    syl2anc.2 $e |- ganai ge brode gi brodi gi brodo $.
    $( A contracting syllogism.
       (Contributed by la korvo, 31-Jul-2023.) $)
    syl2anc $p |- ganai broda gi brodo $=
      ( uncur sylc ) ABCDEFBCDGHI $.
$}

${
    mpancom.0 $e |- ganai broda gi brode $.
    mpancom.1 $e |- ganai ge brode gi broda gi brodi $.
    $( A variant of ~mpan
       (Contributed by la korvo, 31-Jul-2023.) $)
    mpancom $p |- ganai broda gi brodi $=
      ( id syl2anc ) ABACDAFEG $.
$}

${
    mpan.0 $e |- broda $.
    mpan.1 $e |- ganai ge broda gi brode gi brodi $.
    $( An inference eliminating a conjunction from the antecedent.
       (Contributed by la korvo, 31-Jul-2023.) $)
    mpan $p |- ganai brode gi brodi $=
      ( ki mpancom ) BACABDFEG $.
$}

${
    mp2an.0 $e |- broda $.
    mp2an.1 $e |- brode $.
    mp2an.2 $e |- ganai ge broda gi brode gi brodi $.
    $( An inference eliminating a conjunction from the antecedent.
       (Contributed by la korvo, 31-Jul-2023.) $)
    mp2an $p |- brodi $=
      ( mpan ax-mp ) BCEABCDFGH $.
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

$( Property of biconditionals.
   (Contributed by la korvo, 31-Jul-2023.) $)
bi1 $p |- ganai go broda gi brode gi ganai broda gi brode $=
  ( bgo bgan bge df-go ge-lei ge-led ) ABCZABDZBADZIJKEZDLIDABFGH $.

$( Property of biconditionals.
   (Contributed by la korvo, 31-Jul-2023.) $)
bi2 $p |- ganai go broda gi brode gi ganai brode gi broda $=
  ( bgo bgan bge df-go ge-lei ge-red ) ABCZABDZBADZIJKEZDLIDABFGH $.

$( Property of biconditionals.
   (Contributed by la korvo, 31-Jul-2023.) $)
bi3 $p |- ganai
  ganai broda gi brode
  gi ganai ganai brode gi broda
    gi go broda gi brode $=
  ( bgan bgo bge df-go ge-rei uncur ) ABCZBACZABDZKIJEZCLKCABFGH $.

${
    goriidd.0 $e |- ganai broda gi ganai brode gi ganai brodi gi brodo $.
    goriidd.1 $e |- ganai broda gi ganai brode gi ganai brodo gi brodi $.
    $( Double deduction form of ~gorii
       (Contributed by la korvo, 31-Jul-2023.) $)
    goriidd $p |- ganai broda gi ganai brode gi go brodi gi brodo $=
      ( bgan bgo bi3 syl6c ) ABCDGDCGCDHEFCDIJ $.
$}

${
    goriid-lem.0 $e |- ganai brode gi ganai brodi gi brodo $.
    goriid-lem.1 $e |- ganai broda gi ganai brodo gi brodi $.
    $( Lemma for ~goriid known as "impbid21d" in iset.mm.
       (Contributed by la korvo, 31-Jul-2023.) $)
    goriid-lem $p |- ganai broda gi ganai brode gi go brodi gi brodo $=
      ( bgan ki kd goriidd ) ABCDBCDGGAEHADCGBFIJ $.
$}

${
    goriid.0 $e |- ganai broda gi ganai brode gi brodi $.
    goriid.1 $e |- ganai broda gi ganai brodi gi brode $.
    $( Deduction form of ~gorii
       (Contributed by la korvo, 31-Jul-2023.) $)
    goriid $p |- ganai broda gi go brode gi brodi $=
      ( bgo goriid-lem ganai-abs ) ABCFAABCDEGH $.
$}

$( {` go `} is reflexive.
   (Contributed by la korvo, 30-Jul-2023.) $)
go-refl $p |- go broda gi broda $=
  sbb1 sbb1 sbb1 id sbb1 id gorii $.

$( Lemma: {` go `} commutes in one direction.
   (Contributed by la korvo, 31-Jul-2023.) $)
go-com-lem $p |- ganai go broda gi brode gi go brode gi broda $=
  ( bgo bi2 bi1 goriid ) ABCBAABDABEF $.

$( {` go `} commutes.
   (Contributed by la korvo, 17-Aug-2023.) $)
go-com $p |- go go broda gi brode gi go brode gi broda $=
  ( bgo go-com-lem gorii ) ABCBACABDBADE $.

${
    go-comi.0 $e |- go broda gi brode $.
    $( Inference form of ~go-com
       (Contributed by la korvo, 31-Jul-2023.) $)
    go-comi $p |- go brode gi broda $=
      ( bgo go-com-lem ax-mp ) ABDBADCABEF $.
$}

${
    ax-go-trans.0 $e |- go broda gi brode $.
    ax-go-trans.1 $e |- go brode gi brodi $.
    $( {` go `} is transitive. $)
    ax-go-trans $a |- go broda gi brodi $.
$}

${
    go-trans.0 $e |- go broda gi brode $.
    go-trans.1 $e |- go brode gi brodi $.
    $( {` go `} is transitive.
       (Contributed by la korvo, 16-Aug-2023.) $)
    go-trans $p |- go broda gi brodi $=
      ( ax-go-trans ) ABCDEF $.
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
      sbb1 sbb2 bi-rev.0 sbb2 sbb1 bi-rev.1 go-comi bi $.
$}

${
    bi-rev-syl.0 $e |- go broda gi brode $.
    $( The right-hand side of a {` go `} may also be weakened to a {` ganai `}.
       (Contributed by la korvo, 10-Jul-2023.) $)
    bi-rev-syl $p |- ganai brode gi broda $=
      sbb2 sbb1 sbb1 sbb2 bi-rev-syl.0 go-comi golili $.
$}

$(
#*#*#
Implication II
#*#*#

Unlike the other four connectives, {` ganai `} is not symmetric. As a result,
Lojban's grammar admits both a left-to-right and right-to-left version of each
connective for implication.
$)

$(
=-=-=
{na.a}
=-=-=
$)

$c na.a $.
sjnaa $a sumti ko'a na.a ko'e $.

$( Definition of {` na.a `} in terms of {` ganai `}. By analogy with forethought
   version of example 12.2-5 from [CLL] p. 14. $)
df-na.a $a |- go ko'a na.a ko'e bo'a gi ganai ko'a bo'a gi ko'e bo'a $.

${
    naai.0 $e |- ko'a na.a ko'e bo'a $.
    $( Inference form of ~df-na.a
       (Contributed by la korvo, 17-Aug-2023.) $)
    naai $p |- ganai ko'a bo'a gi ko'e bo'a $=
      ( sjnaa btb bgan df-na.a bi ) ABECFACFBCFGDABCHI $.
$}

${
    naaii.0 $e |- ko'a na.a ko'e bo'a $.
    naaii.1 $e |- ko'a bo'a $.
    $( Inference form of ~df-na.a
       (Contributed by la korvo, 17-Aug-2023.) $)
    naaii $p |- ko'e bo'a $=
      ( btb naai ax-mp ) ACFBCFEABCDGH $.
$}

${
    naari.0 $e |- ganai ko'a bo'a gi ko'e bo'a $.
    $( Reverse inference form of ~df-na.a
       (Contributed by la korvo, 17-Aug-2023.) $)
    naari $p |- ko'a na.a ko'e bo'a $=
      ( btb bgan sjnaa df-na.a bi-rev ) ACEBCEFABGCEDABCHI $.
$}

$(
=-=-=
{.anai}
=-=-=
$)

$c .anai $.
sjanai $a sumti ko'a .anai ko'e $.

$( Definition of {` .anai `} in terms of {` ganai `}. By analogy with forethought
   version of example 12.2-5 from [CLL] p. 14. $)
df-anai $a |- go ko'e .anai ko'a bo'a gi ganai ko'a bo'a gi ko'e bo'a $.

${
    anaii.0 $e |- ko'e .anai ko'a bo'a $.
    $( Inference form of ~df-anai
       (Contributed by la korvo, 16-Aug-2023.) $)
    anaii $p |- ganai ko'a bo'a gi ko'e bo'a $=
      ( sjanai btb bgan df-anai bi ) BAECFACFBCFGDABCHI $.
$}

${
    anaiii.0 $e |- ko'e .anai ko'a bo'a $.
    anaiii.1 $e |- ko'a bo'a $.
    $( Inference form of ~df-anai
       (Contributed by la korvo, 16-Aug-2023.) $)
    anaiii $p |- ko'e bo'a $=
      ( btb anaii ax-mp ) ACFBCFEABCDGH $.
$}

${
    anairi.0 $e |- ganai ko'a bo'a gi ko'e bo'a $.
    $( Reverse inference form of ~df-anai
       (Contributed by la korvo, 16-Aug-2023.) $)
    anairi $p |- ko'e .anai ko'a bo'a $=
      ( btb bgan sjanai df-anai bi-rev ) ACEBCEFBAGCEDABCHI $.
$}

$(
=-=-=
{naja}
=-=-=
$)

$c naja $.
sbnaja $a selbri bu'a naja bu'e $.

$( Definition of {` naja `} in terms of {` ganai `}. By analogy with
   example 12.2-5 of [CLL] p. 14. $)
df-naja $a |- go ko'a bu'a naja bu'e ko'e gi ganai ko'a bu'a ko'e gi ko'a bu'e ko'e $.

${
    najai.0 $e |- ko'a bu'a naja bu'e ko'e $.
    $( Inference form of ~df-naja
       (Contributed by la korvo, 17-Aug-2023.) $)
    najai $p |- ganai ko'a bu'a ko'e gi ko'a bu'e ko'e $=
      ( sbnaja bb bgan df-naja bi ) ABCDFGABCGABDGHEABCDIJ $.
$}

${
    najaii.0 $e |- ko'a bu'a naja bu'e ko'e $.
    najaii.1 $e |- ko'a bu'a ko'e $.
    $( Inference form of ~df-naja
       (Contributed by la korvo, 17-Aug-2023.) $)
    najaii $p |- ko'a bu'e ko'e $=
      ( bb najai ax-mp ) ABCGABDGFABCDEHI $.
$}

${
    najari.0 $e |- ganai ko'a bu'a ko'e gi ko'a bu'e ko'e $.
    $( Reverse inference form of ~df-naja
       (Contributed by la korvo, 17-Aug-2023.) $)
    najari $p |- ko'a bu'a naja bu'e ko'e $=
      ( bb bgan sbnaja df-naja bi-rev ) ABCFABDFGABCDHFEABCDIJ $.
$}

$(
=-=-=
{janai}
=-=-=
$)

$c janai $.
sbjanai $a selbri bu'a janai bu'e $.

$( Definition of {` janai `} in terms of {` ganai `}. By analogy with
   example 12.2-5 of [CLL] p. 14. $)
df-janai $a |- go ko'a bu'e janai bu'a ko'e gi ganai ko'a bu'a ko'e gi ko'a bu'e ko'e $.

${
    janaii.0 $e |- ko'a bu'e janai bu'a ko'e $.
    $( Inference form of ~df-janai
       (Contributed by la korvo, 16-Aug-2023.) $)
    janaii $p |- ganai ko'a bu'a ko'e gi ko'a bu'e ko'e $=
      ( sbjanai bb bgan df-janai bi ) ABDCFGABCGABDGHEABCDIJ $.
$}

${
    janaiii.0 $e |- ko'a bu'e janai bu'a ko'e $.
    janaiii.1 $e |- ko'a bu'a ko'e $.
    $( Inference form of ~df-janai
       (Contributed by la korvo, 16-Aug-2023.) $)
    janaiii $p |- ko'a bu'e ko'e $=
      ( bb janaii ax-mp ) ABCGABDGFABCDEHI $.
$}

${
    janairi.0 $e |- ganai ko'a bu'a ko'e gi ko'a bu'e ko'e $.
    $( Reverse inference form of ~df-janai
       (Contributed by la korvo, 16-Aug-2023.) $)
    janairi $p |- ko'a bu'e janai bu'a ko'e $=
      ( bb bgan sbjanai df-janai bi-rev ) ABCFABDFGABDCHFEABCDIJ $.
$}

$(
=-=-=
{nagi'a}
=-=-=
$)

$c nagi'a $.
tnagiha $a brirebla bo'a nagi'a bo'e $.

$( Definition of {` nagi'a `} in terms of {` ganai `}. $)
df-nagiha $a |- go ko'a bo'a nagi'a bo'e gi ganai ko'a bo'a gi ko'a bo'e $.

${
    nagihai.0 $e |- ko'a bo'a nagi'a bo'e $.
    $( Inference form of ~df-nagiha
       (Contributed by la korvo, 17-Aug-2023.) $)
    nagihai $p |- ganai ko'a bo'a gi ko'a bo'e $=
      ( tnagiha btb bgan df-nagiha bi ) ABCEFABFACFGDABCHI $.
$}

${
    nagihaii.0 $e |- ko'a bo'a nagi'a bo'e $.
    nagihaii.1 $e |- ko'a bo'a $.
    $( Inference form of ~df-nagiha
       (Contributed by la korvo, 17-Aug-2023.) $)
    nagihaii $p |- ko'a bo'e $=
      ( btb nagihai ax-mp ) ABFACFEABCDGH $.
$}

${
    nagihari.0 $e |- ganai ko'a bo'a gi ko'a bo'e $.
    $( Inference form of ~df-nagiha
       (Contributed by la korvo, 17-Aug-2023.) $)
    nagihari $p |- ko'a bo'a nagi'a bo'e $=
      ( btb bgan tnagiha df-nagiha bi-rev ) ABEACEFABCGEDABCHI $.
$}

$(
=-=-=
{gi'anai}
=-=-=
$)

$c gi'anai $.
tgihanai $a brirebla bo'a gi'anai bo'e $.

$( Definition of {` gi'anai `} in terms of {` ganai `}. $)
df-gihanai $a |- go ko'a bo'e gi'anai bo'a gi ganai ko'a bo'a gi ko'a bo'e $.

${
    gihanaii.0 $e |- ko'a bo'e gi'anai bo'a $.
    $( Inference form of ~df-gihanai
       (Contributed by la korvo, 16-Aug-2023.) $)
    gihanaii $p |- ganai ko'a bo'a gi ko'a bo'e $=
      ( tgihanai btb bgan df-gihanai bi ) ACBEFABFACFGDABCHI $.
$}

${
    gihanaiii.0 $e |- ko'a bo'e gi'anai bo'a $.
    gihanaiii.1 $e |- ko'a bo'a $.
    $( Inference form of ~df-gihanai
       (Contributed by la korvo, 16-Aug-2023.) $)
    gihanaiii $p |- ko'a bo'e $=
      ( btb gihanaii ax-mp ) ABFACFEABCDGH $.
$}

${
    gihanairi.0 $e |- ganai ko'a bo'e gi ko'a bo'a $.
    $( Inference form of ~df-gihanai
       (Contributed by la korvo, 16-Aug-2023.) $)
    gihanairi $p |- ko'a bo'a gi'anai bo'e $=
      ( btb bgan tgihanai df-gihanai bi-rev ) ACEABEFABCGEDACBHI $.
$}

$(
#*#*#
Conjunctions II
#*#*#
$)

$(
=-=-=
More facts about {ge}
=-=-=
$)

$( Lemma for ~ge-com showing that {` ge `} is commutative in one direction.
   (Contributed by la korvo, 31-Jul-2023.) $)
ge-com-lem $p |- ganai ge broda gi brode gi ge brode gi broda $=
  ( bge ge-in-swap12 cur ) ABBACABDE $.

$( {` ge `} is commutative.
   (Contributed by la korvo, 31-Jul-2023.) $)
ge-com $p |- go ge broda gi brode gi ge brode gi broda $=
  ( bge ge-com-lem gorii ) ABCBACABDBADE $.

$(
=-=-=
{.e}
=-=-=
$)

$c .e $.
sje $a sumti ko'a .e ko'e $.

$( Definition of {` .e `} in terms of {` ge `}. Forethought version of
   example 12.2-5 from [CLL] p. 14. $)
df-e $a |- go ko'a .e ko'e bo'a gi ge ko'a bo'a gi ko'e bo'a $.

${
    ei.0 $e |- ko'a .e ko'e bo'a $.
    $( Inference form of ~df-e
       (Contributed by la korvo, 17-Jul-2023.) $)
    ei $p |- ge ko'a bo'a gi ko'e bo'a $=
      ( sje btb bge df-e bi ) ABECFACFBCFGDABCHI $.
$}

${
    eri.0 $e |- ge ko'a bo'a gi ko'e bo'a $.
    $( Reverse inference form of ~df-e
       (Contributed by la korvo, 17-Jul-2023.) $)
    eri $p |- ko'a .e ko'e bo'a $=
      ( btb bge sje df-e bi-rev ) ACEBCEFABGCEDABCHI $.
$}

$(
=-=-=
{je}
=-=-=
$)

$c je $.
sbje $a selbri bu'a je bu'e $.

$( Definition of {` je `} in terms of {` ge `}. From example 12.2-5 of [CLL] p. 14. $)
df-je $a |- go ko'a bu'a je bu'e ko'e gi ge ko'a bu'a ko'e gi ko'a bu'e ko'e $.

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
=-=-=
{gi'e}
=-=-=
$)

$c gi'e $.
tgihe $a brirebla bo'a gi'e bo'e $.

$( Definition of {` gi'e `} in terms of {` ge `}. $)
df-gihe $a |- go ko'a bo'a gi'e bo'e gi ge ko'a bo'a gi ko'a bo'e $.

${
    gihei.0 $e |- ko'a bo'a gi'e bo'e $.
    $( Inference form of ~df-gihe
       (Contributed by la korvo, 14-Aug-2023.) $)
    gihei $p |- ge ko'a bo'a gi ko'a bo'e $=
      ( tgihe btb bge df-gihe bi ) ABCEFABFACFGDABCHI $.
$}

${
    giheri.0 $e |- ge ko'a bo'a gi ko'a bo'e $.
    $( Inference form of ~df-gihe
       (Contributed by la korvo, 14-Aug-2023.) $)
    giheri $p |- ko'a bo'a gi'e bo'e $=
      ( btb bge tgihe df-gihe bi-rev ) ABEACEFABCGEDABCHI $.
$}

${
    giherii.0 $e |- ko'a bo'a $.
    giherii.1 $e |- ko'a bo'e $.
    $( Inference form of ~df-gihe
       (Contributed by la korvo, 14-Aug-2023.) $)
    giherii $p |- ko'a bo'a gi'e bo'e $=
      ( btb ge-ini giheri ) ABCABFACFDEGH $.
$}

$(
#*#*#
Disjunctions: {ga}, {.a}, {ja}, {gi'a}
#*#*#

Disjunctions are the first connective for which we can introduce all four
forms simultaneously. The {` ga `} form is fundamental in our syntax, since it
gives the best scoping; but we define all of the other forms so that we have
them available for sugar later.
$)

$(
=-=-=
{ga}
=-=-=
$)

$c ga $.
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

$( Reverse implication of ~df-ga
   (Contributed by la korvo, 31-Jul-2023.) $)
gar $p |- ganai ge ganai brode gi broda gi ganai brodi gi broda
  gi ganai ga brode gi brodi gi broda $=
  ( bga bgan bge df-ga bi-rev-syl ) BCDAEBAECAEFABCGH $.

${
    gari.0 $e |- ge ganai brode gi broda gi ganai brodi gi broda $.
    $( Reverse inference form of ~df-ga
       (Contributed by la korvo, 28-Jul-2023.) $)
    gari $p |- ganai ga brode gi brodi gi broda $=
      sbb2 sbb1 bgan sbb3 sbb1 bgan bge sbb2 sbb3 bga sbb1 bgan gari.0 sbb1
      sbb2 sbb3 df-ga bi-rev $.
$}

$( Introduce {` ga `} with the antecedent on the left. Known as "orc" in
   iset.mm.
   (Contributed by la korvo, 31-Jul-2023.) $)
ga-lin $p |- ganai broda gi ga broda gi brode $=
  ( bga bgan bge id df-ga bi ge-lei ) AABCZDZBJDZJJDKLEJFJABGHI $.

$( Introduce {` ga `} with the antecedent on the right. Known as "olc" in
   iset.mm.
   (Contributed by la korvo, 31-Jul-2023.) $)
ga-rin $p |- ganai broda gi ga brode gi broda $=
  ( bga bgan bge id df-ga bi ge-rei ) BBACZDZAJDZJJDKLEJFJBAGHI $.

${
    garii.0 $e |- ganai broda gi brode $.
    garii.1 $e |- ganai brodi gi brode $.
    $( Nested inference form of ~gar
       (Contributed by la korvo, 31-Jul-2023.) $)
    garii $p |- ganai ga broda gi brodi gi brode $=
      ( bgan bga gar mp2an ) ABFCBFACGBFDEBACHI $.
$}

$( Lemma for ~ga-com
   (Contributed by la korvo, 31-Jul-2023.) $)
ga-com-lem $p |- ganai ga broda gi brode gi ga brode gi broda $=
  ( bga ga-rin ga-lin garii ) ABACBABDBAEF $.

$( {` ga `} commutes.
   (Contributed by la korvo, 31-Jul-2023.) $)
ga-com $p |- go ga broda gi brode gi ga brode gi broda $=
  ( bga ga-com-lem gorii ) ABCBACABDBADE $.

$(
=-=-=
{.a}
=-=-=
$)

$c .a $.
sja $a sumti ko'a .a ko'e $.

$( Definition of {` .a `} in terms of {` ga `}. Forethought version of
   example 12.2-5 from [CLL] p. 14. $)
df-a $a |- go ko'a .a ko'e bo'a gi ga ko'a bo'a gi ko'e bo'a $.

${
    ai.0 $e |- ko'a .a ko'e bo'a $.
    $( Inference form of ~df-a
       (Contributed by la korvo, 14-Aug-2023.) $)
    ai $p |- ga ko'a bo'a gi ko'e bo'a $=
      ( sja btb bga df-a bi ) ABECFACFBCFGDABCHI $.
$}

${
    ari.0 $e |- ga ko'a bo'a gi ko'e bo'a $.
    $( Inference form of ~df-a
       (Contributed by la korvo, 14-Aug-2023.) $)
    ari $p |- ko'a .a ko'e bo'a $=
      ( btb bga sja df-a bi-rev ) ACEBCEFABGCEDABCHI $.
$}

$( {` .a `} commutes.
   (Contributed by la korvo, 17-Aug-2023.) $)
a-com $p |- go ko'a .a ko'e bo'a gi ko'e .a ko'a bo'a $=
  ( sja btb bga df-a ga-com go-trans go-comi ) ABDCEACEZBCEZFZBADCEZABCGNMNLKFM
  BACGLKHIJI $.

${
    a-comi.0 $e |- ko'a .a ko'e bo'a $.
    $( Inference form of ~a-com $)
    a-comi $p |- ko'e .a ko'a bo'a $=
      ( sja btb a-com bi ) ABECFBAECFDABCGH $.
$}

$(
=-=-=
{ja}
=-=-=
$)

$c ja $.
sbja $a selbri bu'a ja bu'e $.

$( Definition of {` ja `} in terms of {` ga `}. From example 12.2-5 of [CLL] p. 14. $)
df-ja $a |- go ko'a bu'a ja bu'e ko'e gi ga ko'a bu'a ko'e gi ko'a bu'e ko'e $.

${
    jai.0 $e |- ko'a bu'a ja bu'e ko'e $.
    $( Inference form of ~df-ja
       (Contributed by la korvo, 16-Aug-2023.) $)
    jai $p |- ga ko'a bu'a ko'e gi ko'a bu'e ko'e $=
      ( sbja bb bga df-ja bi ) ABCDFGABCGABDGHEABCDIJ $.
$}

${
    jari.0 $e |- ga ko'a bu'a ko'e gi ko'a bu'e ko'e $.
    $( Reverse inference form of ~df-ja
       (Contributed by la korvo, 16-Aug-2023.) $)
    jari $p |- ko'a bu'a ja bu'e ko'e $=
      ( bb bga sbja df-ja bi-rev ) ABCFABDFGABCDHFEABCDIJ $.
$}

$(
=-=-=
{gi'a}
=-=-=
$)

$c gi'a $.
tgiha $a brirebla bo'a gi'a bo'e $.

$( Definition of {` gi'a `} in terms of {` ga `}. $)
df-giha $a |- go ko'a bo'a gi'a bo'e gi ga ko'a bo'a gi ko'a bo'e $.

${
    gihai.0 $e |- ko'a bo'a gi'a bo'e $.
    $( Inference form of ~df-giha
       (Contributed by la korvo, 14-Aug-2023.) $)
    gihai $p |- ga ko'a bo'a gi ko'a bo'e $=
      ( tgiha btb bga df-giha bi ) ABCEFABFACFGDABCHI $.
$}

${
    gihari.0 $e |- ga ko'a bo'a gi ko'a bo'e $.
    $( Inference form of ~df-giha
       (Contributed by la korvo, 14-Aug-2023.) $)
    gihari $p |- ko'a bo'a gi'a bo'e $=
      ( btb bga tgiha df-giha bi-rev ) ABEACEFABCGEDABCHI $.
$}

$(
#*#*#
Biconditionals II
#*#*#
$)

$(
=-=-=
{.o}
=-=-=
$)

$c .o $.
sjo $a sumti ko'a .o ko'e $.

$( Definition of {` .o `} in terms of {` go `}. By analogy with forethought
   version of example 12.2-5 from [CLL] p. 14. $)
df-o $a |- go ko'a .o ko'e bo'a gi go ko'a bo'a gi ko'e bo'a $.

${
    oi.0 $e |- ko'a .o ko'e bo'a $.
    $( Inference form of ~df-o
       (Contributed by la korvo, 9-Aug-2023.) $)
    oi $p |- go ko'a bo'a gi ko'e bo'a $=
      ( sjo btb bgo df-o bi ) ABECFACFBCFGDABCHI $.
$}

${
    ori.0 $e |- go ko'a bo'a gi ko'e bo'a $.
    $( Reverse inference form of ~df-o
       (Contributed by la korvo, 9-Aug-2023.) $)
    ori $p |- ko'a .o ko'e bo'a $=
      ( btb bgo sjo df-o bi-rev ) ACEBCEFABGCEDABCHI $.
$}

$( {` .o `} commutes.
   (Contributed by la korvo, 14-Aug-2023.) $)
o-com $p |- go ko'a .o ko'e bo'a gi ko'e .o ko'a bo'a $=
  ( sjo btb bgo df-o go-com go-trans go-comi ) ABDCEACEZBCEZFZBADCEZABCGNMNLKFM
  BACGLKHIJI $.

${
    o-comi.0 $e |- ko'a .o ko'e bo'a $.
    $( Inference form of ~o-com
       (Contributed by la korvo, 16-Jul-2023.) $)
    o-comi $p |- ko'e .o ko'a bo'a $=
      ( sjo btb o-com bi ) ABECFBAECFDABCGH $.
$}

$(
=-=-=
{jo}
=-=-=
$)

$c jo $.
sbjo $a selbri bu'a jo bu'e $.

$( Definition of {` jo `} in terms of {` go `}. By analogy with
   example 12.2-5 of [CLL] p. 14. $)
df-jo $a |- go ko'a bu'a jo bu'e ko'e gi go ko'a bu'a ko'e gi ko'a bu'e ko'e $.

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

$(
=-=-=
{gi'o}
=-=-=
$)

$c gi'o $.
tgiho $a brirebla bo'a gi'o bo'e $.

$( Definition of {` gi'o `} in terms of {` go `}. $)
df-giho $a |- go ko'a bo'a gi'o bo'e gi go ko'a bo'a gi ko'a bo'e $.

${
    gihoi.0 $e |- ko'a bo'a gi'o bo'e $.
    $( Inference form of ~df-giho
       (Contributed by la korvo, 14-Aug-2023.) $)
    gihoi $p |- go ko'a bo'a gi ko'a bo'e $=
      ( tgiho btb bgo df-giho bi ) ABCEFABFACFGDABCHI $.
$}

${
    gihori.0 $e |- go ko'a bo'a gi ko'a bo'e $.
    $( Inference form of ~df-giho
       (Contributed by la korvo, 14-Aug-2023.) $)
    gihori $p |- ko'a bo'a gi'o bo'e $=
      ( btb bgo tgiho df-giho bi-rev ) ABEACEFABCGEDABCHI $.
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
    brd.0 $e bridi broda $.
    $( Syntax for first-order universal quantification. $)
    brd $a bridi ro da zo'u broda $.
$}

${
    brb.0 $e bridi broda $.
    $( Syntax for second-order universal quantification. $)
    brb $a bridi ro bu'a zo'u broda $.
$}

${
    ax-gen1.0 $e |- broda $.
    $( Axiom of first-order generalization. $)
    ax-gen1 $a |- ro da zo'u broda $.
$}

${
    ax-gen2.0 $e |- broda $.
    $( Axiom of second-order generalization. $)
    ax-gen2 $a |- ro bu'a zo'u broda $.
$}

${
    ax-ro-inst-2u.0 $e selbri bu'a $.
    ax-ro-inst-2u.1 $e |- ro bu'e zo'u ko'a bu'e $.
    $( {` ro bu'a `} may be instantiated with any selbri. As
       example 13.3 of [CLL] p. 16 notes, this will be of limited use, and is
       included largely to allow for a second-order definition of equality. $)
    ax-ro-inst-2u $a |- ko'a bu'a $.
$}

${
    ax-ro-inst-1u.0 $e sumti ko'a $.
    ax-ro-inst-1u.1 $e |- ro da zo'u da bo'a $.
    $( {` ro da `} may be instantiated with any sumti. $)
    ax-ro-inst-1u $a |- ko'a bo'a $.
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

${
    ro-bi-rev.0 $e |- ro bu'a zo'u broda $.
    ro-bi-rev.1 $e |- go brode gi broda $.
    $( Biconditional modus ponens under {` ro bu'a `}.
       (Contributed by la korvo, 16-Aug-2023.) $)
    ro-bi-rev $p |- ro bu'a zo'u brode $=
      ( go-comi golili ax-ro-mp ) ABCDABBAEFGH $.
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

$( Because {` du `} is an equivalence, it is reflexive. $)
ax-du-refl $a |- ko'a du ko'a $.

$( {` du `} is reflexive.
   (Contributed by la korvo, 16-Aug-2023.) $)
du-refl $p |- ko'a du ko'a $=
  ( ax-du-refl ) AB $.

${
    ax-du-trans.0 $e |- ko'a du ko'e $.
    ax-du-trans.1 $e |- ko'e du ko'i $.
    $( Because {` du `} is an equivalence, it is transitive. $)
    ax-du-trans $a |- ko'a du ko'i $.
$}

${
    du-trans.0 $e |- ko'a du ko'e $.
    du-trans.1 $e |- ko'e du ko'i $.
    $( {` du `} is transitive.
       (Contributed by la korvo, 16-Aug-2023.) $)
    du-trans $p |- ko'a du ko'i $=
      ( ax-du-trans ) ABCDEF $.
$}

${
    ax-du-sym.0 $e |- ko'a du ko'e $.
    $( Because {` du `} is an equivalence, it is symmetric. $)
    ax-du-sym $a |- ko'e du ko'a $.
$}

${
    du-sym.0 $e |- ko'a du ko'e $.
    $( {` du `} is symmetric.
       (Contributed by la korvo, 16-Aug-2023.) $)
    du-sym $p |- ko'e du ko'a $=
      ( ax-du-sym ) ABCD $.
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
  wk1 wk1 sbdu bb bceihi wk1 du-refl wk1 df-ceihi bi-rev $.

$(
#*#*#
Negation I: {gai'o}, {naku}
#*#*#

Lojban classically contains a {` na `} which may slide around in a prenex and
between connectives. To be constructive, we will more carefully introduce
{` naku `} negation within the prenex first, and then justify various
simplifications and rearrangements.
$)

$c gai'o naku $.

bgaiho $a bridi gai'o $.

${
    bnk.0 $e bridi broda $.
    $( Syntax for negation over an empty row of quantifiers. $)
    bnk $a bridi naku zo'u broda $.
$}

$( Traditional definition of intuitionistic negation. $)
df-naku $a |- go naku zo'u broda gi ganai broda gi gai'o $.

$( Uncurried form of ~df-naku
   (Contributed by la korvo, 20-Aug-2023.) $)
naku-uncur $p |- ganai ge naku zo'u broda gi broda gi gai'o $=
  ( bnk bgaiho bgan df-naku golili cur ) AABZACHACDAEFG $.

${
    lnc.0 $e |- ge broda gi naku zo'u broda $.
    $( The law of non-contradiction. No bridi is simultaneously inhabited and
       uninhabited.
       (Contributed by la korvo, 20-Aug-2023.) $)
    lnc $p |- gai'o $=
      ( bnk bge bgaiho ge-com bi naku-uncur ax-mp ) AACZADZEAJDKBAJFGAHI $.
$}

${
    nakui.0 $e |- naku zo'u broda $.
    $( Inference form of ~df-naku
       (Contributed by la korvo, 9-Aug-2023.) $)
    nakui $p |- ganai broda gi gai'o $=
      ( bnk bgaiho bgan df-naku bi ) AACADEBAFG $.
$}

${
    nakuii.0 $e |- naku zo'u broda $.
    nakuii.1 $e |- broda $.
    $( Inference form of ~df-naku
       (Contributed by la korvo, 9-Aug-2023.) $)
    nakuii $p |- gai'o $=
      ( bgaiho nakui ax-mp ) ADCABEF $.
$}

${
    nakuri.0 $e |- ganai broda gi gai'o $.
    $( Reverse inference form of ~df-naku
       (Contributed by la korvo, 9-Aug-2023.) $)
    nakuri $p |- naku zo'u broda $=
      ( bgaiho bgan bnk df-naku bi-rev ) ACDAAEBAFG $.
$}

$( {` gai'o `} is uninhabited.
   (Contributed by la korvo, 9-Aug-2023.) $)
na-gaiho $p |- naku zo'u gai'o $=
  ( bgaiho id nakuri ) AABC $.

$( The principle of self-defeating objects. If an object's existence would
   imply that it doesn't exist -- usually via contradiction -- then it doesn't
   exist. As a special case, if some tuple's membership in a relation would
   imply non-membership in that relation, then it's not a member. For a survey
   of this principle across maths, see [Tao]. This is known as "ax-in1" in
   iset.mm. $)
ax-sdo $a |- ganai ganai broda gi naku zo'u broda gi naku zo'u broda $.

${
    sdoi.0 $e |- ganai broda gi naku zo'u broda $.
    $( Inference form of ~ax-sdo
       (Contributed by la korvo, 9-Aug-2023.) $)
    sdoi $p |- naku zo'u broda $=
      ( bnk bgan ax-sdo ax-mp ) AAACZDGBAEF $.
$}

$(
#*#*#
Mutual exclusion I
#*#*#

The final of our five essential connectives. As with disjunctions, we can
introduce all versions of mutual exclusion at once.
$)

$(
=-=-=
{gonai}
=-=-=
$)

$c gonai $.
bgon $a bridi gonai broda gi brode $.

$( Standard constructive definition of mutual exclusion ("the exclusive OR"),
   based on the mnemonic given to computer scientists in the USA and UK:
   "It's cake or tea, but not cake and tea." This is also the definition used
   in "df-xor" of iset.mm. $)
df-gonai $a |- go gonai broda gi brode
  gi ge ga broda gi brode gi naku zo'u ge broda gi brode $.

${
    gonaii.0 $e |- gonai broda gi brode $.
    $( Inference form of ~df-gonai
       (Contributed by la korvo, 8-Aug-2023.) $)
    gonaii $p |- ge ga broda gi brode gi naku zo'u ge broda gi brode $=
      ( bgon bga bge bnk df-gonai bi ) ABDABEABFZJGFCABHI $.
$}

${
    gonaiil.0 $e |- gonai broda gi brode $.
    $( Inference form of ~df-gonai
       (Contributed by la korvo, 8-Aug-2023.) $)
    gonaiil $p |- ga broda gi brode $=
      ( bga bge bnk gonaii ge-lei ) ABDABEZIFABCGH $.
$}

${
    gonaiir.0 $e |- gonai broda gi brode $.
    $( Inference form of ~df-gonai
       (Contributed by la korvo, 8-Aug-2023.) $)
    gonaiir $p |- naku zo'u ge broda gi brode $=
      ( bga bge bnk gonaii ge-rei ) ABDABEZIFABCGH $.
$}

${
    gonairi.0 $e |- ge ga broda gi brode gi naku zo'u ge broda gi brode $.
    $( Reverse inference form of ~df-gonai
       (Contributed by la korvo, 8-Aug-2023.) $)
    gonairi $p |- gonai broda gi brode $=
      ( bga bge bnk bgon df-gonai bi-rev ) ABDABEZJFEABGCABHI $.
$}

$(
=-=-=
{.onai}
=-=-=
$)

$c .onai $.
sjonai $a sumti ko'a .onai ko'e $.

$( Definition of {` .onai `} in terms of {` gonai `}. By analogy with forethought
   version of example 12.2-5 from [CLL] p. 14. $)
df-onai $a |- go ko'a .onai ko'e bo'a gi gonai ko'a bo'a gi ko'e bo'a $.

${
    onaii.0 $e |- ko'a .onai ko'e bo'a $.
    $( Inference form of ~df-onai
       (Contributed by la korvo, 16-Aug-2023.) $)
    onaii $p |- gonai ko'a bo'a gi ko'e bo'a $=
      ( sjonai btb bgon df-onai bi ) ABECFACFBCFGDABCHI $.
$}

${
    onairi.0 $e |- gonai ko'a bo'a gi ko'e bo'a $.
    $( Reverse inference form of ~df-onai
       (Contributed by la korvo, 16-Aug-2023.) $)
    onairi $p |- ko'a .onai ko'e bo'a $=
      ( btb bgon sjonai df-onai bi-rev ) ACEBCEFABGCEDABCHI $.
$}

$(
=-=-=
{jonai}
=-=-=
$)

$c jonai $.
sbjonai $a selbri bu'a jonai bu'e $.

$( Definition of {` jonai `} in terms of {` gonai `}. By analogy with
   example 12.2-5 of [CLL] p. 14. $)
df-jonai $a |- go ko'a bu'a jonai bu'e ko'e gi gonai ko'a bu'a ko'e gi ko'a bu'e ko'e $.

${
    jonaii.0 $e |- ko'a bu'a jonai bu'e ko'e $.
    $( Inference form of ~df-jonai
       (Contributed by la korvo, 16-Aug-2023.) $)
    jonaii $p |- gonai ko'a bu'a ko'e gi ko'a bu'e ko'e $=
      ( sbjonai bb bgon df-jonai bi ) ABCDFGABCGABDGHEABCDIJ $.
$}

${
    jonairi.0 $e |- gonai ko'a bu'a ko'e gi ko'a bu'e ko'e $.
    $( Reverse inference form of ~df-jonai
       (Contributed by la korvo, 16-Aug-2023.) $)
    jonairi $p |- ko'a bu'a jonai bu'e ko'e $=
      ( bb bgon sbjonai df-jonai bi-rev ) ABCFABDFGABCDHFEABCDIJ $.
$}

$(
=-=-=
{gi'onai}
=-=-=
$)

$c gi'onai $.
tgihonai $a brirebla bo'a gi'onai bo'e $.

$( Definition of {` gi'onai `} in terms of {` gonai `}. $)
df-gihonai $a |- go ko'a bo'a gi'onai bo'e gi gonai ko'a bo'a gi ko'a bo'e $.

${
    gihonaii.0 $e |- ko'a bo'a gi'onai bo'e $.
    $( Inference form of ~df-gihonai
       (Contributed by la korvo, 14-Aug-2023.) $)
    gihonaii $p |- gonai ko'a bo'a gi ko'a bo'e $=
      ( tgihonai btb bgon df-gihonai bi ) ABCEFABFACFGDABCHI $.
$}

${
    gihonairi.0 $e |- gonai ko'a bo'a gi ko'a bo'e $.
    $( Inference form of ~df-gihonai
       (Contributed by la korvo, 14-Aug-2023.) $)
    gihonairi $p |- ko'a bo'a gi'onai bo'e $=
      ( btb bgon tgihonai df-gihonai bi-rev ) ABEACEFABCGEDABCHI $.
$}

$(
#*#*#
Extra connectives
#*#*#
$)

$(
=-=-=
{ginai}
=-=-=
$)

$c ginai $.
bgagin $a bridi ga broda ginai brode $.
bgogin $a bridi go broda ginai brode $.

df-ginai-ga $a |- go ga brode ginai broda gi ganai broda gi brode $.
df-ginai-go $a |- go go broda ginai brode gi gonai broda gi brode $.

$(
#####
NON-LOGICAL CONNECTIVES
#####

We build the various non-logical connectives, which express combinations of
elements of relations beyond truth tables. In particular, we develop the
notion of set membership.
$)

$(
#*#*#
Sets I: {nomei}, {pamei}
#*#*#
$)

$(
=-=-=
{cmima}
=-=-=
$)

$c cmima $.

sbcmima $a selbri cmima $.

$(
=-=-=
{nomei}
=-=-=
$)

$c le nomei $.

snomei $a sumti le nomei $.

$( {` le nomei `} is the empty set. Literally it is the set with zero
cardinality. By standard folklore of sets, it is unique up to isomorphism,
justifying {` le `}. $)
df-nomei $a |- naku zo'u ko'a cmima le nomei $.

${
    nomei-gaiho.0 $e |- ko'a cmima le nomei $.
    $( If the empty set is inhabited, then there is a contradiction.
       (Contributed by la korvo, 16-May-2024.) $)
    nomei-gaiho $p |- gai'o $=
      ( snomei sbcmima bb df-nomei nakuii ) ACDEAFBG $.
$}

$(
=-=-=
{pamei}
=-=-=
$)

$c pamei $.

sbpamei $a selbri pamei $.

$( The singleton set is the unique set whose elements are all isomorphic.
   Since we use the full semantics of second-order logic, we cannot construct
   the witness isomorphisms. As a compromise, we construct the isomorphism
   between any two elements of any particular singleton set. $)
df-pamei $a |- go ko'a pamei ko'e .e ko'i gi ko'e du ko'i $.

${
    pameii.0 $e |- ko'a pamei ko'e .e ko'i $.
    $( Inference form of ~df-pamei
       (Contributed by la korvo, 16-May-2024.) $)
    pameii $p |- ko'e du ko'i $=
      ( sje sbpamei bb sbdu df-pamei bi ) ABCEFGBCHGDABCIJ $.
$}

${
    pameiii.0 $e |- ko'a pamei ko'e $.
    pameiii.1 $e |- ko'a pamei ko'i $.
    $( Inference form of ~df-pamei
       (Contributed by la korvo, 16-May-2024.) $)
    pameiii $p |- ko'e du ko'i $=
      ( sje sbpamei sbs tsb tss bb seri ge-ini eri sei pameii ) ABCABCFGBCAGHZI
      ZRJBAQKCAQKABGDLACGELMNOP $.
$}

$( The singleton set has one element. $)
ax-pamei-cmima $a |- ganai ko'a pamei ko'e gi ko'e cmima ko'a $.

$(
#*#*#
Internal hom I
#*#*#

The internal hom is the syntax which internalizes relations. We define
{` ka `} abstractions as well as several useful gismu for accessing the
contents of those abstractions. Our approach uses {` pa ka `} quantification
in acknowledgement of isomorphism-invariance.
$)

$(
=-=-=
{ka}
=-=-=
$)

$c pa ka ce'u kei $.

sc $a sumti ce'u $.

$( If {` bo'a `} is a brirebla, then filling its first place with a sumti and
   wrapping it with {` pa ka `} yields sumti. $)
spk $a sumti pa ka ko'a bo'a kei $.

$(
=-=-=
{ckaji}
=-=-=
$)

$c ckaji $.

sbckaji $a selbri ckaji $.

$( {` ckaji `} is often found with this conjugation.
   (Contributed by la korvo, 14-Aug-2023.) $)
bckaji $p bridi ko'a ckaji pa ka ce'u bo'a kei $=
  ( sc spk sbckaji bb ) ACBDEF $.

$( Definition of {` ckaji `} from {` ka `}. Based on example 4.1-2 of [CLL] p. 11. $)
df-ckaji $a |- go ko'a ckaji pa ka ce'u bo'a kei gi ko'a bo'a $.

${
    ckajii.0 $e |- ko'a ckaji pa ka ce'u bo'a kei $.
    $( Inference form of ~df-ckaji
       (Contributed by la korvo, 17-Jul-2023.) $)
    ckajii $p |- ko'a bo'a $=
      ( bckaji btb df-ckaji bi ) ABDABECABFG $.
$}

${
    ckajiri.0 $e |- ko'a bo'a $.
    $( Reverse inference form of ~df-ckaji
       (Contributed by la korvo, 17-Jul-2023.) $)
    ckajiri $p |- ko'a ckaji pa ka ce'u bo'a kei $=
      ( btb bckaji df-ckaji bi-rev ) ABDABECABFG $.
$}

$(
=-=-=
{ckini}
=-=-=
$)

$c ckini $.

sbckini $a selbri ckini $.

$( {` ckini `} is often found with this conjugation.
   (Contributed by la korvo, 14-Aug-2023.) $)
bckini $p bridi ko'a ckini ko'e pa ka ce'u bu'a ce'u kei $=
  ( sc tsb tss spk sbckini bt ) ABDDCEZJFGHI $.

df-ckini $a |- go ko'a ckini ko'e pa ka ce'u bu'a ce'u kei gi ko'a bu'a ko'e $.

${
    ckinii.0 $e |- ko'a ckini ko'e pa ka ce'u bu'a ce'u kei $.
    $( Inference form of ~df-ckini
       (Contributed by la korvo, 17-Jul-2023.) $)
    ckinii $p |- ko'a bu'a ko'e $=
      wk1 wk2 sbba bckini wk1 wk2 sbba bb ckinii.0 wk1 wk2 sbba df-ckini bi $.
$}

${
    ckiniri.0 $e |- ko'a bu'a ko'e $.
    $( Reverse inference form of ~df-ckini
       (Contributed by la korvo, 17-Jul-2023.) $)
    ckiniri $p |- ko'a ckini ko'e pa ka ce'u bu'a ce'u kei $=
      wk1 wk2 sbba bb wk1 wk2 sbba bckini ckiniri.0 wk1 wk2 sbba df-ckini
      bi-rev $.
$}

${
    ckini-se.0 $e |- ko'a ckini ko'e pa ka ce'u bu'a ce'u kei $.
    $( {` se `} can be inserted underneath ckini3.
       (Contributed by la korvo, 12-Jul-2023.) $)
    ckini-se $p |- ko'e ckini ko'a pa ka ce'u se bu'a ce'u kei $=
      wk2 wk1 sbba sbs wk1 wk2 sbba wk1 wk2 sbba ckini-se.0 ckinii seri ckiniri
      $.
$}

$(
=-=-=
{simsa}
=-=-=
$)

$c simsa $.

sbsimsa $a selbri simsa $.

$( {` simsa `} is often found with this conjugation.
   (Contributed by la korvo, 6-Aug-2023.) $)
bsimsa $p bridi ko'a simsa ko'e pa ka ce'u bu'a kei $=
  ( sc tsb spk sbsimsa bt ) ABDCEFGH $.

df-simsa $a |- go ko'a simsa ko'e pa ka ce'u bu'a kei gi ge ko'a bu'a gi ko'e bu'a $.

${
    simsai.0 $e |- ko'a simsa ko'e pa ka ce'u bu'a kei $.
    $( Inference form of ~df-simsa
       (Contributed by la korvo, 6-Aug-2023.) $)
    simsai $p |- ge ko'a bu'a gi ko'e bu'a $=
      ( bsimsa bu bge df-simsa bi ) ABCEACFBCFGDABCHI $.
$}

${
    simsail.0 $e |- ko'a simsa ko'e pa ka ce'u bu'a kei $.
    $( Inference form of ~df-simsa
       (Contributed by la korvo, 6-Aug-2023.) $)
    simsail $p |- ko'a bu'a $=
      ( bu simsai ge-lei ) ACEBCEABCDFG $.
$}

${
    simsair.0 $e |- ko'a simsa ko'e pa ka ce'u bu'a kei $.
    $( Inference form of ~df-simsa
       (Contributed by la korvo, 6-Aug-2023.) $)
    simsair $p |- ko'e bu'a $=
      ( bu simsai ge-rei ) ACEBCEABCDFG $.
$}

${
    simsari.0 $e |- ge ko'a bu'a gi ko'e bu'a $.
    $( Reverse inference form of ~df-simsa
       (Contributed by la korvo, 6-Aug-2023.) $)
    simsari $p |- ko'a simsa ko'e pa ka ce'u bu'a kei $=
      ( bu bge bsimsa df-simsa bi-rev ) ACEBCEFABCGDABCHI $.
$}

${
    simsarii.0 $e |- ko'a bu'a $.
    simsarii.1 $e |- ko'e bu'a $.
    $( Reverse inference form of ~df-simsa
       (Contributed by la korvo, 6-Aug-2023.) $)
    simsarii $p |- ko'a simsa ko'e pa ka ce'u bu'a kei $=
      ( bu ge-ini simsari ) ABCACFBCFDEGH $.
$}

$( {` simsa `} is symmetric. $)
ax-simsa-sym $a |- go ko'a simsa ko'e ko'i gi ko'e simsa ko'a ko'i $.

$(
=-=-=
{steci}
=-=-=
$)

$c steci $.
sbsteci $a selbri steci $.

$( Definition of {` steci `} in terms of {` ckaji `} and {` cmima `}. $)
df-steci $a |-
  go ko'a steci ko'e ko'i
  gi ge ko'e ckaji ko'a gi ko'e cmima ko'i $.

${
    stecii.0 $e |- ko'a steci ko'e ko'i $.
    $( Inference form of ~df-steci
       (Contributed by la korvo, 17-Aug-2023.) $)
    stecii $p |- ge ko'e ckaji ko'a gi ko'e cmima ko'i $=
      ( sbsteci bt sbckaji bb sbcmima bge df-steci bi ) ABCEFBAGHBCIHJDABCKL $.
$}

${
    steciri.0 $e |- ge ko'e ckaji ko'a gi ko'e cmima ko'i $.
    $( Reverse inference form of ~df-steci
       (Contributed by la korvo, 17-Aug-2023.) $)
    steciri $p |- ko'a steci ko'e ko'i $=
      ( sbckaji bb sbcmima bge sbsteci bt df-steci bi-rev ) BAEFBCGFHABCIJDABCK
      L $.
$}

${
    stecirii.0 $e |- ko'e ckaji ko'a $.
    stecirii.1 $e |- ko'e cmima ko'i $.
    $( Reverse inference form of ~df-steci
       (Contributed by la korvo, 17-Aug-2023.) $)
    stecirii $p |- ko'a steci ko'e ko'i $=
      ( sbckaji bb sbcmima ge-ini steciri ) ABCBAFGBCHGDEIJ $.
$}

$(
=-=-=
{mupli}
=-=-=
$)

$c mupli $.

sbmupli $a selbri mupli $.

df-mupli $a |-
  go ko'a mupli ko'e ko'i
  gi ge ko'a ckaji ko'e gi ko'a cmima ko'i $.

${
    muplii.0 $e |- ko'a mupli ko'e ko'i $.
    $( Inference form of ~df-mupli
       (Contributed by la korvo, 23-Aug-2023.) $)
    muplii $p |- ge ko'a ckaji ko'e gi ko'a cmima ko'i $=
      ( sbmupli bt sbckaji bb sbcmima bge df-mupli bi ) ABCEFABGHACIHJDABCKL $.
$}

${
    muplili.0 $e |- ko'a mupli ko'e ko'i $.
    $( Inference form of ~df-mupli
       (Contributed by la korvo, 23-Aug-2023.) $)
    muplili $p |- ko'a ckaji ko'e $=
      ( sbckaji bb sbcmima sbmupli bt bge df-mupli bi ge-lei ) ABEFZACGFZABCHIN
      OJDABCKLM $.
$}

${
    mupliiri.0 $e |- ko'a mupli ko'e ko'i $.
    $( Inference form of ~df-mupli
       (Contributed by la korvo, 23-Aug-2023.) $)
    mupliiri $p |- ko'a cmima ko'i $=
      ( sbckaji bb sbcmima sbmupli bt bge df-mupli bi ge-rei ) ABEFZACGFZABCHIN
      OJDABCKLM $.
$}

${
    mupliri.0 $e |- ge ko'a ckaji ko'e gi ko'a cmima ko'i $.
    $( Reverse inference form of ~df-mupli
       (Contributed by la korvo, 23-Aug-2023.) $)
    mupliri $p |- ko'a mupli ko'e ko'i $=
      ( sbckaji bb sbcmima bge sbmupli bt df-mupli bi-rev ) ABEFACGFHABCIJDABCK
      L $.
$}

${
    muplirii.0 $e |- ko'a ckaji ko'e $.
    muplirii.1 $e |- ko'a cmima ko'i $.
    $( Reverse inference form of ~df-mupli
       (Contributed by la korvo, 23-Aug-2023.) $)
    muplirii $p |- ko'a mupli ko'e ko'i $=
      ( sbckaji bb sbcmima bge sbmupli bt ge-ini df-mupli bi-rev ) ABFGZACHGZIA
      BCJKOPDELABCMN $.
$}

$(
=-=-=
{simxu}
=-=-=
$)

$c simxu $.

sbsimxu $a selbri simxu $.

$( An alternate definition of {` simxu `} which doesn't use
   {` poi ke'a cmima `} for element selection. $)
df-simxu $a |- go ko'a simxu ko'e
  gi ro da zo'u ro de zo'u ganai da .e de cmima ko'a gi da ckini de ko'e $.

${
    simxui.0 $e |- ko'a simxu ko'e $.
    $( Inference form of ~df-simxu
       (Contributed by la korvo, 23-Aug-2023.) $)
    simxui $p |- ro da zo'u ro de zo'u
      ganai da .e de cmima ko'a gi da ckini de ko'e $=
      ( sbsimxu bb sje sbcmima sbckini bt bgan brd df-simxu bi ) ABFGCDHAIGCDBJ
      KLZDPMZCQMEABCDNO $.
$}

${
    simxuri.0 $e |- ro da zo'u ro de zo'u
      ganai da .e de cmima ko'a gi da ckini de ko'e $.
    $( Reverse inference form of ~df-simxu
       (Contributed by la korvo, 23-Aug-2023.) $)
    simxuri $p |- ko'a simxu ko'e $=
      ( sje sbcmima bb sbckini bt bgan brd sbsimxu df-simxu bi-rev ) CDFAGHCDBI
      JKZDPLZCQLABMHEABCDNO $.
$}

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
Pairing: {ce}
#*#*#
$)

$c ce $.
sce $a sumti ko'a ce ko'e $.

$( Tentative definition of {` ce `}. $)
df-ce $a |- go ko'a cmima ko'e ce ko'i gi ga ko'a du ko'e gi ko'a du ko'i $.

${
    cei.0 $e |- ko'a cmima ko'e ce ko'i $.
    $( Inference form of ~df-ce
       (Contributed by la korvo, 5-Aug-2023.) $)
    cei $p |- ga ko'a du ko'e gi ko'a du ko'i $=
      ( sce sbcmima bb sbdu bga df-ce bi ) ABCEFGABHGACHGIDABCJK $.
$}

${
    ceri.0 $e |- ga ko'a du ko'e gi ko'a du ko'i $.
    $( Reverse inference form of ~df-ce
       (Contributed by la korvo, 5-Aug-2023.) $)
    ceri $p |- ko'a cmima ko'e ce ko'i $=
      ( sbdu bb bga sce sbcmima df-ce bi-rev ) ABEFACEFGABCHIFDABCJK $.
$}

${
    ceri-lin.0 $e |- ko'a du ko'e $.
    $( Inference from composition of ~ga-lin and ~ceri
       (Contributed by la korvo, 5-Aug-2023.) $)
    ceri-lin $p |- ko'a cmima ko'e ce ko'i $=
      ( sbdu bb bga ga-lin ax-mp ceri ) ABCABEFZKACEFZGDKLHIJ $.
$}

${
    ceri-rin.0 $e |- ko'a du ko'i $.
    $( Inference from composition of ~ga-rin and ~ceri
       (Contributed by la korvo, 5-Aug-2023.) $)
    ceri-rin $p |- ko'a cmima ko'e ce ko'i $=
      ( sbdu bb bga ga-rin ax-mp ceri ) ABCACEFZABEFZKGDKLHIJ $.
$}

$( Assertion for left-hand component of a {` ce `} union.
   (Contributed by la korvo, 5-Aug-2023.) $)
ce-left $p |- ko'a cmima ko'a ce ko'e $=
  ( du-refl ceri-lin ) AABACD $.

$( Assertion for right-hand component of a {` ce `} union.
   (Contributed by la korvo, 5-Aug-2023.) $)
ce-right $p |- ko'e cmima ko'a ce ko'e $=
  ( du-refl ceri-rin ) BABBCD $.

$(
#*#*#
Existential quantifiers I: {su'o}
#*#*#
$)

$c su'o $.

${
    bsd.0 $e bridi broda $.
    $( Syntax for first-order existential quantification. $)
    bsd $a bridi su'o da zo'u broda $.
$}

${
    bsb.0 $e bridi broda $.
    $( Syntax for second-order existential quantification. $)
    bsb $a bridi su'o bu'a zo'u broda $.
$}

$( The axiom of existence: at least one element exists in the universe. This
   is necessary if we want to exclude the trivial empty model. This is "ax-i9"
   in iset.mm. $)
ax-ex $a |- su'o da zo'u da du de $.

$(
#*#*#
Relative clauses I: {poi}, {ke'a}, {ku'o}
#*#*#
$)

$c poi ke'a ku'o $.

${
    brdp.0 $e bridi ro da zo'u broda $.
    $( Restriction for first-order universal quantification. $)
    brdp $a bridi ro da poi ke'a bo'a ku'o zo'u broda $.
$}

${
    bsdp.0 $e bridi su'o da zo'u broda $.
    $( Restriction for first-order universal quantification. $)
    bsdp $a bridi su'o da poi ke'a bo'a ku'o zo'u broda $.
$}

$( Definition of {` ro da poi `} quantifiers as restricted first-order
   universal quantifiers. $)
df-poi-ro $a |-
  go ro da poi ke'a bu'a ku'o zo'u broda
  gi ro da zo'u ganai da bu'a gi broda $.

${
    poi-roi.0 $e |- ro da poi ke'a bu'a ku'o zo'u broda $.
    $( Inference form of ~df-poi-ro
       (Contributed by la korvo, 11-Aug-2023.) $)
    poi-roi $p |- ro da zo'u ganai da bu'a gi broda $=
      ( tsb brd brdp bu bgan df-poi-ro bi ) ABECACAFGCBHAIZCLFDABCJK $.
$}

${
    poi-rori.0 $e |- ro da zo'u ganai da bu'a gi broda $.
    $( Inference form of ~df-poi-ro
       (Contributed by la korvo, 11-Aug-2023.) $)
    poi-rori $p |- ro da poi ke'a bu'a ku'o zo'u broda $=
      ( bu bgan brd tsb brdp df-poi-ro bi-rev ) CBEAFZCLGABHCACAGIDABCJK $.
$}

$c cu $.
brbc $a bridi ro bu'a cu bu'e $.

$( Definition of {` ro broda `} quantifier as used in colloquial Lojban
   utterances like {` ro broda cu brode `}. $)
df-ro-quant $a |-
  go ro bu'a cu bu'e
  gi ro da poi ke'a bu'a ku'o zo'u da bu'e $.

${
    ro-quanti.0 $e |- ro bu'a cu bu'e $.
    $( Inference form of ~df-ro-quant
       (Contributed by la korvo, 12-Sep-2023.) $)
    ro-quanti $p |- ro da poi ke'a bu'a ku'o zo'u da bu'e $=
      ( brbc bu tsb brd brdp df-ro-quant bi ) ABECBFZAGCLCLHIDABCJK $.
$}

${
    ro-quantri.0 $e |- ro da poi ke'a bu'a ku'o zo'u da bu'e $.
    $( Reverse inference form of ~df-ro-quant
       (Contributed by la korvo, 12-Sep-2023.) $)
    ro-quantri $p |- ro bu'a cu bu'e $=
      ( bu tsb brd brdp brbc df-ro-quant bi-rev ) CBEZAFCLCLGHABIDABCJK $.
$}

$(
#*#*#
Internal hom II: {kampu}
#*#*#
$)

$(
=-=-=
{kampu}
=-=-=
$)

$c kampu $.
sbkampu $a selbri kampu $.

$( Definition of {` kampu `} in terms of {` ckaji `} and {` cmima `}. $)
df-kampu $a |-
  go ko'a kampu ko'e
  gi ro da poi ke'a cmima ko'e ku'o zo'u da ckaji ko'a $.

${
    kampui.0 $e |- ko'a kampu ko'e $.
    $( Inference form of ~df-kampu
       (Contributed by la korvo, 17-Aug-2023.) $)
    kampui $p |- ro da poi ke'a cmima ko'e ku'o zo'u da ckaji ko'a $=
      ( sbkampu bb sbckaji sbcmima tsb tss brd brdp df-kampu bi ) ABEFCAGFZBHIZ
      PJCOCOKLDABCMN $.
$}

${
    kampuri.0 $e |- ro da poi ke'a cmima ko'e ku'o zo'u da ckaji ko'a $.
    $( Reverse inference form of ~df-kampu
       (Contributed by la korvo, 17-Aug-2023.) $)
    kampuri $p |- ko'a kampu ko'e $=
      ( sbckaji bb sbcmima tsb tss brd brdp sbkampu df-kampu bi-rev ) CAEFZBGHZ
      PICOCOJKABLFDABCMN $.
$}

$(
#*#*#
Union: {jo'e}
#*#*#
$)

$(
=-=-=
{jo'e}
=-=-=
$)

$c jo'e $.

sjohe $a sumti ko'a jo'e ko'e $.

$( Definition of {` jo'e `} in terms of {` ga `}. $)
df-johe $a |- go ko'a cmima ko'e jo'e ko'i gi ko'a cmima ko'e .a ko'i $.

${
    johei.0 $e |- ko'a cmima ko'e jo'e ko'i $.
    $( Inference form of ~df-johe
       (Contributed by la korvo, 22-Aug-2023.) $)
    johei $p |- ko'a cmima ko'e .a ko'i $=
      ( sjohe sbcmima bb sja df-johe bi ) ABCEFGABCHFGDABCIJ $.
$}

${
    joheri.0 $e |- ko'a cmima ko'e .a ko'i $.
    $( Reverse inference form of ~df-johe
       (Contributed by la korvo, 22-Aug-2023.) $)
    joheri $p |- ko'a cmima ko'e jo'e ko'i $=
      ( sja sbcmima bb sjohe df-johe bi-rev ) ABCEFGABCHFGDABCIJ $.
$}

$(
#*#*#
Intersection: {ku'a}
#*#*#
$)

$(
=-=-=
{ku'a}
=-=-=
$)

$c ku'a $.

skuha $a sumti ko'a ku'a ko'e $.

$( Definition of {` ku'a `} in terms of {` ge `}. $)
df-kuha $a |- go ko'a cmima ko'e ku'a ko'i gi ko'a cmima ko'e .e ko'i $.

${
    kuhai.0 $e |- ko'a cmima ko'e ku'a ko'i $.
    $( Inference form of ~df-kuha
       (Contributed by la korvo, 22-Aug-2023.) $)
    kuhai $p |- ko'a cmima ko'e .e ko'i $=
      ( skuha sbcmima bb sje df-kuha bi ) ABCEFGABCHFGDABCIJ $.
$}

${
    kuhari.0 $e |- ko'a cmima ko'e .e ko'i $.
    $( Reverse inference form of ~df-kuha
       (Contributed by la korvo, 22-Aug-2023.) $)
    kuhari $p |- ko'a cmima ko'e ku'a ko'i $=
      ( sje sbcmima bb skuha df-kuha bi-rev ) ABCEFGABCHFGDABCIJ $.
$}

$(
#*#*#
Internal bridi
#*#*#

The abstractor {` du'u `} contains any {` ka `} abstractions which are closed.
Our reasoning for {` pa ka `} quantification extends to {` pa du'u `}
quantification.
$)

$(
=-=-=
{du'u}
=-=-=
$)

$c du'u $.

$( If {` broda `} is a bridi, then {` pa du'u `} captures it as a sumti. $)
sdu $a sumti pa du'u broda kei $.

$(
=-=-=
{bridi}
=-=-=
$)

$c ce'o $.

sceho $a sumti ko'a ce'o ko'e $.

sbbridi $a selbri bridi $.

df-bridi-u $a |- pa du'u ko'a bu'a kei
  bridi pa ka ce'u bu'a kei
  ko'a $.

df-bridi-b $a |- pa du'u ko'a bu'a ko'e kei
  bridi pa ka ce'u bu'a ce'u kei
  ko'a ce'o ko'e $.

df-bridi-t $a |- pa du'u ko'a bu'a ko'e ko'i kei
  bridi pa ka ce'u bu'a ce'u ce'u kei
  ko'a ce'o ko'e ce'o ko'i $.

df-bridi-q $a |- pa du'u ko'a bu'a ko'e ko'i ko'o kei
  bridi pa ka ce'u bu'a ce'u ce'u ce'u kei
  ko'a ce'o ko'e ce'o ko'i ce'o ko'o $.

sbselbri $a selbri selbri $.

df-selbri $a |- go ko'a selbri ko'e ko'i gi ko'a se bridi ko'e ko'i $.

$(
=-=-=
{fatci}
=-=-=
$)

$c fatci $.

sbfatci $a selbri fatci $.

$( Definition of {` fatci `} in terms of {` du'u `}. $)
df-fatci $a |- go pa du'u broda kei fatci gi broda $.

${
    fatcii.0 $e |- pa du'u broda kei fatci $.
    $( Inference form of ~df-fatci
       (Contributed by la korvo, 10-Mar-2024.) $)
    fatcii $p |- broda $=
      ( sdu sbfatci bu df-fatci bi ) ACDEABAFG $.
$}

${
    fatciri.0 $e |- broda $.
    $( Reverse inference form of ~df-fatci
       (Contributed by la korvo, 10-Mar-2024.) $)
    fatciri $p |- pa du'u broda kei fatci $=
      ( sdu sbfatci bu df-fatci bi-rev ) AACDEBAFG $.
$}

$( {` cei'i `} is absolutely true when abstracted.
   (Contributed by la korvo, 10-Mar-2024.) $)
fatci-ceihi $p |- pa du'u cei'i kei fatci $=
  ( bceihi ceihi fatciri ) ABC $.

$(
=-=-=
{nibli}
=-=-=
$)

$c nibli $.

sbnibli $a selbri nibli $.

$( {` nibli `} internalizes implication. $)
df-nibli $a |-
  go pa du'u broda kei nibli pa du'u brode kei
  gi ganai broda gi brode $.

$(
=-=-=
{sigda}
=-=-=
$)

$c sigda $.

sbsigda $a selbri sigda $.

$( {` sigda `} internalizes implication. $)
df-sigda $a |-
  pa du'u ganai broda gi brode kei
  sigda
  pa du'u broda kei
  pa du'u brode kei $.

$(
=-=-=
{tsida}
=-=-=
$)

$c tsida $.

sbtsida $a selbri tsida $.

$( {` tsida `} internalizes biimplication. $)
df-tsida $a |-
  pa du'u go broda gi brode kei
  tsida
  pa du'u broda kei
  pa du'u brode kei $.

$(
=-=-=
{kanxe}
=-=-=
$)

$c kanxe $.

sbkanxe $a selbri kanxe $.

$( {` kanxe `} internalizes conjunction. $)
df-kanxe $a |-
  pa du'u ge broda gi brode kei
  kanxe
  pa du'u broda kei
  pa du'u brode kei $.

$(
=-=-=
{vlina}
=-=-=
$)

$c vlina $.

sbvlina $a selbri vlina $.

$( {` vlina `} internalizes disjunction. $)
df-vlina $a |-
  pa du'u ga broda gi brode kei
  vlina
  pa du'u broda kei
  pa du'u brode kei $.

$(
#*#*#
Parallel reasoning: {fa'u}
#*#*#
$)

$(
=-=-=
{fa'u}
=-=-=
$)

$c fa'u $.

sfahu $a sumti ko'a fa'u ko'e $.

$( Definition of {` fa'u `} in terms of {` ge `}. $)
df-fahu $a |- go ko'a fa'u ko'e bu'a ko'i fa'u ko'o
  gi ge ko'a bu'a ko'i gi ko'e bu'a ko'o $.

${
    fahui.0 $e |- ko'a fa'u ko'e bu'a ko'i fa'u ko'o $.
    $( Inference form of ~df-fahu
       (Contributed by la korvo, 16-Jun-2024.) $)
    fahui $p |- ge ko'a bu'a ko'i gi ko'e bu'a ko'o $=
      ( sfahu bb bge df-fahu bi ) ABGCDGEHACEHBDEHIFABCDEJK $.
$}

${
    fahuil.0 $e |- ko'a fa'u ko'e bu'a ko'i fa'u ko'o $.
    $( Inference form of ~df-fahu
       (Contributed by la korvo, 16-Jun-2024.) $)
    fahuil $p |- ko'a bu'a ko'i $=
      ( bb fahui ge-lei ) ACEGBDEGABCDEFHI $.
$}

${
    fahuir.0 $e |- ko'a fa'u ko'e bu'a ko'i fa'u ko'o $.
    $( Inference form of ~df-fahu
       (Contributed by la korvo, 16-Jun-2024.) $)
    fahuir $p |- ko'e bu'a ko'o $=
      ( bb fahui ge-rei ) ACEGBDEGABCDEFHI $.
$}

${
    fahuri.0 $e |- ko'a bu'a ko'i $.
    fahuri.1 $e |- ko'e bu'a ko'o $.
    $( Reverse inference form of ~df-fahu
       (Contributed by la korvo, 16-Jun-2024.) $)
    fahuri $p |- ko'a fa'u ko'e bu'a ko'i fa'u ko'o $=
      ( bb bge sfahu ge-ini df-fahu bi-rev ) ACEHZBDEHZIABJCDJEHNOFGKABCDELM $.
$}

$(
#####
NUMBERS
#####

We define the standard gadgets of number theory. Our axioms are based on the
Robinson axioms for second-order arithmetic over successor, addition,
multiplication, and comparison. We apply the standard intuitionistic and
Metamath transformations to these axioms in addition to reframing them for
a Lojbanic relation-first presentation.

Further directions include proving ~ax-succ-std by improving the axiom of
induction, as well as introducing and proving the other Robinson axioms using
induction. At the moment, induction can only handle closed formulae
expressible as brirebla ({` da bo'a `}), which proves to be an obstacle.
$)

$(
#*#*#
Natural numbers
#*#*#
$)

$(
=-=-=
{kacna'u}
=-=-=
$)

$c kacna'u $.
$c li no $.

bkacnahu $a selbri kacna'u $.

sl0 $a sumti li no $.

$( Zero is a natural number. $)
ax-nat-zero $a |- li no kacna'u $.

$(
=-=-=
Successor I: {kacli'e}
=-=-=
$)

$c kacli'e $.

bkaclihe $a selbri kacli'e $.

$( Zero is not a successor. This is Robinson axiom 1. $)
ax-succ-zero $a |- naku zo'u ko'a kacli'e li no $.

${
    succ-zero-ref.0 $e |- ko'a kacli'e li no $.
    $( Refutation of any claimed predecessor to zero.
       (Contributed by la korvo, 20-Aug-2023.) $)
    succ-zero-ref $p |- gai'o $=
      ( sl0 bkaclihe bb ax-succ-zero nakuii ) ACDEAFBG $.
$}

${
    ax-succ-succ.0 $e |- ko'a .e ko'e kacli'e ko'i $.
    $( Successors of natural numbers are also natural numbers, and each
       natural number has exactly one successor. This is equivalent to
       Robinson axiom 2. $)
    ax-succ-succ $a |- ko'a du ko'e $.
$}

$( The induction axiom for second-order arithmetic. To accomodate higher-order
   relations, the selbri parameter is generalized to a brirebla. $)
ax-nat-ind $a |- ganai
  ge li no bo'a
  gi ro da poi ke'a bo'a ku'o zo'u
    su'o de zo'u
      ge da kacli'e de
      gi de bo'a
  gi ro da poi ke'a kacna'u ku'o zo'u da bo'a $.

${
    nat-indi.0 $e |- ge li no bo'a
      gi ro da poi ke'a bo'a ku'o zo'u
        su'o de zo'u
          ge da kacli'e de
          gi de bo'a $.
    $( Inference form of ~ax-nat-ind
       (Contributed by la korvo, 10-Aug-2023.) $)
    nat-indi $p |- ro da poi ke'a kacna'u ku'o zo'u da bo'a $=
      ( sl0 btb bkaclihe bb bge bsd brd brdp bkacnahu tsb ax-nat-ind ax-mp ) EA
      FBCGHCAFIZCQJZABRBRKLIBAFZMNBSBSKLDABCOP $.
$}

${
    nat-indii.0 $e |- li no bo'a $.
    nat-indii.1 $e |- ro da poi ke'a bo'a ku'o zo'u
      su'o de zo'u
        ge da kacli'e de
        gi de bo'a $.
    $( Inference form of ~ax-nat-ind
       (Contributed by la korvo, 10-Aug-2023.) $)
    nat-indii $p |- ro da poi ke'a kacna'u ku'o zo'u da bo'a $=
      ( sl0 btb bkaclihe bb bge bsd brd brdp ge-ini nat-indi ) ABCFAGBCHICAGJZC
      PKZABQBQLMDENO $.
$}

$( Curried form of ~ax-nat-ind
   (Contributed by la korvo, 20-Aug-2023.) $)
nat-ind-cur $p |- ganai li no bo'a gi
  ganai ro da poi ke'a bo'a ku'o zo'u
    su'o de zo'u
      ge da kacli'e de
      gi de bo'a
  gi ro da poi ke'a kacna'u ku'o zo'u da bo'a $=
  ( sl0 btb bkaclihe bb bge bsd brd brdp bkacnahu tsb ax-nat-ind uncur ) DAEBCF
  GCAEHZCPIZABQBQJKBAEZLMBRBRJKABCNO $.

$( There are no non-standard natural numbers. This axiom upgrades our
   arithmetic from BA, "baby arithmetic", to Robinson's Q. This is Robinson
   axiom 3. $)
ax-succ-std $a |- ro da poi ke'a kacna'u ku'o zo'u
  ga da du li no gi su'o de zo'u de kacli'e da $.

sl1 $a sumti li pa $.

$( 1 is the successor of 0. $)
df-pa-li $a |- li no kacli'e li pa $.

$( 1 is a natural number. $)
ax-nat-pa $a |- li pa kacna'u $.

$c re $.

sl2 $a sumti li re $.

$( 2 is the successor of 1. $)
df-re-li $a |- li pa kacli'e li re $.

$(
=-=-=
Addition I: {sumji}
=-=-=
$)

$c sumji $.

bsumji $a selbri sumji $.

$( Every natural number is equal to itself plus zero. This is Robinson axiom
   4. $)
ax-sumji-no $a |- ro da poi ke'a kacna'u ku'o zo'u da sumji da li no $.

${
    ax-sumji-succ.0 $e |- su'o da zo'u
      ge ko'i sumji ko'a da gi ko'e kacli'e da $.
    $( Addition on natural numbers is well-founded and proceeds by successors.
       This is Robinson axiom 5. $)
    ax-sumji-succ $a |- su'o da zo'u
      ge da sumji ko'a ko'e gi da kacli'e ko'i $.
$}

$(
=-=-=
Addition II: {su'i}
=-=-=
$)

$c su'i $.

$( Grammar for VUhU and PA. $)

$( Experimental cmavo for "empty digits" which will serve as PA metavariables. $)
$v ku'i'a ku'i'e ku'i'i $.
$d ku'i'a ku'i'e ku'i'i $.
$c PA $.

mkuhiha $f PA ku'i'a $.
mkuhihe $f PA ku'i'e $.
mkuhihi $f PA ku'i'i $.

sli $a sumti li ku'i'a $.

msuhi $a PA ku'i'a su'i ku'i'e $.

df-suhi $a |-
  go li ku'i'a du li ku'i'e su'i ku'i'i
  gi li ku'i'a sumji li ku'i'e li ku'i'i $.

${
    suhii.0 $e |- li ku'i'a du li ku'i'e su'i ku'i'i $.
    $( Inference form of ~df-suhi
       (Contributed by la korvo, 21-Aug-2023.) $)
    suhii $p |- li ku'i'a sumji li ku'i'e li ku'i'i $=
      ( sli msuhi sbdu bb bsumji bt df-suhi bi ) AEZBCFEGHMBECEIJDABCKL $.
$}

${
    suhiri.0 $e |- li ku'i'a sumji li ku'i'e li ku'i'i $.
    $( Reverse inference form of ~df-suhi
       (Contributed by la korvo, 21-Aug-2023.) $)
    suhiri $p |- li ku'i'a du li ku'i'e su'i ku'i'i $=
      ( sli bsumji bt msuhi sbdu bb df-suhi bi-rev ) AEZBECEFGMBCHEIJDABCKL $.
$}

$(
=-=-=
Successor II: {bai'ei}
=-=-=
$)

$c bai'ei $.

mbaihei $a PA bai'ei ku'i'a $.

$( Definition of {` bai'ei `} in terms of {` su'i `}. $)
df-baihei $a |- li bai'ei ku'i'a du li ku'i'a su'i pa $.

$(
=-=-=
Multiplication I: {pilji}
=-=-=
$)

$c pilji $.

bpilji $a selbri pilji $.

$( Zero times any natural number is zero. This is Robinson axiom 6. $)
ax-pilji-no $a |- ro da poi ke'a kacna'u ku'o zo'u li no pilji da li no $.

${
    ax-pilji-succ.0 $e |- su'o da zo'u
      ge ko'i pilji ko'a da gi ko'e kacli'e da $.
    $( Multiplication on natural numbers is well-founded. This is Robinson
       axiom 7. $)
    ax-pilji-succ $a |- su'o da zo'u
      ge ko'i sumji da ko'a gi da pilji ko'a ko'e $.
$}

$(
=-=-=
Multiplication II: {pi'i}
=-=-=
$)

$c pi'i $.

mpihi $a PA ku'i'a pi'i ku'i'e $.

df-pihi $a |-
  go li ku'i'a du li ku'i'e pi'i ku'i'i
  gi li ku'i'a pilji li ku'i'e li ku'i'i $.

${
    pihii.0 $e |- li ku'i'a du li ku'i'e pi'i ku'i'i $.
    $( Inference form of ~df-pihi
       (Contributed by la korvo, 23-Aug-2023.) $)
    pihii $p |- li ku'i'a pilji li ku'i'e li ku'i'i $=
      ( sli mpihi sbdu bb bpilji bt df-pihi bi ) AEZBCFEGHMBECEIJDABCKL $.
$}

${
    pihiri.0 $e |- li ku'i'a pilji li ku'i'e li ku'i'i $.
    $( Reverse inference form of ~df-pihi
       (Contributed by la korvo, 23-Aug-2023.) $)
    pihiri $p |- li ku'i'a du li ku'i'e pi'i ku'i'i $=
      ( sli bpilji bt mpihi sbdu bb df-pihi bi-rev ) AEZBECEFGMBCHEIJDABCKL $.
$}

$(
=-=-=
Comparison I: {kacme'a}
=-=-=
$)

$c kacme'a $.

bkacmeha $a selbri kacme'a $.

$( Zero is not greater than any natural number. This is Robinson axiom 8. $)
ax-gt-zero $a |- naku zo'u ko'a kacme'a li no $.

${
    gt-zero-ref.0 $e |- ko'a kacme'a li no $.
    $( Refutation of any natural number less than zero.
       (Contributed by la korvo, 21-Jun-2024.) $)
    gt-zero-ref $p |- gai'o $=
      ( sl0 bkacmeha bb ax-gt-zero nakuii ) ACDEAFBG $.
$}

$( Recursive definition of {` kacme'a `}. This is Robinson axiom 11. $)
df-kacmeha $a |- go ko'a kacme'a ko'e
  gi su'o da poi ke'a kacli'e ko'a zo'u ga da kacme'a ko'e gi da du ko'e $.

$(
#*#*#
Existential quantifiers II: {pa da}
#*#*#
$)

$( Syntax for uniqueness quantification. $)
bpd $a bridi pa da zo'u broda $.

df-pa-da $a |- go pa da zo'u da bo'a
  gi ge su'o da zo'u da bo'a gi ganai ko'a bo'a gi ko'a du da $.

${
    pa-dai.0 $e |- pa da zo'u da bo'a $.
    $( Inference form of ~pa-da
       (Contributed by la korvo, 20-Aug-2023.) $)
    pa-dai $p |- ge su'o da zo'u da bo'a gi ganai ko'a bo'a gi ko'a du da $=
      ( btb bpd bsd sbdu bb bgan bge df-pa-da bi ) CBEZCFNCNGABEACHIJKDABCLM $.
$}

${
    pa-dari.0 $e |- ge su'o da zo'u da bo'a gi ganai ko'a bo'a gi ko'a du da $.
    $( Reverse inference form of ~pa-da
       (Contributed by la korvo, 20-Aug-2023.) $)
    pa-dari $p |- pa da zo'u da bo'a $=
      ( btb bsd sbdu bb bgan bge bpd df-pa-da bi-rev ) CBEZCNFABEACGHIJNCKDABCL
      M $.
$}

${
    pa-darii.0 $e |- su'o da zo'u da bo'a $.
    pa-darii.1 $e |- ganai ko'a bo'a gi ko'a du da $.
    $( Reverse inference form of ~pa-da
       (Contributed by la korvo, 20-Aug-2023.) $)
    pa-darii $p |- pa da zo'u da bo'a $=
      ( btb bsd sbdu bb bgan ge-ini pa-dari ) ABCCBFZCMGABFACHIJDEKL $.
$}

$(
#*#*#
Exponents I: {tenfa}
#*#*#
$)

$c tenfa $.
sbtenfa $a selbri tenfa $.

$(
#*#*#
Logarithms: {dugri}
#*#*#
$)

$c dugri $.
sbdugri $a selbri dugri $.

$( {` dugri `} is a permutation of {` tenfa `}. $)
df-dugri $a |- go ko'a dugri ko'e ko'i gi ko'a te se tenfa ko'e ko'i $.

${
    dugrii.0 $e |- ko'a dugri ko'e ko'i $.
    $( Inference form of ~df-dugri
       (Contributed by la korvo, 9-Aug-2023.) $)
    dugrii $p |- ko'a te se tenfa ko'e ko'i $=
      ( sbdugri bt sbtenfa sbs sbt df-dugri bi ) ABCEFABCGHIFDABCJK $.
$}

${
    dugriri.0 $e |- ko'a te se tenfa ko'e ko'i $.
    $( Inference form of ~df-dugri
       (Contributed by la korvo, 9-Aug-2023.) $)
    dugriri $p |- ko'a dugri ko'e ko'i $=
      ( sbtenfa sbs sbt bt sbdugri df-dugri bi-rev ) ABCEFGHABCIHDABCJK $.
$}

$(
#####
MEREOLOGY
#####

Mereology is an alternative to set theory. Where set theory focuses on
elementhood, using {` cmima `}, mereology focuses on parthood, using
{` pagbu `}.
$)

$(
#*#*#
Parthood
#*#*#
$)

$(
=-=-=
{pagbu}
=-=-=
$)

$c pagbu $.

sbpagbu $a selbri pagbu $.

$( Parthood is reflexive. $)
ax-pagbu-refl $a |- ko'a pagbu ko'a $.

$( Parthood is antisymmetric. $)
ax-pagbu-antisym $a |-
  ganai ge ko'a pagbu ko'e gi ko'e pagbu ko'a
  gi ko'a du ko'e $.

${
    pagbu-antisym.0 $e |- ko'a pagbu ko'e $.
    pagbu-antisym.1 $e |- ko'e pagbu ko'a $.
    $( Inference form of ~ax-pagbu-antisym
       (Contributed by la korvo, 4-Sep-2023.) $)
    pagbu-antisym $p |- ko'a du ko'e $=
      ( sbpagbu bb bge sbdu ge-ini ax-pagbu-antisym ax-mp ) ABEFZBAEFZGABHFLMCD
      IABJK $.
$}

$( Parthood is transitive. $)
ax-pagbu-trans $a |-
  ganai ge ko'a pagbu ko'e gi ko'e pagbu ko'i
  gi ko'a pagbu ko'i $.

${
    pagbu-trans.0 $e |- ko'a pagbu ko'e $.
    pagbu-trans.1 $e |- ko'e pagbu ko'i $.
    $( Inference form of ~ax-pagbu-trans
       (Contributed by la korvo, 4-Sep-2023.) $)
    pagbu-trans $p |- ko'a pagbu ko'i $=
      ( sbpagbu bb bge ge-ini ax-pagbu-trans ax-mp ) ABFGZBCFGZHACFGLMDEIABCJK
      $.
$}

$( The universe exists. $)
ax-pagbu-top $a |- su'o da zo'u ko'a pagbu da $.

$( The empty part exists. $)
ax-pagbu-bot $a |- su'o da zo'u da pagbu ko'a $.

$(
=-=-=
{jompau}
=-=-=
$)

$c jompau $.
sbjompau $a selbri jompau $.

$( Definition of {` jompau `} in terms of {` pagbu `}. $)
df-jompau $a |-
  go ko'a jompau ko'e
  gi su'o da zo'u ge da pagbu ko'a gi da pagbu ko'e $.

${
    jompaui.0 $e |- ko'a jompau ko'e $.
    $( Inference form of ~df-jompau
       (Contributed by la korvo, 4-Sep-2023.) $)
    jompaui $p |- su'o da zo'u ge da pagbu ko'a gi da pagbu ko'e $=
      ( sbjompau bb sbpagbu bge bsd df-jompau bi ) ABEFCAGFCBGFHZCLIDABCJK $.
$}

${
    jompauri.0 $e |- su'o da zo'u ge da pagbu ko'a gi da pagbu ko'e $.
    $( Reverse inference form of ~df-jompau
       (Contributed by la korvo, 4-Sep-2023.) $)
    jompauri $p |- ko'a jompau ko'e $=
      ( sbpagbu bb bge bsd sbjompau df-jompau bi-rev ) CAEFCBEFGZCLHABIFDABCJK
      $.
$}

$(
=-=-=
{kuzypau}
=-=-=
$)

$c kuzypau $.
sbkuzypau $a selbri kuzypau $.

$( Definition of {` kuzypau `} in terms of {` pagbu `}. $)
df-kuzypau $a |-
  go ko'a kuzypau ko'e
  gi su'o da zo'u ge ko'a pagbu da gi ko'e pagbu da $.

${
    kuzypaui.0 $e |- ko'a kuzypau ko'e $.
    $( Inference form of ~df-kuzypau
       (Contributed by la korvo, 4-Sep-2023.) $)
    kuzypaui $p |- su'o da zo'u ge ko'a pagbu da gi ko'e pagbu da $=
      ( sbkuzypau bb sbpagbu bge bsd df-kuzypau bi ) ABEFACGFBCGFHZCLIDABCJK $.
$}

${
    kuzypauri.0 $e |- su'o da zo'u ge ko'a pagbu da gi ko'e pagbu da $.
    $( Reverse inference form of ~df-kuzypau
       (Contributed by la korvo, 4-Sep-2023.) $)
    kuzypauri $p |- ko'a kuzypau ko'e $=
      ( sbpagbu bb bge bsd sbkuzypau df-kuzypau bi-rev ) ACEFBCEFGZCLHABIFDABCJ
      K $.
$}

$(
#####
SPACE & SPACETIME
#####
$)

$(
#*#*#
Two-dimensional Euclidean space
#*#*#
$)

$(
=-=-=
Compass directions
=-=-=
$)

$c berti snanu stici stuna $.

sbberti $a selbri berti $.
sbsnanu $a selbri snanu $.
sbstici $a selbri stici $.
sbstuna $a selbri stuna $.

$( Northward and southward are opposite. $)
ax-berti-snanu $a |- go ko'a berti ko'e ko'i gi ko'e snanu ko'a ko'i $.

$( Westward and eastward are opposite. $)
ax-stici-stuna $a |- go ko'a stici ko'e ko'i gi ko'e stuna ko'a ko'i $.

$(
#*#*#
Three-dimensional Euclidean space
#*#*#
$)

$(
=-=-=
Spatial directions
=-=-=
$)

$c crane trixe zunle pritu gapru cnita $.

sbcrane $a selbri crane $.
sbtrixe $a selbri trixe $.
sbzunle $a selbri zunle $.
sbpritu $a selbri pritu $.
sbgapru $a selbri gapru $.
sbcnita $a selbri cnita $.

$( Forward and backward are opposite. $)
ax-crane-trixe $a |- go ko'a crane ko'e ko'i gi ko'e trixe ko'a ko'i $.

$( Leftward and rightward are opposite. $)
ax-zunle-pritu $a |- go ko'a zunle ko'e ko'i gi ko'e pritu ko'a ko'i $.

$( Upward and downward are opposite. $)
ax-gapru-cnita $a |- go ko'a gapru ko'e ko'i gi ko'e cnita ko'a ko'i $.

$(
#*#*#
Minkowski spacetime
#*#*#
$)

$(
=-=-=
{cabna}
=-=-=
$)

$c cabna $.
sbcabna $a selbri cabna $.

$( {` cabna `} is symmetric. $)
ax-cabna-sym $a |- go ko'a cabna ko'e gi ko'e cabna ko'a $.

$(
=-=-=
{xlane}
=-=-=
$)

$c xlane $.
sbxlane $a selbri xlane $.

$( {` xlane `} is symmetric. $)
ax-xlane-sym $a |- go ko'a xlane ko'e gi ko'e xlane ko'a $.

$(
=-=-=
{balvi}, {purci}
=-=-=
$)

$c balvi $.
sbbalvi $a selbri balvi $.

$c purci $.
sbpurci $a selbri purci $.

$( {` balvi `} and {` purci `} are each other's daggers. $)
ax-balvi-purci $a |- go ko'a balvi ko'e gi ko'e purci ko'a $.

$(
#####
RELATIONAL LOGIC
#####
$)

$(
#*#*#
Open classes of relations
#*#*#

We investigate several relation types as open classes.
$)

$(
=-=-=
Transitivity: {takni}
=-=-=
$)

$c takni $.

sbtakni $a selbri takni $.

$( A standard definition of transitive relations. $)
df-takni $a |- go ko'a takni ko'e
  gi ro da zo'u ro de zo'u ro di zo'u
    ganai ge da .e de .e di cmima ko'e
      gi ge da ckini de ko'a gi de ckini di ko'a
    gi da ckini di ko'a $.

$(
=-=-=
Symmetry: {kinfi}
=-=-=
$)

$c kinfi $.

sbkinfi $a selbri kinfi $.

$( A standard definition of symmetric relations. $)
df-kinfi $a |- go ko'a kinfi ko'e
  gi ro da zo'u ro de zo'u
    ganai ge da .e de cmima ko'e gi da ckini de ko'a
    gi de ckini da ko'a $.

$(
=-=-=
Reflexivity: {kinra}
=-=-=
$)

$c kinra $.

sbkinra $a selbri kinra $.

$( A standard definition of reflexive relations. $)
df-kinra $a |- go ko'a kinra ko'e
  gi ro da zo'u ganai da cmima ko'e gi da ckini da ko'a $.

$(
=-=-=
Euclidean: {efklipi}, {efklizu}
=-=-=
$)

$c efklipi efklizu $.

sbefklipi $a selbri efklipi $.
sbefklizu $a selbri efklizu $.

$( A standard definition of right-Euclidean relations. $)
df-efklipi $a |- go ko'a efklipi ko'e
  gi ro da zo'u ro de zo'u ro di zo'u
    ganai ge da .e de .e di cmima ko'e gi da ckini de .e di ko'a
    gi de ckini di ko'a $.

$( A standard definition of left-Euclidean relations. $)
df-efklizu $a |- go ko'a efklizu ko'e
  gi ro da zo'u ro de zo'u ro di zo'u
    ganai ge da .e de .e di cmima ko'e gi de .e di ckini da ko'a
    gi de ckini di ko'a $.

$(
#*#*#
Lattice of relations
#*#*#
$)

$(
=-=-=
{ki'irni'i}
=-=-=
$)

$c ki'irni'i $.
sbkihirnihi $a selbri ki'irni'i $.

$( Definition of {` ki'irni'i `} in terms of {` naja `}. $)
df-kihirnihi $a |-
  go pa ka ce'u bu'a ce'u kei ki'irni'i pa ka ce'u bu'e ce'u kei
  gi ko'a bu'a naja bu'e ko'e $.

$( {` ki'irni'i `} is transitive. $)
ax-kihirnihi-trans $a |-
  ganai ge ko'a ki'irni'i ko'e gi ko'e ki'irni'i ko'i
  gi ko'a ki'irni'i ko'i $.

$(
=-=-=
{ki'irkanxe}
=-=-=
$)

$c ki'irkanxe $.
sbkihirkanxe $a selbri ki'irkanxe $.

$( Definition of {` ki'irkanxe `} $)
df-kihirkanxe $a |-
  pa ka ce'u bu'a je bu'e ce'u kei
  ki'irkanxe
  pa ka ce'u bu'a ce'u kei
  pa ka ce'u bu'e ce'u kei $.

$(
=-=-=
{ki'irvlina}
=-=-=
$)

$c ki'irvlina $.
sbkihirvlina $a selbri ki'irvlina $.

$( Definition of {` ki'irvlina `} $)
df-kihirvlina $a |-
  pa ka ce'u bu'a ja bu'e ce'u kei
  ki'irvlina
  pa ka ce'u bu'a ce'u kei
  pa ka ce'u bu'e ce'u kei $.

$(
#*#*#
Functions I
#*#*#
$)

$(
=-=-=
{pagyfancu}
=-=-=
$)

$c pagyfancu $.
sbpagyfancu $a selbri pagyfancu $.

$( Definition of {` pagyfancu `} in terms of {` ki'irni'i `}. $)
df-pagyfancu $a
  go su'o da zo'u su'o de zo'u su'o di zo'u
    da pagyfancu de di pa ka ce'u bu'a ce'u kei
  gi pa ka su'o da zo'u ce'u .e ce'u bu'a da kei
    ki'irni'i pa ka ce'u du ce'u kei $.

$(
#*#*#
Assorted claims
#*#*#
$)

$(
=-=-=
{mapti}
=-=-=
$)

$c mapti $.
sbmapti $a selbri mapti $.

$( Under postulated definitions of la xorxes and la korvo, {` mapti `} is a
   subrelation of {` ckini `}. $)
ax-mapti-ckini $a |- ganai ko'a mapti ko'e ko'i gi ko'a ckini ko'e ko'i $.

$(
=-=-=
{dunli}
=-=-=
$)

$c dunli $.
sbdunli $a selbri dunli $.

$( Because modal x1 and modal x2 of {` dunli `} are definitionally
   interchangeable, {` dunli `} itself is symmetric. $)
ax-dunli-sym $a |- go ko'a dunli ko'e ko'i gi ko'e dunli ko'a ko'i $.

$(
=-=-=
{mintu}
=-=-=
$)

$c mintu $.
sbmintu $a selbri mintu $.

$( Because x1 and x2 of {` mintu `} are definitionally interchangeable, it is
   symmetric. $)
ax-mintu-sym $a |- go ko'a mintu ko'e ko'i gi ko'e mintu ko'a ko'i $.

$(
=-=-=
{drata}
=-=-=
$)

$c drata $.
sbdrata $a selbri drata $.

$( {` drata `} is irreflexive. $)
ax-drata-irrefl $a |- naku zo'u ko'a drata ko'a ko'e $.

$(
=-=-=
{frica}
=-=-=
$)

$c frica $.
sbfrica $a selbri frica $.

$( {` frica `} is irreflexive. $)
ax-frica-irrefl $a |- naku zo'u ko'a frica ko'a ko'e $.

$(
=-=-=
{nenri}
=-=-=
$)

$c nenri $.
sbnenri $a selbri nenri $.

$( {` nenri `} is transitive. $)
ax-nenri-trans $a |-
  ganai ge ko'a nenri ko'e gi ko'e nenri ko'i
  gi ko'a nenri ko'i $.

$(
=-=-=
{fatne}
=-=-=
$)

$c fatne $.
sbfatne $a selbri fatne $.

$( {` fatne `} is symmetric. $)
ax-fatne-sym $a |- go ko'a fatne ko'e gi ko'e fatne ko'a $.

$(
=-=-=
{rinka}
=-=-=
$)

$c rinka $.
sbrinka $a selbri rinka $.

$( Physical causation implies spatiotemporal causation. $)
ax-rinka-balvi $a |- ganai ko'a rinka ko'e ko'i gi ko'a balvi ko'e $.

$(
#*#*#
Ontological classes
#*#*#
$)

$(
=-=-=
Colors: {skari}
=-=-=

The schema for colors classifies one type, the colors ({` skaselbri `}).
$)

$c skari skaselbri $.
sbskari $a selbri skari $.

$( Colors are extensionally defined in terms of {` skari `}. $)
ax-skari-ckaji $a |- ganai ko'a skari ko'e ko'i ko'o gi ko'a ckaji ko'e $.

${
    sbska.0 $e skaselbri bu'a $.
    $( All {` skaselbri `} are {` selbri `}. $)
    sbska $a selbri bu'a $.
$}

${
    skaselbri.0 $e skaselbri bu'a $.
    $( To be colored is to appear colored in a certain context. $)
    df-skaselbri $a |- go ko'a bu'a
      gi su'o da zo'u su'o de zo'u ko'a skari pa ka ce'u bu'a kei da de $.
$}

$c xinmo $.

$( Definitionally, xinmo2 is drawn from skari2. $)
ax-xinmo2-skari2 $a |- ganai ko'a se xinmo ko'e
  gi su'o da zo'u su'o de zo'u su'o di zo'u ko'a se skari da de di $.
