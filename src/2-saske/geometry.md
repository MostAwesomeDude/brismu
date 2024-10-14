# Geometry

## Abstracta

* {canlu}: x1 is 3+D space contaning x2
* {diklo}: x1 is within a ball centered at x2 and with radius x3
* {jganu}: x1 is the angle with corner vertex x2 and subtending line/curve x3
* {kubli}: x1 is a polytope with dimensionality x2 and surface/sides x3
* {kurfa}: x1 is a shape with all right angles, defined by corners x2 (set),
  with dimensionality x3
* {linji}: x1 is a line containing points x2 (set)
* {mokca}: x1 is a point in space x2
* {plita}: x1 is a 2D plane defined by points x2 (set)
* {sefta}: x1 is a face of object x2, side x3, edges x4

### Spaces

* {nicfa}: x1 is displacement between vectors x2 and x3 in affine space x4

### Issues

diklo3 should be a "range", not a radius; but I can't find good examples of
usage.

kubli2 defaults to 3 and kubli3 defaults to 6, so kubli defaults to 3D cubes.

kurfa3 defaults to 2, so kurfa designates rectangles by default.

mokca2 is "in/on/at time/place", which seems polysemous.

linji2 cardinality is at least 1, but plita2 cardinality is at least 3. This
is because plita1 is fixed by plita2; linji1 is "a line", but plita2 is "the
plane".

nicfa4 and nicfa5 aren't useful to us here. I'm replacing nicfa4 and folks can
put {la brismu} for nicfa5 to indicate that they're using our definition
instead.

## Physical

* {bliku}: x1 is a 3D rectangular prism (cuboid) of material x2
* {bolci}: x1 is a sphere of material x2
* {boxfo}: x1 is a 2D plane flexible/crumpled in 3D of material x2
* {cukla}: x1 is a 2D disk/ring
* {djine}: x1 is a 2D annulus of material x2, inner diameter x3, outer
  diameter x4
* {jipno}: x1 is a 0D point on object x2 at locus x3
* {karda}: x1 is a thin 3D object of material x2 approximating 2D shape x3
* {kojna}: x1 is a 3+D corner with interior angle on object x2 of material x3
* {konju}: x1 is a cone of material x2 with apex point x3
* {tanbo}: x1 is a 3D long flat rectangle of material x2
* {tapla}: x1 is a 3D prism of material x2, extruded 2D shape x3, and
  thickness x4 in the third dimension

### Implications

{tanbo} is a subrelation of {bliku}, ignoring bliku3.

{karda} is a subrelation of {tapla} as tapla4 shrinks towards zero.

### Issues

bliku3 is supposed to enumerate the "number, size, and shape" of the
"sides/surfaces" of the cuboid.

bolci has unclear dimensionality.

cukla is very generic, and conflates disks (filled-in) with rings
(hollow boundaries), although notes say that it's "normally used for a
filled-in circle/disk."

djine3 and djine4 are diameters, not radii.
