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

(* Avec l'implémentation Nat_1 *)
#load "nat_1.cmo" ;;
open Nat_1;;
#install_printer affiche_naturel;;

let rec nat_of_int = function x -> 
	if x = 0
		then zero()
		else suc(nat_of_int(x - 1));;

let rec int_of_nat = function x -> 
	if est_zero(x)
		then 0
		else 1 + int_of_nat(pre(x));;

let rec plus = function (x,y) -> 
	if est_zero(x)
		then y
		else plus(pre(x), suc(y));;

let rec fois = function (x,y) -> 
	if est_zero(y)
		then zero()
		else plus(x, fois(x, pre(y)));;

let rec moins = function (x,y) -> 
	if est_zero(x)
		then y
		else if est_zero(y)
				then x
				else moins(pre(x), pre(y));; 

let rec supegal = function (x,y) -> 
	if est_zero(x)
		then false
		else if est_zero(y)
			then true
			else supegal(pre(x), pre(y));;

let rec est_pair = function x ->
	if est_zero(x)
		then true
		else if est_zero(pre(x)) (* Si x est égal à 1 *)
			then false
			else est_pair(pre(pre(x)));; (* Appel récursif sur x - 2 *)

(* div_deux : naturel -> naturel *)
let rec div_deux = function x -> 
	if est_zero(x) || est_zero(pre(x)) (* x = 0 ou 1 *)
		then zero()
	else if est_zero(pre(pre(x))) (* x = 2 *)
		then suc(zero())
		else suc(div_deux(pre(pre(x))));;

let rec est_puissance_de_deux = function x ->
	if est_zero(x) || est_zero(pre(x)) (* x = 0 ou 1 *)
		then true
		else if est_pair(x) 
			then est_puissance_de_deux(div_deux(x))
			else false;;

let rec log_base_deux = function x ->
	if est_zero(pre(x)) (* x = 0 *)
		then zero()
		else suc(log_base_deux(div_deux(x)));;

let rec string_of_nat = function x -> 
