/* Ajout de l'attribut "prix" à la relation Achats */
/* Auteur : Thomas Minier, groupe 501A */

ALTER TABLE Achats
ADD prix NUMBER;

/* Ajouts des prix manquants dans la table Achats */
UPDATE Achats
SET prix = 200
WHERE refl = 'R666E' AND idcl = 0;

UPDATE Achats
SET prix = 66
WHERE refl = 'R0CK7' AND idcl = 0;

UPDATE Achats
SET prix = 15
WHERE refl = 'L56EY' AND idcl = 1;