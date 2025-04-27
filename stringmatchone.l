%{
    #include <stdio.h>
%}

%%
[A-Z][a-z]+[ \t]+[a-z0-9]+ {printf("Hello world\n"); return 0;}
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