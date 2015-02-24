/* TP 3 - Exercice 1 - question 1 */
/* Auteur : Thomas Minier, groupe 601A */

-- Ajout de l'attribut note_moy à la table Livres
ALTER TABLE Livres
ADD note_moy NUMBER;

-- Question a)
SET serveroutput ON
DECLARE
	id_livre Avis.refl%type;
	sql_stmt VARCHAR2(400);
	moyenne NUMBER;
	nb_livres NUMBER;
	no_livre_found EXCEPTION;
BEGIN
	id_livre := &id_livre;
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

-- Question b)
DECLARE
	CURSOR c1 IS
		SELECT refl
		FROM Livres;
	ligne c1%rowtype;
	sql_stmt VARCHAR2(400);
	moyenne NUMBER;
BEGIN

	-- Création de la requête
	sql_stmt := 'UPDATE Livres SET note_moy = :moy WHERE refl = :idl';

	-- Boucle sur tous les livres de la base
	FOR ligne IN c1 LOOP

		-- Calcul de la moyenne
		SELECT AVG(note) into moyenne
		FROM Avis
		WHERE refl = ligne.refl;
		
		-- Exécution de la requête
		sql_stmt := 'UPDATE Livres SET note_moy = :moy WHERE refl = :idl';
		EXECUTE IMMEDIATE sql_stmt USING moyenne, ligne.refl;
	END LOOP;
END;

-- Question c)
CREATE PROCEDURE maj_moyennes AS
	CURSOR c1 IS
		SELECT refl
		FROM Livres;
	ligne c1%rowtype;
	sql_stmt VARCHAR2(400);
	moyenne NUMBER;
BEGIN

	-- Création de la requête
	sql_stmt := 'UPDATE Livres SET note_moy = :moy WHERE refl = :idl';

	-- Boucle sur tous les livres de la base
	FOR ligne IN c1 LOOP

		-- Calcul de la moyenne
		SELECT AVG(note) into moyenne
		FROM Avis
		WHERE refl = ligne.refl;
		
		-- Exécution de la requête
		sql_stmt := 'UPDATE Livres SET note_moy = :moy WHERE refl = :idl';
		EXECUTE IMMEDIATE sql_stmt USING moyenne, ligne.refl;
	END LOOP;
END maj_moyennes;