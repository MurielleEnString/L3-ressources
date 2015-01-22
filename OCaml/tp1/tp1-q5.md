TP 1 : Inférence de type - Question 5
==================

```OCaml
let a  = 5
in 2*a ;;
```
c'est une expression de type *int* et de valeur 10

```OCaml
a ;;
```
c'est une erreur, car a n'a été défini que dans le bloc **in** de l'instruction précédente. La valeur est donc non liée.

```OCaml
let a = 7
in (a,a) ;;
```
c'est une expression de type *int*`*`*int* et de valeur (7,7)

```OCaml
let a = 1 and b = 3 and c = 4
in a + b + c ;;
```
c'est une expression de type *int* et de valeur 8

```OCaml
let (a, b, c) = (1, 3, 4)
in a + b + c ;;
```
c'est une expression de type *int* et de valeur 8. Elle est équivalente à l'expression précédente.

```OCaml
let a = 5 ;;
```
c'est une définition globale. **a** est de type *int* et de valeur 5.

```OCaml
a ;;
```
c'est une expression de type *int* et de valeur 5.

```OCaml
let a = 3
in 2*a ::
```
c'est une expression de type *int* et de valeur 6.

```OCaml
a ;;
```
c'est une expression de type *int* et de valeur 5. **a** n'a pas changé de valeur car l'expression précédente ne définissait pas **a** de manière globale.

```OCaml
let a = "oui" ;;
```
c'est une définition globale. **a** est de type *string* et de valeur "oui".

```OCaml
a ;;
```
c'est une expression de type *string* et de valeur "oui".

```OCaml
let x = 5 ;;
```
c'est une définition globale. **x** est de type *int* et de valeur 5.

```OCaml
let x = 3
in 2*x ;;
```
c'est une expression de type *int* et de valeur 6.

```OCaml
let y = x + 1 ;;
```
c'est une définition globale. **y** est de type *int* et de valeur 6.

```OCaml
let x = 4 and y = 2
in x*y ;;
```
c'est une expression de type *int* et de valeur 8.

```OCaml
y ;;
```
c'est une expression de type *int* et de valeur 6. L'expression précédente n'a pas affecté la valeur de **y** car le changement n'était pas globale.