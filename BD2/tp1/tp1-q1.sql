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
SELECT refl, note
FROM Livres NATURAL JOIN Avis
GROUP BY refl, note
HAVING SUM(note)/COUNT(refl) >= 16;

/* Question n°3 */
SELECT *
FROM Clients NATURAL JOIN Avis
WHERE commentaire = '';