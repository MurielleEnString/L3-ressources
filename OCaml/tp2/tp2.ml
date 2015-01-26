(*
On réalise les fonctions suivantes :
	plus : naturel * naturel -> naturel
	fois : naturel * naturel -> naturel
	moins : naturel * naturel -> naturel (*...*)
	supegal : naturel * naturel -> bool
	est_puissance_de_deux : naturel -> bool
	log_base_deux : naturel -> naturel (*...*)
	nat_of_int : int -> naturel (*...*)
	int_of_nat : naturel -> int
	string_of_nat : naturel -> string
*)

(* Avec l'implémentation Nat_1 *)
#load "nat_1.cmo" ;;
#install_printer affiche_naturel;;

let rec nat_of_int = function x -> 
	if x = 0
		then Nat_1.zero()
		else Nat_1.suc(nat_of_int(x - 1));;

let rec int_of_nat = function x -> 
	if Nat_1.est_zero(x)
		then 0
		else 1 + int_of_nat(Nat_1.pre(x));;

let rec plus = function (x,y) -> 
	if Nat_1.est_zero(x)
		then y
		else plus(Nat_1.pre(x), Nat_1.suc(y));;

let rec fois = function (x,y) -> 
	if Nat_1.est_zero(y)
		then Nat_1.zero()
		else plus(x, fois(x, Nat_1.pre(y)));;

let rec moins = function (x,y) -> 
	if Nat_1.est_zero(x)
		then y
		else if Nat_1.est_zero(y)
				then x
				else moins(Nat_1.pre(x), Nat_1.pre(y));; 

let rec supegal = function (x,y) -> 
	if Nat_1.est_zero(x)
		then false
		else if Nat_1.est_zero(y)
			then true
			else supegal(Nat_1.pre(x), Nat_1.pre(y));;

let rec est_puissance_de_deux = function x ->
	if Nat_1.est_zero(x)
		then true
	else if Nat_1.est_zero(Nat_1.pre(x)) (* Si x est égal à 1 *)
		then false
		else est_puissance_de_deux(Nat_1.pre(Nat_1.pre(x)));; (* Appel récusrif sur x - 2 *)

let rec string_of_nat = function x -> 
	if Nat_1.est_zero(x)
		then ""
		else "|" ^ string_of_nat(Nat_1.pre(x));; 

(* Avec l'implémentation Nat_2 *)
#load "nat_2.cmo" ;;
#install_printer affiche_naturel;;

(* Avec l'implémentation Nat_3 *)
#load "nat_3.cmo" ;;
#install_printer affiche_naturel;;