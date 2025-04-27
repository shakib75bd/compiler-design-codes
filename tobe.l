%{
    #include <stdio.h>
%}

%%
am|is|are|was|were|be|been|being { printf("Its a to be verb\n");}
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