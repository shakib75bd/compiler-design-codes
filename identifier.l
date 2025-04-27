%{
    #include <stdio.h>
    int count=0;

%}

%%
[a-zA-Z][a-zA-Z0-9_]* {
    count++;
    printf("Identifier found: %s\n", yytext);
}
\n {}
. {}
%%

int main(){
    printf("Enter your input: ");
    yylex();
    printf("Total number of identifiers: %d\n", count);
    return 0;
}

int yywrap(){
    return 1;
}