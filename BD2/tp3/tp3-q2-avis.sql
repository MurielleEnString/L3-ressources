/* TP 3 - Exercice 2 - question 2 */
/* Auteur : Thomas Minier, groupe 501A */

CREATE OR REPLACE PROCEDURE maj_avis
	(	id_client IN Clients.idcl%type,
		ref_livre IN Livres.refl%type,
		note In Avis.note%type,
		commentaire IN Avis.commentaire%type
	)
 AS
	user_not_allowed_exception EXCEPTION;
	nb_livres NUMBER;
	sql_stmt VARCHAR2(400);
BEGIN

	--Vérification que le client a acheté le livre qu'il commente
	SELECT COUNT(idcl) into nb_livres
	FROM Achats
	WHERE idcl = id_client AND refl = ref_livre;

	IF (nb_livres = 0) THEN
		RAISE user_not_allowed_exception;
	END IF;

	--Mise à jour de l'avis
	sql_stmt := 'UPDATE Avis SET note = :n , commentaire = :c WHERE idcl = :id_client AND refl = :ref_livre';
	EXECUTE IMMEDIATE sql_stmt USING note, commentaire, id_client, ref_livre;

EXCEPTION
	WHEN user_not_allowed_exception THEN
		dbms_output.put_line('Erreur : cet utilisateur n est pas autorise a modifier cet avis.');

END; /