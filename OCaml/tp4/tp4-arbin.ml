(* Réalisation des fonctions sur le type arbin *)
(* Auteur : Thomas Minier, groupe 601A *)

#load "arbin.cmo" ;;
open Arbin ;;
open List ;;

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

let maxi (x,y) = max x y;;

let rec pow (x,y) = 
	if y = 0
		then 1
		else x * pow(x, y - 1) ;;

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

(* fonctions auxiliaires pour list_of_arbin *)
let rec entre (a,b) = 
	if a > b
		then arbin_vide()
		else embranche_bin(a, entre(2*a, b), entre(2*a + 1, b)) ;;

let rec rassemble_bin (a,b) =
	if est_arbin_vide(a)
		then arbin_vide()
		else embranche_bin((rac(a), rac(b)), rassemble_bin(sag(a), sag(b)), rassemble_bin(sad(a), sad(b))) ;;

let rec rgd a =
	if est_arbin_vide(a)
		then []
		else [rac(a)]@rgd(sag(a))@rgd(sad(a)) ;;

let rec hauteur_bin a =
	if est_arbin_vide(a)
		then 0
		else 1 + maxi(hauteur_bin(sag(a)), hauteur_bin(sad(a))) ;;

let list_of_arbin a =
	let h = hauteur_bin(a)
		in let etqs = entre(1, pow(2,h + 1) - 1)
			in let arbre_couples = rassemble_bin(a, etqs)
				in rgd(arbre_couples) ;;

(* fonctions auxiliaires pour arbin_of_list *)

(* donne le couple (la liste entre les indices x et y , le reste de la liste) *)
let rec sub_list (x, y, lx) = 
	if lx = []
		then ([], [])
		else if x = y
			then ( [], lx)
			else let (a, b) = sub_list(x + 1, y, tl(lx))
					in ([hd(lx)]@a, b) ;;
 
let rec arbin_of_list lx =
	if lx = []
		then arbin_vide()
		else let (racine, etq) = hd(lx)
				in let (arbre_gauche, arbre_droit) = sub_list(0, 2 * etq + 1, tl(lx))
					in embranche_bin(racine, arbin_of_list(arbre_gauche), arbin_of_list(arbre_droit)) ;;
 