package flex;

import java_cup.runtime.SymbolFactory;
import java.io.FileInputStream;

%%
%cup
%class Scanner
%{
    private SymbolFactory sf;
	private int lineanum;
	private boolean debug;

	public Scanner(java.io.InputStream r, SymbolFactory sf){
                this(r);
                this.sf=sf;
                lineanum=0;
                debug=true;
        }
   
%}
%eofval{
    return sf.newSymbol("EOF",sym.EOF);
%eofval}

^" "+   { }
" "+$   { }
^(\r\n) { }

^rem[^(\n)]* { if(debug) System.out.println("token REM principio de linea"); }
rem[^(\n)]* {   if(debug) System.out.println("token REM en cualquier parte");
                return sf.newSymbol("SALTO DE LINEA",sym.psaltolinea);}
^\'[^(\n)]* { if(debug) System.out.println("token COMENTARIO");}
\'[^(\n)]* {    if(debug) System.out.println("token COMENTARIO");
                return sf.newSymbol("SALTO DE LINEA",sym.psaltolinea);}
digito		= [0-9]
numero		= {digito}+
nuevalinea	= \n

"="             {	if(debug) System.out.println("token ASSIGN");
			return sf.newSymbol("ASSIGN",sym.ASSIGN);
			}
"+"             {	if(debug) System.out.println("token PLUS");
			return sf.newSymbol("PLUS",sym.PLUS);
			}
"-"             {	if(debug) System.out.println("token MINUS");
			return sf.newSymbol("MINUS",sym.MINUS);
			}
"*"             {	if(debug) System.out.println("token TIMES");
			return sf.newSymbol("TIMES",sym.TIMES);
			}
"/"             {	if(debug) System.out.println("token OVER");
			return sf.newSymbol("OVER",sym.OVER);
			}
"^"             {	if(debug) System.out.println("token CIR");
			return sf.newSymbol("CIR",sym.CIR);
			}
"mod"           {	if(debug) System.out.println("token MOD");
			return sf.newSymbol("MOD",sym.MOD);
			}
"("             {	if(debug) System.out.println("token LPAREN");
			return sf.newSymbol("LPAREN",sym.LPAREN);
			}
")"             {	if(debug) System.out.println("token RPAREN");
			return sf.newSymbol("RPAREN",sym.RPAREN);
			}

"sub"           {	if(debug) System.out.println("token SUB");
			return sf.newSymbol("SUB",sym.SUB);
			}
"function"      {	if(debug) System.out.println("token FUNC");
			return sf.newSymbol("FUNC",sym.FUNC);
			}

"for"           {	if(debug) System.out.println("token FOR");
			return sf.newSymbol("FOR",sym.FOR);
			}
"to"            {	if(debug) System.out.println("token TO");
			return sf.newSymbol("TO",sym.TO);
			}
"step"          {	if(debug) System.out.println("token STEP");
			return sf.newSymbol("STEP",sym.STEP);
			}
"next"          {	if(debug) System.out.println("token NEXT");
			return sf.newSymbol("NEXT",sym.NEXT);
			}

"while"         {	if(debug) System.out.println("token WHILE");
			return sf.newSymbol("WHILE",sym.WHILE);
			}
"wend"          {	if(debug) System.out.println("token WEND");
			return sf.newSymbol("WEND",sym.WEND);
			}

"do"            {	if(debug) System.out.println("token DO");
			return sf.newSymbol("DO",sym.DO);
			}
"loop"          {	if(debug) System.out.println("token LOOP");
			return sf.newSymbol("LOOP",sym.LOOP);
			}
"until"         {	if(debug) System.out.println("token UNTIL");
			return sf.newSymbol("UNTIL",sym.UNTIL);
			}

"if"            {	if(debug) System.out.println("token IF");
			return sf.newSymbol("IF",sym.IF);
			}
"then"          {	if(debug) System.out.println("token THEN");
			return sf.newSymbol("THEN",sym.THEN);
			}
"elseif"        {	if(debug) System.out.println("token ELSEIF");
			return sf.newSymbol("ELSEIF",sym.ELSEIF);
			}
"else"          {	if(debug) System.out.println("token ELSE");
			return sf.newSymbol("ELSE",sym.ELSE);
			}
