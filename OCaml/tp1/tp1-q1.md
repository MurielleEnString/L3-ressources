TP 1 : Inférence de type - Question 1
==================

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
erreur, car *oui* n'est associée à aucun type

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
de type float -> float. Valeur = `<fun>`

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

```OCaml
true && (2 / 0 = 5) ;;
```
erreur car divison par zéro. La présence de true ne siginifie pas que le test est toujours vrai.

```OCaml
(2 / 0 = 5) && false ;;
```
erreur, car division par zéro

```OCaml
false && (2 / 0 = 5) ;;
```
de type bool. 2/0 n'est pas évalué, car false est évlaué en premier et rend le test *&&* forcément faux. Valeur = false

```OCaml
(2 / 0 = 5) || true ;;
```
erreur, car division par zéro

```OCaml
true || (2 / 0 = 5) ;;
```
de type bool. Vrai ou n'importe quoi faut forcément Vrai. Valeur = true

```OCaml
(2 / 0 = 5) || false ;;
```
erreur, car division par zéro

```OCaml
false || (2 / 0 = 5) ;;
```
erreur car division par zéro. Faux ou n'importe quoi ne signifie pas que le test est toujours faux

```OCaml
"s" ^ "i" ;;
```
de type string. Valeur = "si"

```OCaml
's' ^ "i" ;;
```
erreur, car on essaie de concaténer un char et une string avec l'opération de concaténation des string.

```OCaml
's' ^ 'i' ;;
```
erreur, car on essaie de concaténer deux char avec l'opération de concaténation des string.

```OCaml
"s" ^ i ;;
```
erreur, car *i* n'as pas de type

```OCaml
si ;;
```
erreur, car *si* n'as pas de type

```OCaml
"if" ;;
```
de type string. Valeur = "if"

```OCaml
function x -> x > 0 ;;
```
de type int -> bool, car on compare x avec un entier en utilisant un test qui renvoie un bool.

```OCaml
(function x -> x > 0) (12) ;;
```
de type bool (idem que la précédente). Valeur = true

```OCaml
function x -> 2 * x ;;
```
de type int->int, car on fait un produit d'entier avec x et un autre entier.

```OCaml
(function x -> 2 * x) (7) ;;
```
de type int (idem que la précédente). Valeur = 14

```OCaml
function (x, y) -> (x + y, x - y) ;;
```
de type int*int -> int*int, car x et y sont manipulés avec des opértaeurs qui attendent des entiers en paramètres.

```OCaml
function x -> x / 0 ;;
```
de type int->int, car x est manipulé avec un opértaeur qui attend des entiers en paramètre

```OCaml
(function x -> x / 0) (12) ;;
```
erreur, car divison par zéro

```OCaml
(function x -> x) (5) ;;
```
de type int. Valeur = 5

```OCaml
(function x -> x) ("oui") ;;
```
de type string. Valeur = "oui"

```OCaml
function x -> x ;;
```
de type 'a->'a

```OCaml
(function x -> 1) (5) ;;
```
de type int. Valeur = 1

```OCaml
(function x -> 1) (5.) ;;
```
de type int. Valeur = 1

```OCaml
function x -> 1 ;;
```
de type 'a->int

```OCaml
(function (x, y) -> (y, x)) (1, 2) ;;
```
de type int*int. Valeur = (2,1)

```OCaml
(function (x, y) -> (y, x)) (1, "oui") ;;
```
de type string*int. Valeur = ("oui",1)

```OCaml
(function (x, y) -> (y, x)) ("oui", "oui") ;;
```
de type string*string. Valeur = ("oui","oui")

```OCaml
function (x, y) -> (y, x) ;;
```
de type 'a*'b -> 'b*'a

```OCaml
function x -> (x, x) ;;
```
de type 'a -> 'a*'a

```OCaml
(function x -> (x, x)) (1);;
```
de type int->int*int. Valeur = (1,1)

```OCaml
let aaa = 2 and bbb = 3 * aaa in aaa + bbb ;;
```
erreur, car aaa n'est défini que dans le bloc **in** et pas dans la définition de bbb

```OCaml
let aaa = 2 in let bbb = 3 * aaa in aaa + bbb ;;
```
de type int. Valeur = 8

```OCaml
let aaa = 2 in let bbb = 3 * aAa in aaa + bbb ;;
```
erreur, car aAa n'est pas défini