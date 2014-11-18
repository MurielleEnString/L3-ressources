#Programme calculant la suite de Fibonacci
#auteur : Thomas Minier

	.text
	.globl __start
	
__start:
	li $a0, 7
	jal fibo #appel à fibo(7)
	
	move $a0, $v0
	li $v0, 1
	syscall #affichage du résultat de fibo(7)
	
	#exit
	li $v0, 10
	syscall
	
#---------------------------------------
#------------ Fonctions ----------------
#---------------------------------------

fibo: 	#fonction fibo($a0)
	#création du cadre de piles (24 octets)
	sub $sp, $sp, 24 #réservation des 24 octets pour le cadre de pile
	sw $ra, 16($sp) #on stocke l'adresse de retour pour permettre le retour dans __start plus tard
	
if1: 	bnez $a0, else
	li $t0, 0
	move $v0, $t0 # return fibo(0) = 0
	b endif
	
if2: 	bne $a0, 1, else
	li $t0, 1
	move $v0, $t0 #return fibo(1) = 1
	b endif

else:	sub $t0, $a0, 1
	sub $t1, $a0, 2
	
	#appel à fibo(n-1)
	move $a0, $t0 #$a0 -> $sp + 24/ $vo -> $sp +20
	jal fibo
	move $t2, $v0 #$t2 = fibo(n-1)
	
	#appel à fibo(n-2)
	move $a0, $t1
	jal fibo
	move $t3, $v0 #$t3 = fibo(n-2)
	
	add $v0, $t2, $t3 #return fibo(n-1) + fibo(n-2)

endif:	lw $ra, 16($sp) #on remet $ra à sa valeur intiale pour permettre le retour dans __start
	add $sp, $sp, 24 #destruction du cadre de pile
	jr $ra #retour dans __start