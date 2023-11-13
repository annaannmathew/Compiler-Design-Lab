%{
#include <stdio.h>
int cv=0,cc=0;
%}

%%
[aeiouAEIOU] {cv++;}
[a-zA-Z] {cc++;};

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
    printf("Number of vowels: %d\n",cv);
    printf("Number of consonants: %d\n",cc);
    return 0;
}
