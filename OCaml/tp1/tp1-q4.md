TP 1 : Inférence de type - Question 4
==================

Etant donné l'expression suivante :
```OCaml 
f (f (g (2, true), 4));;
```

Pour qu'elle ait une valeur, on peut y associer les définitions suivantes :
```OCaml
let g = function (x,y) -> if y then x + 1 else x - 1 ;;

let f = function (x,y) -> if x + y >= 0 then (x,y) else (x + 1, y + 1) ;;
```

On note que **f** doit renvoyer un couple pour que cela fonctionne.

En préocdant ainsi, on a **g** qui est de type int*bool -> int, **f** qui est de type int*int -> int*int et l'expression vaut (3,4)