%{
    #include <stdio.h>

%}

%%
[+-]?[0-9]+(\.[0-9]+)?[eE][+-]?[0-9]+ {
    printf("Its and exponential.\n");
}
%%


int main(){
    printf("Enter your input to check if its expotential: \n");
    yylex();

    return 0;
}

int yywrap(){
    return 1;
}