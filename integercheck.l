%{
    #include <stdio.h>
%}

%%
[0-9]+ {printf("Its and Integer!\n");}
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