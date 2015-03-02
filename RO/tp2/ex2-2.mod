/*
	Exercice 2 du TP 2, partie 2
	Modèle complètement implicite
	Auteur : Thomas Minier, groupe 601A
*/

# Déclaration des ensembles utilisés

	param tailleE; # nombre d'entrepôts
	set E := 1..tailleE; # ensemble des entrepôts

	param tailleP; # nombre de pourcentages de livraison
	set P := 1..tailleP; # ensemble des pourcentages de livraison

	param cout{E}; # Vecteur des coûts de construction des entrepôts

	param capacite{E}; # Vecteur des capacités des entrepôts

	param demande{P}; # Vecteur des demandes des clients

	param coutCentrale{E,P}; # Vecteur des demandes d'une centrale par entrepôt

# Déclaration des variables

	var b{E} binary;
	var p{E,P} >= 0;

# Fonction objectif

	minimize profit : sum{i in E}(cout[i]*b[i] + sum{j in P}(p[i,j]*coutCentrale[i,j]));

# Contraintes

	s.t. SousContrA{i in E} : sum{j in P} p[i,j]*demande[j] <= capacite[i]*b[i];
	s.t. SousContrB{j in P} : sum{i in E} p[i,j] = 1;

# Résolution 
	solve;

# Affichage des résultats
	display : b;	# affichage "standard" des variables
	display : p;
	display : "objectif : ", sum{i in E}(cout[i]*b[i] + sum{j in P}(p[i,j]*coutCentrale[i,j]));
