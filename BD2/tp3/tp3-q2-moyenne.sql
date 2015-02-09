/* TP 3 - Exercice 1 - question 2 */
/* Auteur : Thomas Minier, groupe 501A */

-- Procédure mettant à jour la moyenne d'un livre donné
CREATE PROCEDURE maj_moyenne 
	(id_livre IN Livre.refl%type) AS
	sql_stmt VARCHAR2(400);
	moyenne NUMBER;
	nb_livres NUMBER;
	no_livre_found EXCEPTION;
BEGIN
	-- Levée de l'exception si le livre n'existe pas
	SELECT COUNT(*) into nb_livres
	FROM Livres
	WHERE refl = id_livre;

	IF (nb_livres = 0) THEN
		RAISE no_livre_found;
	END IF;

	-- Calcul de la moyenne
	SELECT AVG(note) into moyenne
	FROM Avis
	WHERE refl = id_livre;
	
	-- Création et exécution de la requête
	sql_stmt := 'UPDATE Livres SET note_moy = :moy WHERE refl = :idl';
	EXECUTE IMMEDIATE sql_stmt USING moyenne, id_livre;
EXCEPTION
	WHEN no_livre_found THEN 
		dbms_output.put_line('Erreur : cet id n est associé à aucun livre');
END;

-- Trigger mettant à jour la moyenne d'un livre dès l'ajout d'un nouvel avis
CREATE OR REPLACE TRIGGER trg_avis
	BEFORE INSERT OR UPDATE ON Avis -- Après l'insertion/modification dans la table Avis
	FOR EACH ROW
BEGIN
	-- Appel de la procédure sur le livre dont on a ajouté un avis
	maj_moyenne(:new.refl);
END;