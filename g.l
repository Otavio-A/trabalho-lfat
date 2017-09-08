%{
	#include <stdio.h>
	#include <stdlib.h>
	#include "g.tab.h"
	#define YY_DECL int yylex()
	void yyerror(char *s);
%}
%option noyywrap
%%
[ \t] ;
\n
"program"	{ return T_PROGRAM; }
";"		{ return T_PONTEVIRG; }
"var"		{ return T_VAR; }
"int"		{ return T_TIPO; }
"bool"		{ return T_TIPO; }
"real"		{ return T_TIPO; }
","		{ return T_VIRG; }
"."		{ return T_PONTO; }
":"		{ return T_DOISPONTO; }
"begin"		{ return T_BEGIN; }
"if"		{ return T_IF; }
"then"		{ return T_THEN; }
"else"		{ return T_ELSE; }
"("		{ return T_ABRE_P; }
")"		{ return T_FECHA_P; }
"True"		{ return T_BOOL; }
"False"		{ return T_BOOL; }
"not"		{ return T_O_LOGICO; }
"and"		{ return T_O_LOGICO; }
"or"		{ return T_O_LOGICO; }
"="		{ return T_COMP; }
"<="		{ return T_COMP; }
">="		{ return T_COMP; }
"<>"		{ return T_COMP; }
"<"		{ return T_COMP; }
">"		{ return T_COMP; }
":="		{ return T_ATRIB; }
"+"		{ return T_OPERACAO; }
"-"		{ return T_OPERACAO; }
"div"		{ return T_OPERACAO; }	
"mod" 		{ return T_OPERACAO; }
"*"		{ return T_OPERACAO; }
"while"		{ return T_WHILE; }
"do"		{ return T_DO; }
"end"		{ return T_END; }
[0-9]+		{ return T_NUM; }
[0-9]+\.[0-9]+	{return T_NUM; }
[a-zA-Z][a-zA-Z_0-9]*	{ return T_IDENTIF; }

%%





