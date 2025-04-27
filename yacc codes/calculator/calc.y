%{
    #include <stdio.h>
    #include <stdlib.h>

    int yylex();
    int yyerror(char *s);
%}

%union {
    int ival;
}

/*Tokens*/

%token <ival> NUM
%type <ival> expr
%left '+' '-'
%left '*' '/'

%%
start: 
    expr {printf("Result: %d\n",$1);}
    ;

    expr:
        expr '+' expr {$$ = $1 + $3;}
        | expr '-' expr {$$ = $1 - $3;}
        | expr '*' expr {$$ = $1 * $3;}
        | expr '/' expr {
            if($3==0){
                yyerror("Devided by Zero is not possible");
                YYABORT;
            }
            else{
                $$ = $1 / $3;
            }
        }
        | '(' expr ')' { $$ = $2;}
        | NUM{$$ = $1;}
        ;
%%


int main(){
    yyparse();
    return 0;
}

int yyerror(char *s){
    fprintf(stderr, "Error: %s\n",s);
    return 0;
}