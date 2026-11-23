%{
#include <stdio.h>
%}

%option noyywrap yylineno

ID       [a-zA-Z_][a-zA-Z0-9_]*
ENTERO   [0-9]+

%%
{ID}        { printf("IDENTIFICADOR: %s\n", yytext); }

{ENTERO}    { printf("ENTERO: %s\n", yytext); }

","         { printf("SEPARADOR: ,\n"); }

[ \t\n]+    { }

.           { printf("ERROR en linea %d: '%s' no es valido\n", yylineno, yytext); }
%%

int main() {
    yylex();
    return 0;
}
