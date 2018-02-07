mail				[0-9]+
%%
{numero}	                {printf(" Inteiro ");}

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
