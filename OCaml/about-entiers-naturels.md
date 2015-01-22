A propos du dossier Entiers Naturels
==========

Les *nat_1*, *nat_2* et *nat_3* correspondent à des types entiers naturels différents.   

Les fichiers *.ml* sont des fichiers d'implémentation. Ceux en *.mli* sont des fichiers d'interface.   

Les fichiers *.cmi* et *.cmo* sont des fichiers compilés, respectivement d'interface et d'implémentation.   

Si on compile un fichier d'implémentation, toutes les fonctions et tous les types seront publiques. Un fichier *.mli* permet de choisir quels types et fonctions seront utilisables.

Création du *.mli* à partir du *.ml* :
```Bash
ocamlc -i nat_1.ml > nat_1.mli
```

Comilation du *.mli* en *.cmi* :
```Bash
ocamlc nat_1.mli
```

Comilation du *.ml* en *.cmo* :
```Bash
ocamlc -c nat_1.ml
```

Charger une implémentation dans OCaml avec une directive (**utilisable uniquement au top-level**) :
```OCaml
#load "nat_1.cmo" ;;
```

Pour utiliser quelque chose qui a été chargé via **#load** (avec une écriture longue) :
```OCaml
Nat_1.pre ;;
```

Pour ouvrir le module et utiliser une écriture courte (**attention aux conflits de noms !**) :
```OCaml
open Nat_1 ;;
```

Pour installer un printer :
```OCaml
#install_printer affiche_naturel;;
```