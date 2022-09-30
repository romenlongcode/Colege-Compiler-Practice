%{
#include<stdio.h>
int lc=0,sc=0,wc=0;
%}
%%
"" sc++;
\n lc++;
"EXIT" return 0;
[a-z A-Z 0-9][a-z A-Z 0-9]* wc++;
%%
int yywrap(void)
{
return 1;
}
int main()
{
printf("Enter a string -\n");
yylex();
printf("sc:%d,lc:%d,wc:%d\n",sc,lc,wc);
return 0;
}

