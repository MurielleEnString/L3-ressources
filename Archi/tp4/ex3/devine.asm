#Programme MIPS affichant le nb de coups pour deviner un nombre
#le nombre à deviner sera stocké dans $t0
#le nombre saisi sera stocké dans $t1
#le nombre de coups sera stocké dans $t2
#autour : Thomas Minier

	.data
saisie:		.asciiz "Saisissez un entier positif : "
reussi:		.asciiz "Vous avez deviné correctement l'entier\n"
echec:		.asciiz "Vous n'avez pas deviné correctement l'entier. Try again !\n"
fin:		.asciiz "Nombre de coups pour deviner l'entier : "
twitter:	.asciiz "\nVoulez-vous partager votre exploit sur Twitter ?\n"

	.text
	.globl __start

__start:
	li $t0, 8 #init de l'entier à deviner
	li $t1, -1 #init du nombre saisi
	li $t2, 0 #init du nombre de coups
	
while:	beq $t0, $t1, endwhile #tant qu'on n'a pas trouvé le bon entier

	li $v0, 4
	la $a0, saisie
	syscall #affiche la demande de saisie
	
	li $v0, 5
	syscall #lit le nombre saisi
	move $t1, $v0 #stocke le nombre saisi dans $t1
	
	add $t2, $t2, 1 #on incrémente le nb de coups
	
if:	beq $t0, $t1, else #si on a bien deviné

	li $v0, 4
	la $a0, echec
	syscall #affiche le message d'échec
	b endif
	
else:	li $v0, 4
	la $a0, reussi
	syscall #affiche le message de succès
endif:
	b while
	
endwhile:

	li $v0, 4
	la $a0, fin
	syscall #affiche le message du nombre de coups	
	
	li $v0, 1
	move $a0, $t2
	syscall #affiche le nombre de coups
	
	li $v0, 4
	la $a0, twitter
	syscall #affiche le message de twitter
	
	#exit
	li $v0, 10
	syscall 