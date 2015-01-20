/* Requêtes d'insertion dans les tables crées précédemment */

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
	'Tokyo Hotel, my life',
	'Bill Kaulitz',
	'Epouvante'
);

INSERT INTO Livres VALUES (
	'L56EY',
	'Thug life',
	'Danil Ishutin',
	'Autobiographie'
);

/* Insertion dans la table Achats */
INSERT INTO Achats VALUES (
	0,
	'R666E',
	date '2014-05-12'
);

INSERT INTO Achats VALUES (
	1,
	'L56EY',
	date '2014-12-05'
);

/* Insertion dans la table Avis */
INSERT INTO Avis VALUES (
	0,
	'R666E',
	20,
	'Ma vie a changé après l avoir lu'
);

INSERT INTO Avis VALUES (
	1,
	'L56EY',
	5,
	'Peu crédible, j ai préféré le tome 1'
);