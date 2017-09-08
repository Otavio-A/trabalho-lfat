
/* A Bison parser, made by GNU Bison 2.4.1.  */

/* Skeleton interface for Bison's Yacc-like parsers in C
   
      Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */


/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     T_PROGRAM = 258,
     T_PONTEVIRG = 259,
     T_VAR = 260,
     T_TIPO = 261,
     T_VIRG = 262,
     T_PONTO = 263,
     T_DOISPONTO = 264,
     T_BEGIN = 265,
     T_IF = 266,
     T_THEN = 267,
     T_ELSE = 268,
     T_ABRE_P = 269,
     T_FECHA_P = 270,
     T_BOOL = 271,
     T_O_LOGICO = 272,
     T_COMP = 273,
     T_ATRIB = 274,
     T_OPERACAO = 275,
     T_END = 276,
     T_WHILE = 277,
     T_DO = 278,
     T_NUM = 279,
     T_IDENTIF = 280
   };
#endif
/* Tokens.  */
#define T_PROGRAM 258
#define T_PONTEVIRG 259
#define T_VAR 260
#define T_TIPO 261
#define T_VIRG 262
#define T_PONTO 263
#define T_DOISPONTO 264
#define T_BEGIN 265
#define T_IF 266
#define T_THEN 267
#define T_ELSE 268
#define T_ABRE_P 269
#define T_FECHA_P 270
#define T_BOOL 271
#define T_O_LOGICO 272
#define T_COMP 273
#define T_ATRIB 274
#define T_OPERACAO 275
#define T_END 276
#define T_WHILE 277
#define T_DO 278
#define T_NUM 279
#define T_IDENTIF 280




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
{

/* Line 1676 of yacc.c  */
#line 10 "g.y"

	int ival;
	float fval;



/* Line 1676 of yacc.c  */
#line 109 "y.tab.h"
} YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


