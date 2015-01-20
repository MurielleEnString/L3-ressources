/* Requêtes effectuées sur la base */

/* Question n°1 */
SELECT *
FROM Livres l
WHERE (
		SELECT COUNT(refl)
		FROM Achats
		WHERE refl = l.refl
		) >= 10000;

/* Question n°2 */
SELECT *
FROM Livres
WHERE ((

		)/(
			SELECT COUNT(refl)
			FROM Livres
		))>= 16;

/* Question n°3 */
SELECT *
FROM Clients NATURAL JOIN Avis
WHERE commentaire = '';