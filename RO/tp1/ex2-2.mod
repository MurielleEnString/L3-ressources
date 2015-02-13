/*
	Exercice 2, première version du TP 1 
	Adapation du 1.4, partie 2, vu en TD
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
	var y{H} >= 0 integer;

# Fonction objectif

	minimize profit : sum{j in H} y[j];

# Contraintes
	
	s.t. NbMaxInfirmieres : sum{i in H} x[i] <= 80;
	s.t. MinInfirmieres{i in I} : ( y[i] + x[i] +  x[((i - 2)mod 12) + 1] + x[((i - 4)mod 12) + 1] + x[((i - 5)mod 12) + 1] ) >= mdroite[i];
	s.t. HeuresSupp{i in I}: 0 <= y[i] <= x[((i + 7)mod 12) + 1];

# Résolution 
	solve;

# Affichage des résultats
	display : x;	# affichage "standard" des variables
	display : 'z=',sum{j in H} y[j]; # affichage de la valeur optimale

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