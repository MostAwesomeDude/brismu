# SI Units

* delno: candela
* mitre: meter
* snidu: second
* kilga [exp]: kilogram
* xampo: ampere
* kelvo: kelvin
* molro: moles

General form is "x1 is x2 $UNITs in length (default 1) by standard x3".

Derived units:

* grake: grams
* mentu: minutes
* cacra: hours
* paska [exp]: pascal

## Issues

mitre has weird structure: "x1 is x2 meters in length (default 1) measured *in
direction x3* by standard x4".

We need to be able to multiply and divide units. It would be enough to have
some sort of tensor-product operation on selbri; e.g. {paska} needs to be in
kg/m/s².
