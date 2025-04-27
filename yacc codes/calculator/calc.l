%{
    #include <stdio.h>
    #include "y.tab.h"
%}

%%
[0-9]+ {
    yylval.ival = atoi(yytext);
    return NUM;
}
[+-/*%()] {
    return *yytext;
}
[ \t\n]+ {}
. {}
%%


int yywrap(){
    return 1;
}