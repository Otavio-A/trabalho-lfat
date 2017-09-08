%{
	#include <stdio.h>
	#include <stdlib.h>
	extern int yylex();
	extern int yyparse();
	extern FILE* yyin;
	void yyerror(const char* s);
%}

%union {
	int ival;
	float fval;
}

%token T_PROGRAM
%token T_PONTEVIRG
%token T_VAR
%token T_TIPO
%token T_VIRG
%token T_PONTO
%token T_DOISPONTO
%token T_BEGIN
%token T_IF
%token T_THEN
%token T_ELSE
%token T_ABRE_P
%token T_FECHA_P
%token T_BOOL
%token T_O_LOGICO
%token T_COMP
%token T_ATRIB
%token T_OPERACAO
%token T_END
%token T_WHILE
%token T_DO  
%token T_NUM
%token T_IDENTIF;

%start program

%%

program:
	T_PROGRAM T_IDENTIF T_PONTEVIRG code { printf("SUCESSO\n"); exit(0);}
;

code:
	vars commands T_PONTO
;

vars:
	T_VAR var_declaration | {}
;

var_declaration:
	T_IDENTIF T_DOISPONTO multi T_TIPO T_PONTEVIRG
;

multi:
	T_VIRG T_IDENTIF | {}
; 

commands:
 	T_BEGIN command T_END T_PONTEVIRG
;

command:
	T_IDENTIF T_ATRIB value T_PONTEVIRG command |
	T_IDENTIF T_ATRIB r T_PONTEVIRG command |
	T_IF T_ABRE_P p T_FECHA_P T_THEN commands |
	T_IF T_ABRE_P p T_FECHA_P T_THEN commands T_ELSE commands |
	T_WHILE T_ABRE_P p T_FECHA_P T_DO commands | {}
;

value:
	T_IDENTIF | T_NUM
;

p:
	T_BOOL | p T_O_LOGICO p | 
	T_IDENTIF T_O_LOGICO T_IDENTIF |
	T_IDENTIF T_O_LOGICO p |
	p T_O_LOGICO T_IDENTIF |
	r T_COMP r |
;

r:
	math | p | value
;

math:
	value | math T_OPERACAO math
;

%%
int main() {
	yyin = stdin;
	while(!feof(yyin))
		yyparse();
	return 0;
}
void yyerror(const char* s) {
	fprintf(stderr, "ERRO: %s\n", s);
	exit(1);
}