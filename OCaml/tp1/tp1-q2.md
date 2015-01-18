TP 1 : Inférence de type - Question 2
==================

```OCaml
let absolu = function x -> if x >= 0 then x else - x ;;
```
c'est une définiton globale. **absolu** est une fonction de type int -> int

```OCaml
absolu (absolu (-12)) ;;
```
c'est une expression de type int. Valeur = 12

```OCaml
let comp = function (x, y, z) -> (x <= y, y <= z) ;;
```
c'est une définition globale. **comp** est une fonction de type 'a*'a*'a -> bool*bool

```OCaml
(comp (3, 2, 4), comp (2, 3, 4)) ;;
```
c'est une expression de type (bool,bool)*(bool,bool). Valeur = ( (false,true),(true, true) )

```OCaml
comp ("jaune", "rouge", "vert") ;;
```
c'est une expression de type bool*bool. Valeur = (true,true)

```OCaml
let approx = function (a, b) -> let (b1, b2) = comp (a - 1, b, a + 1) in b1 && b2 ;;
```
c'est une définition de globale. **approx** est une fonction de type int*int -> bool

```OCaml
approx (12, 13) ;;
```
c'est une expression de type bool*bool. Valeur = true

```OCaml
approx ("mauve", "violet") ;;
```
c'est une expression mais cause une erreur car **approx** attend des int en paramètre et non des string

```OCaml
let ff = function x -> x + 1 in ff ;;
```
c'est une expression. **ff** est une fonction de type int->int

```OCaml
ff (5) ;;
```
c'est une expression, mais cause une erreur car **ff** n'était déifni que dans le bloc **in** précédent

```OCaml
let ff = function x -> x + 1 ;;
```
c'est une définiton globale. **f** est de type int->int

```OCaml
ff (5) ;;
```
c'est une expression de type int. Valeur = 6

```OCaml
let ff = function x -> x +. 1. ;;
```
c'est une définition globale. **ff** est de type float->float

```OCaml
ff (5) ;;
```
c'est une epxression mais cause une erreur car **ff** attend un float en paramètre et non un int

```OCaml
(let ff = function x -> x + 1 in ff) (5) ;;
```
c'est une expression de type int. Valeur = 6

```OCaml
ff (5) ;;
```
**ff** n' pas été redéfinie , donc l'interpréteur utilise la dernière définition de **ff**, soit float->float. Cela cause donc la même erreur que précédemment.

```OCaml
ff ;;
```
C'est une expression de type float->float. Valeur = `<fun>`

```OCaml
let fff = function b -> b ;;
```
c'est une définition gloable. **fff** est de type 'a->'a

```OCaml
fff (3) ;;
```
c'est une expression de type int. Valeur = 3

```OCaml
fff ("oui") ;;
```
c'est une expression de type string. Valeur = "oui"

```OCaml
let ffff c = c ;;
```
c'est une définition globale. **fff** est une fonction de type 'a->'a

```OCaml
fff (3) ;;
```
c'est une expression de type int. Valeur = 3

```OCaml
fff ("oui") ;;
```
c'est une expression de type string. Valeur = "oui"