%{
    #include <stdio.h>
    #include <stdlib.h>
    int yylex(void);
    void yyerror (const char *s);
%}

%token NUMBER


%right '=' 
%left '+' '-'
%left '*' '/'

%%

calc: expression                        {printf("%d\n", $1);}
    |
    ;

expression: expression '+' expression   {$$=$1+$3;}
    |   expression '-' expression       {$$=$1-$3;}
    |   '-' expression                  {$$=-$2;}
    |   expression '*' expression       {$$=$1*$3;}
    |   expression '/' expression       {if($3==0){printf("Divide by zero!\n");return 0;}else{$$=$1/$3;}}
    |   '(' expression ')'              {$$=$2;}
    |   NUMBER                          {$$=$1;}
    |   'end'                             {exit(0);}
    ;
%%

int main() {
    while(1){
        yyparse();
    }
    return 0;
}

