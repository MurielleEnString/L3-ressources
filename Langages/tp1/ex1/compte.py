# -*- coding: utf-8 -*-
import sys
import re

n = 0

#on itère sur chaque ligne du fichier récupéré via l'entrée standard
for line in sys.stdin:
	tab = line.split(" ")
    #tab = re.split('\ [A..z]', line)
	n += len(tab)
print(n)
