numero				[0-9]+
%%
{numero}	                {printf(" Inteiro ");}
{numero}"."{numero}		{printf(" float ");}
"-"{numero}                     {printf(" Inteiro Negativo");}
"-"{numero}"."{numero}		{printf(" Real Negativo");}
"abc"				{printf("Token!");}
ab+c				{printf("Token!");}
a*(bc)+				{printf("Token!");}
{numero}l			{printf("long");}
"-"{numero}l			{printf("long negativo");}
{numero}u			{printf("unsigned int");}
{numero}ul			{printf("unsigned long");}
{numero}e"-"{numero}		{printf("floating point");}
{numero}e"+"{numero}		{printf("float point	");}
{numero}f			{printf("float");}
\".*\"				{printf("String Java");}
%%
int main()
{
yylex();
return 0;
}

int yywrap()
{
return 1;
}

