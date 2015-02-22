TP 1 : Inférence de type - Question 6
==================

```OCaml
let f = function
	x -> if x <> 0 then x / abs (x)
	else failwith ("f : s'applique a une valeur non nulle") ;;
```
c'est une définition globale d'une fonction de type int -> int

```OCaml
(f (-7), f (5)) ;;
```
c'est une expresionn de type int*int et de valeur (-1,1)

```OCaml
f(0);;
```
c'est une expression mais qui déclenche une levée d'exception : "f : s'applique a une valeur non nulle"

```OCaml
let rec fois = function (a, b) -> if b = 0 then 0
											else a + fois (a, b - 1) ;;
```
c'est une définition globale d'une fonction de type int * int -> int

```OCaml
fois (5, 7) ;;
```
c'est une expression de type int et de valeur 35

```OCaml
fois (5, 7) ;;
let rec modulo8 = function n -> if n < 0 then modulo8 (n + 8)
											else if n >= 8 then modulo8 (n - 8)
											else n ;;
```
c'est une définition globale d'une fonction de type int -> int

```OCaml
modulo8 (-13) ;;
```
c'est une expression de type int et de valeur 3

```OCaml
let rec repete = function (mot, n) -> if n = 0 then "!"
												else mot ^ repete (mot, n - 1) ;;
```
c'est une définition globale d'une fonction de type string * int -> string

```OCaml
repete ("Ah ", 5) ;;
```
c'est une expression de type string et de valeur "Ah Ah Ah Ah Ah !"

```OCaml
let rec f = function x -> f (x) ;;
```
c'est une définition globale d'une fonction de type 'a -> 'b

```OCaml
f(3) ;;
```
c'est une expression mais sans valeur ni type car elle déclenche l'appel d'une fonction récursive qui ne termine pas.

```OCaml
let rec puissance = function (x, n) ->
	if n = 0 then 1.0
				else if n < 0 then 1.0 /. puissance (x, - n)
				else x *. puissance (x, n - 1) ;;
```
c'est une définition globale d'une fonction de type float * int -> float

```OCaml
puissance (1.2, 4) ;;
```
c'est une expression de type float et de valeur 2.0736

```OCaml
puissance (5.0, -3) ;;
```
c'est une expression de type float et de valeur 0.008

```OCaml
let rec est_pair = function n -> if n = 0 then true
											else est_pair (n - 2) ;;
```
c'est une définition globale d'une fonction de type int -> bool

```OCaml
est_pair(12);;
```
c'est une expression de type bool et de valeur true

```OCaml
est_pair(11);;
```
c'est une expression sans type ni valeur car elle déclenche l'appel à une fonction récursive qui ne termine pas.
