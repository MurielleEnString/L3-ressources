(* TP 5 - OCaml *)

#load "arbin.cmo" ;;
open Arbin ;;
open List;;

(* un arbin de test*)
let x = embranche_bin(0,
						embranche_bin(1,
										embranche_bin(3, 
														embranche_bin(4, 
																		arbin_vide(), 
																		arbin_vide()), 
														arbin_vide()),
										arbin_vide()),
						embranche_bin(2, 
										arbin_vide(), 
										arbin_vide())
					);;

(* Tests avec la fonction fold_right *)
fold_right (+) [1;2;3;4;5] 3 ;;
fold_right ( *) [1;2;3;4;5] 3 ;;

let rec plie_gauche f a lx =
	if lx = []
		then a
		else plie_gauche f (f a (hd(lx))) (tl(lx)) ;;

let rec plie_droite f lx a =
	if lx = []
		then a
		else plie_droite (f) (tl(lx)) (f (hd(lx)) a);;

(* fonction not à l'ordre supérieur *)
let not_fun f x = not(f(x)) ;;

(* pour tout x tq p(x) <=> non il existe x tq non p(x)  *)
let pour_tous p lx = not(exists (not_fun(p)) lx) ;;

(* il existe x tq p(x) <=> non pour tout x tq non p(x) *)
let il_existe p lx = not(for_all (not_fun(p)) lx) ;;

(* sans rec et en utilisant map et fold_left/fold_right *)
let pour_tous p lx = fold_left (&&) true ( map (p) (lx) ) ;;

let il_existe p lx = fold_left (||) false ( map (p) (lx) ) ;;

(* map_arbre : ('a -> 'b) -> 'a arbin -> 'b arbin *)
let rec map_arbre f a =
	if est_arbin_vide(a)
		then arbin_vide()
		else embranche_bin( f(rac(a)), ( map_arbre (f) (sag(a)) ), ( map_arbre (f) (sad(a)) ) ) ;;
