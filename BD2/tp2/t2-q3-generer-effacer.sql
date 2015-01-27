/* Script correspondant à la question Q3 */
/* Il génère un fichier effacer.sql qu'il suffit d'exécuter pour vider les tables */
/* Auteur : Thomas Minier, groupe 501A */
set echo off
spool effacer.sql
set feedback off
set heading off
set pagesize 0
SELECT 'DELETE FROM ' || table_name || ';'
FROM USER_TABLES;
spool off
set echo on
