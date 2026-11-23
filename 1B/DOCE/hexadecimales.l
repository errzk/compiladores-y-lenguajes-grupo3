%{
#include <stdio.h>
#include <stdlib.h>
%}

%option noyywrap

HEXA    0[xX][0-9a-fA-F]+

%%
{HEXA}   {
    long valor = strtol(yytext, NULL, 16);
    printf("HEXADECIMAL: %s -> DECIMAL: %ld\n", yytext, valor);
}

.|\n     { }
%%

int main() {
    yylex();
    return 0;
}
