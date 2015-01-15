TP 1 - Inférence de type
==================

Question 1
--------

```OCaml
5*4*3*2*1;;
```
de type int car on a un produit d'int. Valeur = 120

```OCaml
true;;
```
de type bool. Valeur = true

```OCaml
if 2 > 0 then "true"
		else "false";;
```
2 > 0, donc de type string car on choisit "true". Valeur = "true"

```OCaml
if 2 > 0 then true
		else false;;
```
2 > 0, donc de type bool car on choisit true. Valeur = true

```OCaml
if 2 > 0 then "oui"
		else "non";;
```
2 > 0, donc de type string car on choisit "oui". Valeur = "oui"

```OCaml
if 2 > 0 then oui
		else non;;
```
erreur, car oui n'est associée à aucun type

```OCaml
if 2 > 0 then true
		else "false";;
```
erreur, car on attendait un type bool (car 2 > 0) alors qu'il y a une string comme valeur de retour du else

```OCaml
3.14 +. 2.;;
```
de type float, car on a une somme de float. Valeur = 5.14

```OCaml
3.14 +. 2;;
```
erreur, car on fait une somme de float avec un float et un int

```OCaml
3.14 + 2.0;;
```
erreur, car on fait une somme d'int avec deux float

```OCaml
3.14 > 2.;;
```
de type bool. Valeur = true

```OCaml
3.14 > 2;;
```
erreur, car on essaie de comparer un int et un float

```OCaml
int_of_float(3.14) > 2;;
```
de type bool. Valeur = true

```OCaml
3.14 > float_of_int(2);;
```
de type bool. Valeur = true

```OCaml
3 > 2;;
```
de type bool. Valeur = true

```OCaml
"trois" > "deux";;
```
de type bool. Valeur = true

```OCaml
"deux" > "un";;
```
de type bool. Valeur = false

```OCaml
5 / 2;;
```
de type int. Valeur = 2

```OCaml
5. /. 2.;;
```
de type float. Valeur = 2.5

```OCaml
sqrt(4.);;
```
de type float. Valeur = 2.

```OCaml
sqrt(4);;
```
erreur, car la fonction sqrt attend un float en entrée

```OCaml
sqrt;;
```
de type float -> float. Valeur = <fun>

```OCaml
exp(1.);;
```
de type float. Valeur = 2.71828 (etc)

```OCaml
log( exp(1.));;
```
de type float. Valeur = 1.

```OCaml
5 / 0;;
```
erreur, car division par zéro

```OCaml
if true then 5/0
		else 3;;
```
erreur, car division par zéro évaluée dans le then

```OCaml
if true then 3
		else 5/0;;
```
de type int. Valeur = 3

```OCaml
if false then 5/0
		else 3;;
```
de type int. Valeur = 3

```OCaml
if false then 3
		else 5/0;;
```
erreur, car division par zéro évaluée dans le then

```OCaml
(2 / 0 = 5) && true;;
```
erreur, car division par zéro