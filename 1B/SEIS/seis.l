%{
#include <stdio.h>
%}

%option noyywrap

%%
"if"|"else"|"while"|"int" {
    printf("PALABRA RESERVADA: %s\n", yytext);
}

[a-zA-Z_][a-zA-Z0-9_]* {
    printf("IDENTIFICADOR: %s\n", yytext);
}

[0-9]+ {
    printf("NUMERO ENTERO: %s\n", yytext);
}

[ \t\n\r]+   { /* Ignorar espacios y saltos de linea */ }

. {
    printf("CARACTER NO RECONOCIDO: %s\n", yytext);
}
%%

int main(void)
{
    yylex();
    return 0;
}
