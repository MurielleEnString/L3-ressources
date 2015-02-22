TP 1 : Inférence de type - Question 7
==================

```OCaml
open List;;
```
Il s'agit de l'instruction pour ouvrir le module List

```OCaml
let li_1 = 7 :: (3 :: (11 :: [])) ;;
```
c'est une définition globale d'une variable de type int list et de valeur [7;3;11]

```OCaml
2 :: 3 ;;
```
c'est une expression sans valeur ni type car l'opérateur **::** ne s'applique pas sur 'a :: 'a mais sur 'a :: 'a list

```OCaml
[] :: 7 ;;
```
c'est une expression sans valeur ni type car l'opérateur **::** ne s'applique pas sur 'a list :: 'a mais sur 'a :: 'a list

```OCaml
let li_2 = 9 :: li_1 in li_2 ;;
```
c'est une expression de type int list et de valeur [9;7;3;11]

```OCaml
li_1 ;;
```
c'est une expression de type int list et de valeur [7;3;11]

```OCaml
li_2 ;;
```
provoque une erreur car la variable li_2 n'a pas été assignée

```OCaml
[] ;;
```
c'est une expression de type 'a list et de valeur []

```OCaml
let li_2 = 6 :: 5 :: 9 :: [] ;;
```
c'est une définition globale d'une variable de type int list et de valeur [6;5;9]

```OCaml
li_2 :: (li_1 :: []) ;
```
c'est une expression de type int int list et de valeur [ [6;5;9] ; [7;3;11] ]

```OCaml
6 :: (li_1 :: []) ;;
```
ne fonctionne pas car on essaie de faire **int :: int list list** au lieu de **int :: int list**

```OCaml
let li_3 = 6 :: (5.3 :: (9 :: [])) ;;
```
ne fonctionne pas car on essaie d'ajouter un float dans une int list

```OCaml
let li_4 = "ours" :: "vache" :: "renard" :: [] ;;
```
c'est une définition globale d'une variable de type string list et de valeur ["ours";"vache";"renard"]

```OCaml
let li_5 = "miel" :: "herbe" :: "poule" :: [] ;;
```
c'est une définition globale d'une variable de type string list et de valeur ["miel";"herbe";"poule"]

```OCaml
li_4 :: li_5 ;;
```
ne fonctionne pas car on essaie de faire **string list :: string list** au lieu de **string list :: string list list**

```OCaml
tl (tl ("oui" :: [])) ;;
```
ne fonctionne pas car on essaie de faire **tl([])**, ce qui est hors du domaine de définition de la fonction **tl**

```OCaml
(2, 3.5) :: (0, 4.) :: [] ;;
```
c'est une expression de type (int * float) list et de valeur [ (2,3.5);(0,4.)]

```OCaml
hd (tl ((2 = 0) :: (if 4 > 2 then 3 < 5 else 3 > 5) :: [])) ;;
```
c'est une expression de type bool et de valeur true

```OCaml
(if 4 > 2 then 3 < 5 else 3 > 5) :: [] ;;
```
c'est une expression de type bool list et de valeur [true]

```OCaml
li_1 :: [] :: (4 :: li_2) :: [] ;;
```
c'est une expression de type int list list et de valeur [ [7;3;11];[];[4;6;5;9] ]

```OCaml
tl (5 :: []) ;;
```
c'est une expression de type int list et de valeur []

```OCaml
let rec f1 = function li -> if tl (li) = [] then hd (li) else f1 (tl (li)) ;;
```
c'est une définition globale d'une fonction de type 'a list -> 'a

```OCaml
let rec f2 = function (li, n) -> if n = 1 then hd (li) else f2 (tl (li), n - 1) ;;
```
c'est une définition globale d'une fonction de type 'a list * int -> 'a

```OCaml
[] :: [] ;;
```
c'est une expression de type 'a list list et de valeur [[]]

```OCaml
([] :: []) :: [] ;;
```
c'est une expression de type 'a list list list et de valeur [[[]]] 

```OCaml
sqrt :: log :: exp :: [] ;;
```
c'est une expression de type (float -> float) list et de valeur `[<fun>;<fun>;<fun>]`

```OCaml
() ;;
```
c'est une expression de type unit et de valeur ()

```OCaml
(function () -> []) :: [] ;;
```
c'est une expression de type (unit->'a list) list et de vlauer `[<fun>]`

```OCaml
[] :: (function () -> []) ;;
```
ne fonctionne pas car le paramètre de droite de l'opérateur **::** doit être une liste

```OCaml
[] :: ((function () -> []) ()) ;;
```
c'est une expression de type 'a list list et de valeur [[]]

```OCaml

```

```OCaml

```

```OCaml

```

```OCaml

```

```OCaml

```

```OCaml

```

```OCaml

```