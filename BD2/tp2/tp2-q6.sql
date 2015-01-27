/* Script correspondant à la question Q6 */
/* Auteur : Thomas Minier, groupe 501A */
set headsep !

-- Création de l'entête
ttitle 'Achats des clients au 28 janvier 2013'
btitle 'crée par Thomas Minier, groupe 501A'

-- Formattage des colonnes
column idcl format 999
column idcl heading 'Idcl'

column dateachat format a20
column dateachat heading "Date d'achat"

column genre format a20 word_wrapped
column genre heading 'Genre'

column prix format 999.9
column prix heading "Prix"

-- Ajout du calcul de la somme & de la moyenne
break on idcl skip 1 on report
compute avg sum of prix on idcl

-- Autres paramètres
set linesize 80
set pagesize 30
set newpage 0
set feedback off

-- Début de l'enregistrement dans le fichier "2013-01-28-achats.lst"
spool 2013-01-28-achats.lst

SELECT idcl, dateachat, genre, prix
FROM Livres NATURAL JOIN Achats
GROUP BY idcl, dateachat, genre, prix;

spool off
-- Fin de l'enregistrement