%{
    #include <stdio.h>
%}

%%
([a-zA-Z0-9_]+at[s]?[ \t])+ {printf("String matched!\n");}
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