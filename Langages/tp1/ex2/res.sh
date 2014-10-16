#commandes grep de l'ex 2

#1
grep -Eon '\b[pP][[:alpha:]]*e\b' germinal.html

#2
grep -Eon '\b[[:digit:]]+\b' germinal.html

#3
grep -Eon '\b[rR]egard[[:alpha:]]+\b' germinal.html

#4
grep -Eon '\b[A-Z][[:alpha:]]*\b' germinal.html

#5 marche pas
grep -Eon '\b[[:alpha:]]*t{2}[[:alpha:]]*\b' germinal.html
