/* TP 3 - Exercice 3 - question 2 */
/* Auteur : Thomas Minier, groupe 501A */

CREATE OR REPLACE TRIGGER trg_avis_propose_parcours
	AFTER INSERT IN Achats
	FOR EACH ROW
DECLARE
	CURSOR c1 IN
		SELECT *
		FROM ( Achats NATURAL JOIN inscrip_parcours ) NATURAL JOIN Parcours
		WHERE genre IN (
							SELECT genre
							FROM Livres
							WHERE refl = :new.refl
						)
			AND  sysdate <= date_deb;
	row c1%rowtype;
BEGIN

	-- Affichage des parcours proposés
	FOR row IN c1 LOOP
		dbms_output.put_line("Parcours : " || row.intitulep);
	END LOOP;

END; /