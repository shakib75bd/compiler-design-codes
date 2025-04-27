%{
    #include <stdio.h>
%}

%%
[0-9]+\.[0-9]+ {printf("Its a floating number\n");}
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