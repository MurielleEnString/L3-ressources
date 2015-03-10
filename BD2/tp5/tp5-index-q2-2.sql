/* TP 5 - Les index - question 2, partie 2 */
/* Auteur : Thomas Minier, groupe 601A */

-- Création d'un index sur idcl
CREATE INDEX index_avis ON avis(idcl);

-- Explication de la requête : select * from avis where note > 10 ;
explain plan for select * from avis where note > 10 ;
select * from table(dbms_xplan.display);

-- Explication de la requête : select * from avis where round(note,2) > 10 ;
explain plan for select * from avis where round(note,2) > 10 ;
select * from table(dbms_xplan.display);