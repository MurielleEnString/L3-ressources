#Programme qui utilise une fonction pgcd
#auteur : Thomas Minier


	.text
	.globl __start

__start:
		li $a0, 221
		li $a1, 782
		jal pgcd
	
		move $a0, $v0
		li $v0, 1
		syscall #affichage du résultat de max(3,7)
	
		#exit
		li $v0, 10
		syscall

#---------------------------------------
#------------ Fonctions ----------------
#---------------------------------------

max:		#fonction max($a0, $a1)
ifmax:		blt $a0, $a1,elsemax
		move $v0, $a0
		b endifmax
	
elsemax:	move $v0, $a1

endifmax:	jr $ra

max4:		#fonction max4($a0, $a1, $a2, $a3)
		# création d'un cadre de piles de 24 octets
		#on stocke $ra dans 8oct (sur 4 oct + 4oct vides)
		#on stocke l'appel à max sur 16oct
		sub $sp, $sp, 24 #réservation des 24 octets pour le cadre de pile
		sw $ra, 16($sp) #on stocke l'adresse de retour pour permettre le retour dans __start plus tard
		
		jal max #appel à max($a0, $a1) = max(a,b)
		
		move $a0, $v0 #stockage de max($a0, $a1) dans $a0
		move $a1, $a2
		jal max # appel à max($a0,$a1) = max(max(a,b),c)
		
		move $a0, $v0
		move $a1, $a3
		jal max #appel à max($a0, $a1) = max(max(max(a,b),c),d)
		
		lw $ra, 16($sp) #on remet $ra à sa valeur intiale pour permettre le retour dans __start
		add $sp, $sp, 24 #destruction du cadre de pile
		jr $ra #retour dans __start

pgcd:		#fonction pgcd($a0, $a1)
		#création du cadre de piles (24 octets)
		sub $sp, $sp, 24 #réservation des 24 octets pour le cadre de pile
		sw $ra, 16($sp) #on stocke l'adresse de retour pour permettre le retour dans __start plus tard
		
ifpgcd:		bnez $a1, elsepgcd
		move $v0, $a0
		b endifpgcd

elsepgcd:	
		move $t0, $a1 #$t0 = b
		rem $t1, $a0, $a1 #$t1 = rem(a,b)
		
		#chargement des paramètres
		move $a0, $t0
		move $a1, $t1
		
		jal pgcd

endifpgcd:	lw $ra, 16($sp) #on remet $ra à sa valeur intiale pour permettre le retour dans __start
		add $sp, $sp, 24 #destruction du cadre de pile
		jr $ra #retour dans __start



