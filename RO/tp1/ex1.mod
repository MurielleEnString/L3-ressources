/*
	Exercice 1 du TP 1 - Adapation du 1.1 vu en TD
	Modèle complètement implicite
	Auteur : Thomas Minier, groupe 601A
*/

# Déclaration des ensembles utilisés

	param tailleM; # nombre de casquettes
	set M := 1..tailleM; # ensemble des indices des casquettes

	param tailleA; # nombre d'ateliers
	set A := 1..tailleA; # ensemble des indices des ateliers

	param obj{M}; # coefficients de la fonction objectif
	param coeffcontr{A,M}; # coefficients des membres de gauche des contraintes
	param mdroite{A}; # coefficients des membres de droite

# Déclaration des variables

	var x{M} >= 0;

# Fonction objectif

	maximize profit : sum{j in M} obj[j]*x[j];

# Contraintes

	s.t. HeuresParAtelier{i in A} : sum{j in M} coeffcontr[i,j] * x[j] <= mdroite[i];

# Résolution 
	solve;

# Affichage des résultats
	display : x;	# affichage "standard" des variables
	display : 'z=',sum{j in M} obj[j]*x[j]; # affichage de la valeur optimale

# Données du problème
data;

	param tailleM := 2;

	param tailleA := 2;

	param obj := 1 12 2 20;

	param coeffcontr : 1 2 :=
						1 0.2 0.4
						2 0.2 0.6;

	param mdroite := 1 400 2 800;

end;