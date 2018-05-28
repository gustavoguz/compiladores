%{ 
/* definitions of manifest constants
LT, LE,
IF, ELSE, ID, NUMBER, RELOP */
%}

/* regular definitions */
delim	 [ \t\n]
ws	 {delim}+
letter	 [A-Za-z]
digit    [0-9]
id	 {letter}({letter}|{digit})*
number	 {digit}+(\.{digit}+)?(E[+-]?{digit}+)?
%%
{ws}	 { }
if	 {return(IF);}
else	 {return(ELSE);}
{id}	 {yylval = (int) installID(); return(ID);}
{number} {yylval = (int) installNum(); return(NUMBER);}
"<"	 {yylval = LT; return(RELOP); }
"<="	 {yylval = LE; return(RELOP); }
%%
int installID()
{
  /* function to install the lexeme, whose first character
     is pointed to by yytext, and whose length is yyleng,
     into the symbol table; returns pointer to symbol table
     entry */
}

int installNum() {
  /* analogous to installID */
}

