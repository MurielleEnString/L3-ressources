/* TP 3 - Exercice 3 - question 1 */
/* Auteur : Thomas Minier, groupe 501A */

CREATE OR REPLACE PROCEDURE inscription_client
	(id_client IN Clients.idcl%type,
	id_parcours IN Parcours.idp%type) AS

	CURSOR c1 IN
		SELECT *
		FROM compo_parcours
		WHERE idp = id_parcours;
	row c1%rowtype;

	sql_stmt VARCHAR2(400);
	nb NUMBER;

	parcours_inexistant_exception EXCEPTION;
	client_inexistant_exception EXCEPTION;
BEGIN
	--Vérification que le parcours existe bien
	SELECT COUNT(idp) into nb
	FROM Parcours
	WHERE idp = id_parcours;

	IF (nb = 0) THEN
		RAISE parcours_inexistant_exception;
	END IF;

	--Vérification que le client existe bien
	SELECT COUNT(idcl) into nb
	FROM Clients
	WHERE idcl = id_client;

	IF (nb = 0) THEN
		RAISE client_inexistant_exception;
	END IF;

	-- Insertion dans la table inscrip_parcours
	sql_stmt := 'INSERT INTO inscrip_parcours 
				VALUES (:id_cl , :id_par)';
	EXECUTE IMMEDIATE sql_stmt USING id_client, id_parcours;

	-- Insertion dans la table inscrip_evt
	sql_stmt := 'INSERT INTO inscrip_evt
				VALUES (:idcl , :idp , :id_evt)';
	FOR row IN c1 LOOP
		EXECUTE IMMEDIATE sql_stmt USING id_client, id_parcours, row.id_evt;
	END LOOP;

EXCEPTION
	WHEN parcours_inexistant_exception THEN
		dbms_output.put_line('Erreur : cet id n est associé à aucun parcours');

	WHEN client_inexistant_exception THEN
		dbms_output.put_line('Erreur : cet id n est associé à aucun client');
END inscription_client; /