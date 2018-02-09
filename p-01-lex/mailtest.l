
mail       [a-zA-Z0-9\-\_.]+@([a-zA-Z]+\.)+[a-zA-Z]+
%%

{mail}     {printf("%s\n", yytext);}
.           {;}

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

