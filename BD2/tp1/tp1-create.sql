/* Création des tables */
/* Auteur : Thomas Minier, groupe 501A */

CREATE TABLE Clients (
	idcl NUMBER PRIMARY KEY NOT NULL,
	nom VARCHAR2(20) NOT NULL,
	pren VARCHAR2(15) NOT NULL,
	adr VARCHAR2(30) NOT NULL,
	tel VARCHAR2(12) NOT NULL
);

CREATE TABLE Livres (
	refl VARCHAR2(10) PRIMARY KEY NOT NULL,
	titre VARCHAR2(20) NOT NULL,
	auteur VARCHAR2(20) NOT NULL,
	genre VARCHAR2(15) NOT NULL
);

CREATE TABLE Achats (
	idcl NUMBER NOT NULL REFERENCES Clients(idcl),
	refl VARCHAR2(10) NOT NULL REFERENCES Livres(refl),
	dateachat DATE NOT NULL,
	PRIMARY KEY(idcl, refl, dateachat)
);

CREATE TABLE Avis (
	idcl NUMBER NOT NULL REFERENCES Clients(idcl),
	refl VARCHAR2(10) NOT NULL REFERENCES Livres(refl),
	note NUMBER(4,2) NOT NULL,
	commentaire VARCHAR2(50) NOT NULL,
	PRIMARY KEY(idcl, refl)
);