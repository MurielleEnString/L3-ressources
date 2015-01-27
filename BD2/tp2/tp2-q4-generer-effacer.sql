/* Script correspondant à la question Q4 */
/* Il génère un fichier effacer.sql qu'il suffit d'exécuter pour vider les tables */
/* Auteur : Thomas Minier, groupe 501A */
set echo off
spool effacer.sql
remark Définition des paramètres de SqlPlus
set feedback off
set heading off
set pagesize 0
set linesize 50
remark Génération du fichier effacer.sql
SELECT 'DELETE FROM ' || table_name || ';'
FROM USER_TABLES;
spool off
set echo on