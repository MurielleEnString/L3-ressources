# Feuille de TP 4 -- X5I0030, Faculté des sciences et des Techniques de Nantes
# Auteur: Frédéric Goualard <Frederic.Goualard@univ-nantes.fr>

	.data
dim:		.asciiz "dimanche"
lun:		.asciiz "lundi"
mar:		.asciiz "mardi"
mer:		.asciiz "mercredi"
jeu:		.asciiz "jeudi"
ven:		.asciiz "vendredi"
sam:		.asciiz "samedi"
jour_str: 	.word dim, lun, mar, mer, jeu, ven, sam
qjour: 		.asciiz "Jour ? "
qmois:		.asciiz "Mois ? "
qannee:		.asciiz "Année ? "
res_str:	.asciiz "Résultat: "
t:		.byte 0, 3, 2, 5, 0, 3, 5, 1, 4, 6, 2, 4


	.text
	.globl __start

__start:
	li $v0, 4
	la $a0, qjour
	syscall #demande le jour
	li $v0, 5
	syscall #lit le jour
	move $t2, $v0 #stocke le jour dans $t2

	li $v0, 4
	la $a0, qmois
	syscall #demande le mois
	li $v0, 5
	syscall #lit le mois
	move $t1, $v0 #stocke le mois dans $t1

	li $v0, 4
	la $a0, qannee 
	syscall #demande l'année
	li $v0, 5
	syscall #lit l'annéee
	move $t0, $v0 #stocke l'année dans $t0

	
if:	bge $t1, 3, endif #si mois >= 3, on sort du if
then:	sub $t0, $t0, 1 #sinon, on retire 1 à l'année
endif:
	move $t3, $t0 #on copie l'année dans $t3
	srl $t4, $t0, 2 #on shift 2x à droite $t0 <=> on divise l'année par 4 et on stocke dans $t4
	add $t3, $t3, $t4 #on ajoute $t4 à $t3 <=> on fait année * 1.25 et on stocke dans $t3
	div $t4, $t0, 100 #on divise l'année par 100 et on stocke dans $t4
	sub $t3, $t3, $t4 #on soustrait $t4 à $t3 (année*1.25 - annee/100)
	srl $t4, $t4, 2 #on shift 2x à droite $t4 <=> on divise $t4 par 4
	add $t3, $t3, $t4 #on ajoute $t4 à $t3 et on stocke dans $t3
	
	la $t5, t #on stocke l'adresse du tableau t dans $t5 (pour faire un parcours de t)
	sub $t4, $t1, 1 #on soustrait $t1 à $t4 ($t4 - mois) et on stocke dans $t4
	add $t4, $t4, $t5 #on avance à la case n°$t4 du tableau
	lb $t4, ($t4) #on charge le contenu de cette case dans $t4
	add $t3, $t3, $t4 #on ajoute $t4 à $t3 ($t3 + t[$t4]) et on stocke dans $t3
	add $t3, $t3, $t2 #on ajoute $t2 à $t3 ($t3 + jour) et on stocke dans $t3
	rem $t3, $t3, 7 #on calcule le reste de $t3/7 et on stocke dans $t3
	sll $t3, $t3, 2	#on shift 2x à gauche $t3 <=> on multiplie $t3 par 4 et on stocke dans $t3

	la $t5, jour_str #on stocke l'adresse du tableau jour_str dans $t5 (pour faire un parcours de jour_str)
	add $t5, $t5, $t3 #on avance à la case n°$t3 du tableau 
	lw $a0, ($t5) #on charge le contenu de cette case dans $a0
	li $v0, 4
	syscall #on fait afficher le contenu de la case n°$t3 de jour_str
	
	#exit
	li $v0, 10
	syscall 
