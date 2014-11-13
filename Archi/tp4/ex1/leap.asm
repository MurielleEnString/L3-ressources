# Feuille de TP 4 -- X5I0030, Faculté des sciences et des Techniques de Nantes
# Auteur: Frédéric Goualard <Frederic.Goualard@univ-nantes.fr>

	.data
invite_str:	.asciiz	"Année ? "
bissextile:	.asciiz "Bissextile"
pas_bissextile:	.asciiz "Pas bissextile"

	.text
	.globl __start
	
__start:
	li $v0, 4 # $v0 = 4 <=> instruction système "print_string"
	la $a0, invite_str
	syscall
	
	li $v0, 5 # $v0 = 5 <=> instruction système "read_int"
	syscall
	move $t0, $v0

#si non divisble par 100, alors peut être bissextile
if1:	rem $t1, $t0, 100
	bnez $t1, else1
then1: 
#si divisble, par 100, on teste si divisble par 400. Si oui, alors bissextile, sinon, non bissextile
if3:	rem $t1,$t0,400
	bnez $t1, else2
then3: #elle est bissextile, on affiche le résultat
	la $a0, bissextile
	li $v0, 4
	syscall
	b endif3

else1:

#si divisble par 4, alors bissextile
if2:
	rem $t1, $t0, 4
	bnez $t1, else2
then2: #elle est bissextile, on affiche le résultat
	la $a0, bissextile
	li $v0, 4
	syscall
	b endif2
else2: #elle n'est pas bissextile, on affiche le résultat
	la $a0, pas_bissextile
	li $v0, 4
	syscall

endif3:
endif2:
endif1:
	
	# exit()
	li $v0, 10
	syscall
