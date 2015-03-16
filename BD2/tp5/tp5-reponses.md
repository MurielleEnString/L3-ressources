Réponses aux questions du TP 5
================

Auteur : Thomas Minier, groupe 601A

Les schémas des tables sont présents en détails dans le fichier schema-tables.lst

Prise en main de la base
--------

Q1. Pour chaque table :
* facts : Les clés primaires sont {PUBLICATION_ID, SQUAD_ID, DATE_ID, SUPPORT_ID} et les clés étrangères sont les mêmes que les clés primaires. Il est possible d'effectuer une jointure avec les tables publications, squads, dates et support.
* authors : La clé primaire est {AUTHOR_ID} et il n'y a pas de clé étrangère. Il est possible d'effectuer une jointure avec la table collaborations.
* collaborations : La clé primaire est {SQUAD_ID, AUTHOR_ID} et les clés étrangères sont les mêmes que les clés primaires. Il est possible d'effectuer une jointure avec les tables squads et authors.
* dates : La clé primaire est {DATE_ID} et il n'y a pas de clé étrangère. Il est possible d'effectuer une jointure avec la table facts.
* publications : La clé primaire est {PUBLICATION_ID} et il n'y a pas de clé étrangère. Il est possible d'effectuer une jointure avec la table facts.
* squads : La clé primaire est {SQUAD_ID} et il n'y a pas de clé étrangère. Il est possible d'effectuer une jointure avec les tables facts et collaborations.
* suport : La clé primaire est {SUPPORT_ID} et il n'y a pas de clé étrangère. Il est possible d'effectuer une jointure avec la table facts.

Q2. Les tables contiennent le nombre de lignes suivantes :
* collaborations : 1 212 896
* dates : 407
* publications 481 659
* squads : 479 540
* supports : 11 243
* facts : 473 176

Visualisation du plan d'exécution d'une requête
--------

Q1. Les différentes requêtes sont détaillées dans le fichier tp5-plans-q1.sql
	Les résultats des différentes commandes sont présentes en détail dans le fichier tp5-plans-q1.lst

	On note que, pour chaque plan, Oracle nous fournit les différentes opérations qu'il compte exécuter, 
	dans quel ordre il va les exécuter, les tables ciblées, le nombre de colonnes concernées et le coût en CPU et en temps.
	Les plans d'exécution se lisent du bas vers le haut, en terminant par l'opération n°0

	On note que les plans des requêtes R2 et R3 comptent autant d'étapes.


Q2. Les différentes requêtes sont détaillées dans le fichier tp5-plans-q2.sql
	Les résultats des différentes commandes sont présentes en détail dans le fichier tp5-plans-q2.lst

	On remarque que les différentes requêtes ont beaucoup plus d'étapes qu'avant.


Les index
--------

Pour visualiser les indexes d'une table, on utilise la commande suivante :
		select index_name 
		from user_indexes 
		where table_name = 'nom_table';

Q1.	Il n'y a aucun index défini sur les différentes tables de la base. Cela explique que les plans d'exécution des requêtes
	sur publications1 soient si longs, car Oracle ne trouve pas d'optimisation possible.

Q2.	

	1 - Les différentes requêtes sont détaillées dans le fichier tp5-index-q2-1.sql
		Les plans d'éxécution des différentes requêtes se trouvent dans le fichier tp5-index-q2-1.lst

	2 - On crée un index sur une clé primaire de la table avis, soit l'attribut idcl
		Les commandes se trouvent dans le fichier tp5-index-q2-2.sql
		Les résultats des plans d'exécution après création de l'index se trouve dans le fichier tp5-index-q2-2.lst