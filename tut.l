%{
#include<stdio.h>
#include<string.h>
%}
%%
"identifier" {printf("ID");}
"number"     {printf("NUM");}
"if"         {printf("IF");}
"else"       {printf("ELSE");}
"then"       {printf("THEN");}
"while"      {printf("WHILE");}
"<"          {printf("RELOP");}
">"          {printf("RELOP");}
"("          {printf("BRACKET");}
")"          {printf("BRACKET");}
%%
int yywrap(void)
{
return 1;
}
int main(void)
{
yylex();
return 0;
}
