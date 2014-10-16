character [a-zA-Z]
digit [0-9]
word ({character}|{digit})+
line \n
%%
Yacc 					printf("(1)Yacc");
^From					printf("(2)From");
^\+{3,10}$				printf("(3)%s",yytext);
[A-Za-z_][A-Za-z_0-9]*	printf("(4)%s",yytext);
[0-9]+\.[0-9]			printf("(5)%s",yytext);
%%
main() {
	yylex();
}
