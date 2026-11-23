%{
#include <stdio.h>
#include <stdlib.h>
%}

%option noyywrap

BINARIO     [01]+
DECIMAL     [0-9]+

%%
{BINARIO}   {
    long valor = strtol(yytext, NULL, 2);
    printf("BINARIO: %s -> DECIMAL: %ld\n", yytext, valor);
}

{DECIMAL}   { }

.|\n        { }
%%

int main() {
    yylex();
    return 0;
}
