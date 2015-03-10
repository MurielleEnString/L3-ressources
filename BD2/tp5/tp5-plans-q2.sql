/* TP 5 - Prise en main de la base - question 2 */
/* Auteur : Thomas Minier, groupe 601A */

/* Explication du plan de R1 : 
		select title 
		from publications1 
		where nb_pages > 20 ;
*/

explain plan for select title 
					from publications1 
					where nb_pages > 20 ;
select * from table(dbms_xplan.display);

/* Explication du plan de R2 : 
		select title 
		from publications1 natural join facts 
		where date_id = 2008 ;
*/

explain plan for select title 
					from publications1 natural join facts 
					where date_id = 2008 ;
select * from table(dbms_xplan.display);

/* Explication du plan de R3 : 
		select title 
		from publications1 
		where publication_id in (select publication_id from facts where date_id = 2008);
*/

explain plan for select title 
					from publications1 
					where publication_id in (select publication_id from facts where date_id = 2008);
select * from table(dbms_xplan.display);

/* Explication du plan de R4 : 
		select title 
		from publications1 natural join facts natural join collaborations natural join authors 
		where last_name= 'Rosenthal' ; 
*/

explain plan for select title 
					from publications1 natural join facts natural join collaborations natural join authors 
					where last_name= 'Rosenthal' ; 
select * from table(dbms_xplan.display);