%{
    #include <stdio.h>
    #include <string.h>

    char* text;
    int isLowerCase(char c);
    int toUpperCase(char c);
%}

string        [a-zA-Z]+

%%
{string}        {
                int index;
                text = strdup(yytext);

                for(index = 0; text[index] != '\0'; index++){
                    if(isLowerCase(text[index])){
                        text[index] = toUpperCase(text[index]);
                    }
                }

                printf("%s", text);

                free(text);
                }



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

int isLowerCase(char c){
    if (c >= 'a' && c <= 'z'){
        return 1;
    }else{
        return 0;
    }
}

int toUpperCase(char c){
    return c-32;
}
