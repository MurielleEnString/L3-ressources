(*
Auteur : Thomas Minier
On réalise les fonctions suivantes :
	plus : naturel * naturel -> naturel
	fois : naturel * naturel -> naturel
	moins : naturel * naturel -> naturel (*...*)
	supegal : naturel * naturel -> bool
	est_puissance_de_deux : naturel -> bool
	log_base_deux : naturel -> naturel (*...*)
	est_pair : naturel -> bool
	nat_of_int : int -> naturel (*...*)
	int_of_nat : naturel -> int
	string_of_nat : naturel -> string
*)

(* Avec l'implémentation Nat_2 *)
#load "nat_2.cmo" ;;
open Nat_2;;
#install_printer affiche_naturel;;

let rec nat_of_int = function x ->
	if x = 0
		then zero()
		else if x = 1
			then un()
			else sucsuc(nat_of_int(x - 2));;

let rec int_of_nat = function x ->
	if est_zero(x)
		then 0
		else if est_un(x)
			then 1
			else 2 + int_of_nat(prepre(x));;

let rec plus_un = function x ->
	if est_zero(x)
		then un()
		else if est_un(x)
			then sucsuc(zero())
			else sucsuc(plus_un(prepre(x)));;

let rec moins_un = function x ->
	if est_zero(prepre(x))
		then un()
		else if est_un(x)
			then zero()
			else sucsuc(moins_un(prepre(x)));;

let rec plus = function (x,y) ->
	if est_zero(x)
		then y
		else if est_un(x)
			then plus_un(y)
			else plus(prepre(x), sucsuc(y));;

let rec moins = function (x,y) ->
	if est_zero(x)
		then y
		else if est_un(x)
			then moins_un(y)
			else if est_zero(y)
				then x
				else if est_un(y)
					then moins_un(x)
					else moins(prepre(x),prepre(y));;

(* ne marche pas *)
let rec fois = function (x,y) ->
	if est_zero(y)
		then zero()
		else if est_un(y)
			then x
			else plus(x, fois(x, prepre(y)));;

let rec div_deux = function x ->
	if est_zero(x) || est_un(x)
		then zero()
		else plus_un(div_deux(prepre(x)));;

let rec est_pair = function x ->
	if est_zero(x)
		then true
		else if est_un(x)
			then false
			else est_pair(prepre(x));;