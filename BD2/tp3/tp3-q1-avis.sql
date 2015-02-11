/* TP 3 - Exercice 2 - question 1 */
/* Auteur : Thomas Minier, groupe 501A */

CREATE OR REPLACE TRIGGER trg_after_ins_upd_avis_row
	BEFORE INSERT OR UPDATE ON Avis
	FOR EACH ROW
DECLARE
	user_not_allowed_exception EXCEPTION;
	nb_livres NUMBER;
BEGIN
	--Vérification que le client a acheté le livre qu'il commente
	SELECT COUNT(idcl) into nb_livres
	FROM Achats
	WHERE idcl = id_client AND refl = ref_livre;

	IF (nb_livres = 0) THEN
		RAISE user_not_allowed_exception;
	END IF;
EXCEPTION
	WHEN user_not_allowed_exception THEN
		RAISE_APPLICATION_ERROR(-20001, 'Erreur : cet utilisateur n est pas autorise a modifier cet avis.');

END; /