/*
	Exercice 2 du TP 2, partie 1
	Modèle complètement implicite
	Auteur : Thomas Minier, groupe 601A
*/

# Déclaration des ensembles utilisés

	param taille; # nombre de lignes
	set L := 1..taille; # index des lignes

	set ind; # index des variables

	set Matrice within L cross ind; # double-indice des variables et lignes	

	param obj{ind}; # Vecteur des coefficients de la fonction objectif (indicé sur les variables)

	param coeffcontr{(i,j) in Matrice}; # Matrice des coefficients définissant les membres de gauche des contraintes (double-indice)

# Déclaration des variables

	var x{ind} binary;

# Fonction objectif

	maximize profit : sum{j in ind} obj[j]*x[j];

# Contraintes

	s.t. SousContr{i in L} : sum{(i,j) in Matrice} x[j] <= 1;

# Résolution 
	solve;

# Affichage des résultats
	display : x;	# affichage "standard" des variables
	display{j in ind : x[j] = 1} : j; # affichage plus lisible  
	display : "objectif : ", sum{j in ind} obj[j]*x[j];
