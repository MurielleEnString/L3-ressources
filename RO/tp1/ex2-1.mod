/*
	Exercice 2, première version du TP 1 
	Adapation du 1.4, partie 1, vu en TD
	Modèle complètement implicite
	Auteur : Thomas Minier, groupe 601A
*/

# Déclaration des ensembles utilisés

	param tailleH; # nombre de tranches horaires
	set H := 1..tailleH; # ensemble des indices des tranches horaires

	param tailleI; # nombre d'infirmières
	set I := 1..tailleI; # ensemble des indices des nb d'infirmières

	param mdroite{I}; # coefficients des membres de droite

# Déclaration des variables

	var x{H} >= 0 integer;

# Fonction objectif

	minimize profit : sum{j in H} x[j];

# Contraintes

	s.t. MinInfirmieres{i in I} : ( x[i] +  x[((i - 2)mod 12) + 1] + x[((i - 4)mod 12) + 1] + x[((i - 5)mod 12) + 1] ) >= mdroite[i];

# Résolution 
	solve;

# Affichage des résultats
	display : x;	# affichage "standard" des variables
	display : 'z=',sum{j in H} x[j]; # affichage de la valeur optimale

# Données du problème
data;

	param tailleH := 12;

	param tailleI := 12;

	param mdroite := 1 35 
					2 40 
					3 40 
					4 35 
					5 30 
					6 30
					7 35
					8 30
					9 20
					10 15
					11 15
					12 15;

end;