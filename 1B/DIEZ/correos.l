%{
#include <stdio.h>
%}

%option noyywrap

USUARIO     [a-zA-Z0-9._%+-]+
DOMINIO     [a-zA-Z0-9.-]+
EXTENSION   [a-zA-Z]{2,}

%%
{USUARIO}@{DOMINIO}\.{EXTENSION}   {
    printf("TOKEN CORREO: %s\n", yytext);
}

.|\n   { }
%%

int main() {
    yylex();
    return 0;
}
