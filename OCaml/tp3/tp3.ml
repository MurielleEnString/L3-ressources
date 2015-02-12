(* Auteur : Thomas Minier, groupe 601A *)

open List ;;

(* Variables de test *)
let x = [1;2;3;4;5;6;7;8;9];;
let y = [[1;2;3];[4;5]] ;;

let rec dernier lx =
	if tl(lx) = []
		then hd(lx)
		else dernier(tl(lx)) ;;

let rec sans_dernier lx =
	if tl(lx) = []
		then []
		else hd(lx)::sans_dernier(tl(lx));; 

let rec dernier_sans_dernier lx =
	if tl(lx) = []
		then (hd(lx), [])
		else let (x,y) = dernier_sans_dernier(tl(lx))
			in (x, hd(lx)::y) ;;

let rec ajout_en_fin (x, lx) =
	if lx = []
		then [x]
		else hd(lx)::ajout_en_fin(x, tl(lx));;

let rec inverse lx =
	if tl(lx) = []
		then hd(lx)
		else inverse(tl(lx))@[hd(lx)];;

let rec colle (la, lb) =
	if la = []
		then if lb =  []
			then []
			else lb
		else if lb = []
			then la
			else hd(la)::colle(tl(la), lb) ;;

let rec colle_toutes lx =
	if lx = []
		then []
		else if hd(lx) = []
			then colle_toutes(tl(lx))
			else hd(hd(lx))::colle_toutes(tl(hd(lx))::tl(lx)) ;;