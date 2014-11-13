#Programme indiquant combien de "e" se trouve dans une chaîne
#auteur : Thomas Minier
#le nombre d'occurences sera stocké dans $t0

	.data
mot:		.asciiz "Je suis un sacré e avec pleins de e dans mon e. J'aime mon e."
fin:		.asciiz "Nombre de 'e' dans le mot : "

	.text
	.globl __start

__start:

	li $t0, 0 #init du nombre d'occurences
	la $t1, mot #init de $t1 à l'adresse du 1er char de la chaine
	lb $t2, ($t1) #chargement du 1er char dans $t2

while: 	beq $t2, 0, endwhile #si t2 n'est pas le char de terminaison

if:	bne $t2, 101, endif #si le char courant n'est pas autre chose que 'e' (code decimal 101)
	add $t0, $t0, 1 #on incrémente $t0 (nb d'occurences)
endif:
	add $t1, $t1, 1 #on avance sur le char suivant du mot
	lb $t2, ($t1) #on charge le nouveau char courant dans $t2
	b while
endwhile:
	
	li $v0, 4
	la $a0, fin
	syscall #affiche le message de fin	
	
	li $v0, 1
	move $a0, $t0
	syscall #affiche le nombre d'occurences
	
	#exit
	li $v0, 10
	syscall 

