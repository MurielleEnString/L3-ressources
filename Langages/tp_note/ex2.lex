%{
	int size_max;
	int size_min;
%}
character [a-zA-Z]
digit [0-9]
word ({character}|{digit})+
%%
{word}								{ 	int nb = (int)strlen(yytext);
										// initialisation de size_min & size_max
										if(size_min == -1) { size_min = nb;}
										if(size_max == -1) { size_max = nb;}
										// tests sur le max et le min
										if(nb > size_max) { size_max = nb;} 
										if(nb < size_min) { size_min = nb;}}
									
{word}-{word}[-{word}]*				{ 	// on affiche le mot composé que l'on vient de trouver
										printf("Mot composé : %s \n", yytext);
										int nb = (int)strlen(yytext);
										// initialisation de size_min & size_max
										if(size_min == -1) { size_min = nb;}
										if(size_max == -1) { size_max = nb;}
										// tests sur le max et le min
										if(nb > size_max) { size_max = nb;} 
										if(nb < size_min) { size_min = nb;}}
									
%%
main() {
	size_max = -1;
	size_min = -1;
	yylex();
	printf("Taille minimum des mots : %d, Taille maximum des mots : %d \n", size_min, size_max);
}

