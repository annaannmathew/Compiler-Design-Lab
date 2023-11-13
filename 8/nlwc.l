%{
#include <stdio.h>
int nl=0,nw=0,ch=0;
%}

%%
[\n] {nl++;ch+=yyleng;}
([a-zA-Z0-9])* {nw++;ch+=yyleng;}
%%

int yywrap()
{
    return 1;
}

int main()
{
    extern FILE *yyin;
    yyin=fopen("input.txt","r");
    //printf("Enter the sentence: ");
    yylex();
    printf("Number of lines: %d\n",nl);
    printf("Number of words: %d\n",nw);
    printf("Number of characters: %d\n",ch);
    return 0;
}
