(* Réalisations des fonctions sur le type arbin *)
(* Auteur : Thomas Minier, groupe 601A *)

#load "arbin.cmo" ;;
open Arbin ;;

(* quelques arbin de test*)
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

let y = embranche_bin('a', arbin_vide(), arbin_vide());;

let z = embranche_bin((0,'a'),
							embranche_bin((3,'c'),
												embranche_bin((4,'d'), 
																	embranche_bin((5,'e'), 
																						arbin_vide(), 
																						arbin_vide()), 
																	arbin_vide()),
												arbin_vide()),
							embranche_bin((1,'b'), 
												arbin_vide(), 
												arbin_vide())
					);;

let est_arbin_feuille a = 
	est_arbin_vide(sag(a)) && est_arbin_vide(sad(a)) ;;

let rec est_complet a = 
	if est_arbin_vide(a)
		then true
		else if est_arbin_feuille(a)
			then true
			else if ( est_arbin_vide(sag(a)) || est_arbin_vide(sad(a)) ) && not(est_arbin_feuille(a))
				then  false (* cas d'une noeud avec un seul fils *)
				else est_complet(sag(a)) && est_complet(sad(a)) ;;

let rec separe_arbin a =
	if est_arbin_vide(a)
		then (arbin_vide(), arbin_vide())
		else let (rb, rc) = rac(a)
				and (bg, bd) = separe_arbin(sag(a))
				and (cg, cd) = separe_arbin(sad(a))
				in (embranche_bin(rb, bg, cg), embranche_bin(rc, bd, cd)) ;;

let rec de_meme_forme_que (a, b) =
	if est_arbin_vide(a) && est_arbin_vide(b)
		then true (* cas où les deux noeuds sont au même endroit *)
		else if est_arbin_vide(a) || est_arbin_vide(b)
			then false (* cas de deux noeuds où l'un est là mais l'autre est absent*)
			else de_meme_forme_que(sag(a), sag(b)) && de_meme_forme_que(sad(a), sad(b)) ;;
