%{
	int nombres;
	int mots;
%}
D [0-9]
E [DEde][-+]?{D}+
%%
{D}+\.?{D}*{E}?		| 
\.{D}+{E}? 		nombres++; /*si on détecte un nombre */
lex 			ECHO; /*si c'est le mot lex, on l'affiche*/
[A-Za-z]+ 		{ mots++; } /*si c'est une succession d'au moins 1 caractère */
.|[\n] 			; /*si c'est n'importe quel caractère ou un retour à la ligne
%%
main() {
	nombres = 0;
	mots = 0;
	yylex();
	printf("\nNombres : %d, Mots : %d\n", nombres, mots);
}
