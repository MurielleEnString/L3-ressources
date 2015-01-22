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

let rec nat_of_int = function x -> if x = 0
									then Nat_1.zero()
									else Nat_1.suc(nat_of_int(x - 1));;

let rec plus = function (x,y) -> if Nat_1.est_zero(x)
									then y
									else plus(Nat_1.pre(x), Nat_1.suc(y));;

let rec fois = function (x,y) -> if Nat_1.est_zero(y)
									then Nat_1.zero()
									else plus(x, fois(x, Nat_1.pre(y)));;

let rec moins = function (x,y) -> if ;;

(* Avec l'implémentation Nat_2 *)
#load "nat_2.cmo" ;;
#install_printer affiche_naturel;;

(* Avec l'implémentation Nat_3 *)
#load "nat_3.cmo" ;;
#install_printer affiche_naturel;;