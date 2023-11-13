%{
#include <stdio.h>
%}

%%
[a-z] printf("%c",yytext[0] - ('a' - 'A'));
0 {return 0;}
%%

int yywrap()
{
    return 1;
}

int main()
{
    //extern FILE *yyin;
    //yyin=fopen("input.txt","r");
    printf("Enter the sentence: ");
    yylex();
    return 0;
}
