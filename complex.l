%{
    #include <stdio.h>
%}

%%
[+-]?[0-9]+(\.[0-9]+)?[+-][+-]?[0-9]+(\.[0-9]+)?i {
    printf("Its a complex number.\n");
}
\n {}
. {}
%%

int main(){
    yylex();
    return 0;
}

int yywrap(){
    return 1;
}