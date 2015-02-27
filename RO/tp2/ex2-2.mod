/*
	Exercice 2 du TP 2, partie 2
	Modèle complètement implicite
	Auteur : Thomas Minier, groupe 601A
*/

# Déclaration des ensembles utilisés

	param tailleE; # nombre d'entrepôts
	set E := 1..tailleE; # ensemble des entrepôts

	param tailleP; # nombre de pourcentages de livraison
	set P = 1..tailleP; # ensemble des pourcentages de livraison

	param cout{tailleE}; # Vecteur des coûts de construction des entrepôts

	param capacite{tailleE}; # Vecteur des capacités des entrepôts

	param demande{tailleP}; # Vecteur des demandes des clients

	param coutCentrale{tailleE,tailleP}; # Vecteur des demandes d'une centrale par entrepôt

# Déclaration des variables

	var b{tailleE} binary;
	var p{E,P} >= 0;

# Fonction objectif

	minimize profit : sum{i in tailleE} cout[i]*b[i] + ( sum{j in tailleP} p[i,j]*coutCentrale[i,j] );

# Contraintes

	s.t. SousContrA{i in tailleE} : sum{j in tailleP} p[i,j]*demande[j] <= capacite[i]*b[i];
	s.t. SousContrB{j in tailleP} : sum{in in tailleE} p[i,j] = 1;

# Résolution 
	solve;

# Affichage des résultats
	display : b;	# affichage "standard" des variables
	display : p;
	display : "objectif : ", sum{i in tailleE} cout[i]*b[i] + ( sum{j in tailleP} p[i,j]*coutCentrale[i,j] );
