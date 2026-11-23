%{
#include <stdio.h>
%}

%option noyywrap

%%
"+"|"-"|"*"|"/" {
    printf("OPERADOR ARITMETICO: %s\n", yytext);
}

"<="|">="|"=="|"!="|"<"|">" {
    printf("OPERADOR RELACIONAL: %s\n", yytext);
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
