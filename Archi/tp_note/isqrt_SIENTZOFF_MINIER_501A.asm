# TP noté de MIPS
# Exercice 1
# Auteurs : Benjamin SIENTZOFF & Thomas MINIER, groupe 501A
	
	.data
	
	.text
	.globl __start
	
__start:
	jal main # Appel à la fonction principale
	
	# exit()
	li $v0, 10
	syscall

#----------------------------------
# ----------- Fonctions -----------
#----------------------------------

#----------------------------------
# Fonction principale
#----------------------------------
main:
	# création du cadre de pile, car main appelle une autre fonction, isqrt, avec un paramètre
	sub $sp, $sp, 24 # on réserve 24 octets pour le cadre de pile de la fonction
	sw $ra, 16($sp) # On sauvegarde $ra dans le bloc R du cadre de main
	
	# chargement des données dans les paramètres pour le premier appel de isqrt
	li $a0, 45 # on charge le paramètre pour l'appel à isqrt(45)
	jal isqrt # appel à isqrt(45)
	
	move $t0, $v0 #on stocke le résultat de isqrt(45) dans $t0, car on va utiliser $v0 pour l'affichage
	
	# affichage du résultat de isqrt(45)
	li $v0, 1 # on précise qu'on veut utiliser l'appel système print_int
	move $a0, $t0 # on charge la valeur à afficher dans $a0
	syscall # on affiche le résultat de isqrt(45) avec un appel système
	
	# chargement des données dans les paramètres pour le second appel de isqrt
	li $a0, 13 # on charge le paramètre pour l'appel à isqrt(13)
	jal isqrt # appel à isqrt(13)
	
	move $t1, $v0 #on stocke le résultat de isqrt(13) dans $t1, car on va utiliser $v0 pour l'affichage
	
	# affichage du résultat de isqrt(13)
	li $v0, 1 # on précise qu'on veut utiliser l'appel système print_int
	move $a0, $t1 # on charge la valeur à afficher dans $a0
	syscall # on affiche le résultat de isqrt(13) avec un appel système
	
	# fin de la fonction
	lw $ra, 16($sp) # On repositione $ra à son emplacement initial
	add $sp, $sp, 24 # On détruit le cadre de pile de main
	jr $ra # On retourne au code de l'appelant

#----------------------------------	
# Fonction isqrt, qui prend en paramètre un entier n non signé 
# et retourne un booléen (représenté sous la forme d'un entier, 0 ou 1)
#----------------------------------
isqrt:
	# création du cadre de pile, car isqrt appelle une autre fonction, isqrt_aux, avec deux attributs
	sub $sp, $sp, 24 # on réserve 24 octets pour le cadre de pile de la fonction
	sw $ra, 16($sp) # On sauvegarde $ra dans le bloc R du cadre de isqrt
	sw $a0, 24($sp) # sauvegarde de $a0 dans le bloc P de l'appelant

	
if_sqrt: # si n != 0, on passe au else. Sinon, on passe au then
	bnez $a0, else_sqrt
	
then_sqrt: # on retourne 0
	li $v0, 0
	b endif_sqrt 
	
else_sqrt: # on charge les données pour l'appel à isqrt_aux(n, n)
	move $a1, $a0
	jal isqrt_aux # appel à isqrt_aux(n , n), dont on retournera le résultat

endif_sqrt:	
	# fin de la fonction
	lw $ra, 16($sp) # on repositione $ra à son emplacement initial
	lw $a0, 24($sp) # on repositione $a0 à son emplacement initial
	add $sp, $sp, 24 # On détruit le cadre de pile de isqrt
	jr $ra # On retourne au code de l'appelant
	
#----------------------------------	
# Fonction isqrt_aux, qui prend en paramètre deux entiers non signés, n et xk, et 
# retourne un booléen (représenté sous la forme d'un entier, 0 ou 1)
#----------------------------------
isqrt_aux:
	# création du cadre de pile, car isqrt_aux s'appelle elle-même
	sub $sp, $sp, 32 # on réserve 32 octets pour le cadre de pile de la fonction
	sw $ra, 16($sp) # On sauvegarde $ra dans le bloc R du cadre de isqrt_aux
	sw $s0, 20($sp) # On sauvegarde $s0 dans le bloc R du cadre de isqrt_aux
	sw $s1, 24($sp) # On sauvegarde $s1 dans le bloc R du cadre de isqrt_aux
	sw $a0, 32($sp) # sauvegarde de $a0 dans le bloc P de l'appelant
	sw $a1, 36($sp) # sauvegarde de $a1 dans le bloc P de l'appelant
	
	# on calcule xk1 et on le stocke dans $s0
	# on le stocke dans $s0 car c'est une variable propre à la fonction et non partagée
	divu $s0, $a0, $a1 # $s0 =  n / xk
	# on stocke la valeur 2 dans $s1, car divu n'accepte pas de valeur immédiate
	li $s1, 2
	divu $s0, $s0, $s1 # $s0 = ( n / xk ) / 2
	addu $s0, $a1, $s0 # $s0 = xk + ( ( n / xk ) / 2 )
	
if_sqrt_aux: # si xk1 < xk, on passe au else. Sinon, on passe au then
	bltu $s0, $a1, else_sqrt_aux
	
then_sqrt_aux: # on retourne xk
	move $v0, $a1
	b endif_sqrt_aux
	
else_sqrt_aux:
	# on charge le deuxième paramètre pour l'appel récusrif, car le premier paramètre ne change pas
	move $a1, $s0
	jal isqrt_aux # appel récursif à isqrt_aux
	
endif_sqrt_aux:	
	# fin de la fonction
	lw $ra, 16($sp) # on repositione $ra à son emplacement initial
	lw $s0, 20($sp) # on repositione $s0 à son emplacement initial
	lw $s1, 24($sp) # on repositione $s1 à son emplacement initial
	lw $a0, 32($sp) # on repositione $a0 à son emplacement initial
	lw $a1, 36($sp) # on repositione $a1 à son emplacement initial
	add $sp, $sp, 32 # On détruit le cadre de pile de isqrt_aux
	jr $ra # On retourne au code de l'appelant