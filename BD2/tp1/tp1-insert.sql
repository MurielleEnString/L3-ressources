/* Requêtes d'insertion dans les tables crées précédemment */
/* Auteur : Thomas Minier, groupe 501A */

/* Insertion dans la table Clients */

INSERT INTO Clients VALUES (
	0,
	'Gaultier',
	'Pierre',
	'6 rue du Zoo',
	'06-666-666'
);

INSERT INTO Clients VALUES (
	1,
	'Giraudet',
	'Alexis',
	'8 rue de la Galinette',
	'09-999-999'
);

/* Insertion dans la table Livres */

INSERT INTO Livres VALUES (
	'R666E',
	'Tokyo Story',
	'Bill Kaulitz',
	'Epouvante'
);

INSERT INTO Livres VALUES (
	'L56EY',
	'Thug life',
	'Danil Ishutin',
	'Autobiographie'
);

INSERT INTO Livres VALUES (
	'R0CK7',
	'Ma vie mon oeuvre',
	'Silvester Stalone',
	'Autobiographie'
);

/* Insertion dans la table Achats */

/* La personne "Pierre" achète le livre "Tokyo Story" */
INSERT INTO Achats VALUES (
	0,
	'R666E',
	date '2014-05-12'
);

/* La personne "Pierre" achète le livre "Ma vie mon oeuvre" */
INSERT INTO Achats VALUES (
	0,
	'R0CK7',
	date '2014-12-07'
);

/* La personne "Alexis" achète le livre "Thug life" */
INSERT INTO Achats VALUES (
	1,
	'L56EY',
	date '2014-12-05'
);

/* Insertion dans la table Avis */

/* La personne "Pierre" donne son avis sur le livre "Tokyo Story" */
INSERT INTO Avis VALUES (
	0,
	'R666E',
	20,
	'Ma vie a change apres l avoir lu'
);

/* La personne "Pierre" donne son avis sur le livre "Ma vie mon oeuvre" */
INSERT INTO Avis VALUES (
	0,
	'R0CK7',
	16.75,
	'Tres profond'
);

/* La personne "Alexis" donne son avis sur le livre "Thug life" */
INSERT INTO Avis VALUES (
	1,
	'L56EY',
	5,
	'Peu credible, j ai prefere le tome 1'
);