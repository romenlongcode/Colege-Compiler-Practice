%{
#include<stdio.h>
#include<string.h>
ID, NUM, IF, THEN, ELSE, WHILE, RELOP, BRACKET;
%}
letter [A-Z,a-z]
digit [0-9]
id {letter}({letter}{digit})*
%%
{id}     {printf("ID"); return(ID);}
{numb}    {printf("NUM");return(NUM);}
if      {printf("IF");}
else    {printf("ELSE");}
then    {printf("THEN");}
while   {printf("RELOP");}
"&gt;"  {printf("RELOP");}
"("     {printf("BRACKET");}
")"     {printf("BRACKET");}
%%
int main(void)
{
yylex();
return 0;
}
int yywrap()
{
}
