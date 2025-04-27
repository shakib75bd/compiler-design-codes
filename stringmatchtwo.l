%{
   #include<stdio.h> 
%}

%%
[A-Z][a-zA-Z0-9_]+[ \t]+[a-zA-Z0-9_]+[ \t]+[a-zA-Z0-9_]+[!]  {printf("String Matched!\n"); return 0;}
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