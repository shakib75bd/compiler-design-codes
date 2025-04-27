%{
    #include <stdio.h>
%}

%%
015[0-9]{8} {printf("Its a Teletalk number!\n");}
\n {}
. {}
%%

int main(){
    printf("Enter a Bangladeshi Mobile number(01xxxxxxxxx): ");
    yylex();
    return 0;
}

int yywrap(){
    return 1;
}