%{
    #include <stdio.h>
    int cmlx=0;
    int cpd=0;
%}

%%
(and|but|or) {
    cpd++;
}
(though|although|because|since|if|unless) {
    cmlx++;
}
[a-zA-Z0-9_]+ {}
[ \t\n]+ {}
. {}
%%

int main(){
    yylex();
    if(cmlx>0){
        printf("Complex sentence\n");
    }
    else if(cpd>0){
        printf("Compound Sentence\n");
    }
    else{
        printf("Simple sentence\n");
    }
    return 0;
}

int yywrap(){
    return 1;
}