"endif"         {	if(debug) System.out.println("token ENDIF");
			return sf.newSymbol("ENDIF",sym.ENDIF);
			}

"and"           {	if(debug) System.out.println("token AND");
			return sf.newSymbol("AND",sym.AND);
			}
"or"            {	if(debug) System.out.println("token OR");
			return sf.newSymbol("OR",sym.OR);
			}
"not"           {	if(debug) System.out.println("token NOT");
			return sf.newSymbol("NOT",sym.NOT);
			}

"<"             {	if(debug) System.out.println("token LT");
			return sf.newSymbol("LT",sym.LT);
			}
">"             {	if(debug) System.out.println("token RT");
			return sf.newSymbol("RT",sym.RT);
			}
"<="            {	if(debug) System.out.println("token LTE");
			return sf.newSymbol("LTE",sym.LTE);
			}
">="            {	if(debug) System.out.println("token RTE");
			return sf.newSymbol("RTE",sym.RTE);
			}
"=="             {	if(debug) System.out.println("token COM");
			return sf.newSymbol("COM",sym.COM);
			}

"<>"            {	if(debug) System.out.println("token DIF");
			return sf.newSymbol("DIF",sym.DIF);
			}

"input"         {	if(debug) System.out.println("token INPUT");
			return sf.newSymbol("INPUT",sym.INPUT);
			}
"print"         {	if(debug) System.out.println("token PRINT");
			return sf.newSymbol("PRINT",sym.PRINT);
			}

"end"           {	if(debug) System.out.println("token END");
			return sf.newSymbol("END",sym.END);
			}
"dim"           {	if(debug) System.out.println("token DIM");
			return sf.newSymbol("DIM",sym.DIM);
			}
as\ integer     {	if(debug) System.out.println("token AS INTEGER");
                        return sf.newSymbol("ASI",sym.pentero);
                        }
as\ string     {	if(debug) System.out.println("token AS STRING");
                        return sf.newSymbol("ASS",sym.pentero);
                        }
as\ double     {	if(debug) System.out.println("token AS DOUBLE");
                        return sf.newSymbol("ASD",sym.pentero);
                        }

","             {	if(debug) System.out.println("token COMA");
			return sf.newSymbol("COMA",sym.COMA);
			}
";"             {	if(debug) System.out.println("token SEMI");
			return sf.newSymbol("SEMI",sym.SEMI);
			}
"cls"           {	if(debug) System.out.println("token CLS");
			return sf.newSymbol("CLS",sym.CLS);
			}
{numero}        {	if(debug) System.out.println("token NUM");
			return sf.newSymbol("NUM",sym.NUM,new Integer(yytext()));
			}
[A-Za-z][A-Z|a-z|0-9]*(\.[A-Z|a-z|0-9]*)?\%  {  if(debug) System.out.println("token NUMP");
                                        	return sf.newSymbol("NUMP",sym.NUMP,yytext());
                                                }
[A-Za-z][A-Z|a-z|0-9]*(\.[A-Z|a-z|0-9]*)?\$  {  if(debug) System.out.println("token STRD");
                                        	return sf.newSymbol("STRD",sym.STRD,yytext());
                                                }
[A-Za-z][A-Z|a-z|0-9]*(\.[A-Z|a-z|0-9]*)?\#  {  if(debug) System.out.println("token DOUN");
                                        	return sf.newSymbol("DOUN",sym.DOUN,yytext());
                                                }
[A-Za-z][A-Z|a-z|0-9]*(\.[A-Z|a-z|0-9]*)?  {  if(debug) System.out.println("token ID");
                                        	return sf.newSymbol("ID",sym.ID,yytext());
                                                }
\"[^(\"|\r\n)]*\" {	if(debug) System.out.println("token COMILLAS");
                    	return sf.newSymbol("COMILLAS",sym.COMILLAS,yytext());
                        }
{nuevalinea}    {       if(debug) System.out.println("token FL");
				return sf.newSymbol("FL",sym.FL);
                        }
[ \t\r\n\f] { /* Ignorar Espacios en Blanco. */ }
.               {System.err.println("Caracter Ilegal encontrado en analisis lexico: " + yytext() + "\n");}