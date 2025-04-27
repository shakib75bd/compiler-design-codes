%{
    #include <stdio.h>
%}

%%
[h][e][l][l][o] {printf("Hello World\n"); return 0;}
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