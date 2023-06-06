%option noyywrap

%{

#include "../inc/fb.h"
#include "../obj/fb.tab.h"

%}

%%

	/* single character ops */
"+" |
"-" |
"*" |
"/" |
"=" |
"|" |
"," |
";" |
"(" |
")"     { return yytext[0]; }

	/* number */
[0-9]+ 	{ yylval = atoi(yytext); return NUM; }

[ \t]*	{ }
\n 		{ return EOL; }
.	{ yyerror("Mystery character %c\n", *yytext); }

<<EOF>>	{ return EOF; }

%%