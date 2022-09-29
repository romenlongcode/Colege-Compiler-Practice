%{ 
#include<stdio.h>
%}
%%
[0][b|B][0|1][0|1]* printf("this is a binary number");
[0-9][0-9]* printf("this is a decimal number");
[0][0-7][0-7]* printf("this is an octal number");
[0][x|X][0-9A-F][0-9A-F]* printf("this is a hexadecimal number");
%%
int yywrap(void)
{
 return 1;
}
int main()
{
printf("Enter a number :\n");
yylex();
return 0;
} 
