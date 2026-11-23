%{
#include <stdio.h>
int cuenta[10] = {0};
%}

%option noyywrap

%%
[0-9]    { cuenta[yytext[0] - '0']++; }
.|\n     { }
%%

int main() {
    yylex();
    printf("\nDigito | Veces\n");
    printf("-------+------\n");
    for (int i = 0; i < 10; i++)
        printf("   %d   |  %d\n", i, cuenta[i]);
    return 0;
}


