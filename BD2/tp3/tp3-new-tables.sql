/* TP 3 - préliminaires */
/* Auteur : Thomas Minier, groupe 501A */

-- Ajout de l'attribut note_moy à la table Livres
ALTER TABLE Livres
ADD note_moy NUMBER;

-- Ajouts des nouvelles relations
CREATE TABLE Parcours (
	idp VARCHAR2(10) PRIMARY KEY NOT NULL,
	intitulep VARCHAR2(15) NOT NULL,
	genre VARCHAR2(15) NOT NULL,
	date_deb date NOT NULL
);

CREATE TABLE compo_parcours (
	idp VARCHAR2(10) NOT NULL REFERENCES Parcours(idp),
	id_evt VARCHAR2(10) NOT NULL,
	PRIMARY KEY(idp, id_evt)
);

CREATE TABLE inscrip_parcours (
	idcl NUMBER NOT NULL REFERENCES Clients(idcl),
	idp VARCHAR2(10) NOT NULL REFERENCES Parcours(idp),
	PRIMARY KEY(idcl, idp)
);

CREATE TABLE inscrip_evt (
	idcl NUMBER NOT NULL REFERENCES Clients(idcl),
	idp VARCHAR2(10) NOT NULL REFERENCES compo_parcours(idp),
	id_evt VARCHAR2(10) NOT NULL REFERENCES compo_parcours(id_evt),
	PRIMARY KEY(idcl, idp, id_evt)
);