/* TP 5 - Les index - question 2, partie 1 */
/* Auteur : Thomas Minier, groupe 601A */

-- Explication de la requête : select * from avis where note > 10 ;
explain plan for select * from avis where note > 10 ;
select * from table(dbms_xplan.display);

-- Explication de la requête : select * from avis where round(note,2) > 10 ;
explain plan for select * from avis where round(note,2) > 10 ;
select * from table(dbms_xplan.display);