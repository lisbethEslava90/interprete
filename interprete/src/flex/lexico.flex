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

digito		= [0-9]
numero		= {digito}+
letra		= [a-zA-Z]
identificador	= {letra}+
nuevalinea	= \n
espacio		= [ \t]+
%%
"if"            {	if(debug) System.out.println("token IF");
			return sf.newSymbol("IF",sym.IF);
			}
"else"          {	if(debug) System.out.println("token ELSE");
			return sf.newSymbol("ELSE",sym.ELSE);
			}
"end"           {	if(debug) System.out.println("token END");
			return sf.newSymbol("END",sym.END);
			}
"until"         {	if(debug) System.out.println("token UNTIL");
			return sf.newSymbol("UNTIL",sym.UNTIL);
			}
"sub"           {	if(debug) System.out.println("token SUB");
			return sf.newSymbol("SUB",sym.SUB);
			}
"function"      {	if(debug) System.out.println("token FUNC");
			return sf.newSymbol("FUNC",sym.FUNC);
			}
"print"         {	if(debug) System.out.println("token PRINT");
			return sf.newSymbol("PRINT",sym.PRINT);
			}
"input"         {	if(debug) System.out.println("token INPUT");
			return sf.newSymbol("INPUT",sym.INPUT);
			}
"for"           {	if(debug) System.out.println("token FOR");
			return sf.newSymbol("FOR",sym.FOR);
			}
"to"            {	if(debug) System.out.println("token TO");
			return sf.newSymbol("TO",sym.TO);
			}
"next"          {	if(debug) System.out.println("token NEXT");
			return sf.newSymbol("NEXT",sym.NEXT);
			}
"then"          {	if(debug) System.out.println("token THEN");
			return sf.newSymbol("THEN",sym.THEN);
			}
"cls"           {	if(debug) System.out.println("token CLS");
			return sf.newSymbol("CLS",sym.CLS);
			}
"while"         {	if(debug) System.out.println("token WHILE");
			return sf.newSymbol("WHILE",sym.WHILE);
			}
"wend"          {	if(debug) System.out.println("token WEND");
			return sf.newSymbol("WEND",sym.WEND);
			}
"endif"         {	if(debug) System.out.println("token ENDIF");
			return sf.newSymbol("ENDIF",sym.ENDIF);
			}
"loop"          {	if(debug) System.out.println("token LOOP");
			return sf.newSymbol("LOOP",sym.LOOP);
			}
"do"            {	if(debug) System.out.println("token DO");
			return sf.newSymbol("DO",sym.DO);
			}
"dim"           {	if(debug) System.out.println("token DIM");
			return sf.newSymbol("DIM",sym.DIM);
			}
"integer"       {	if(debug) System.out.println("token INT");
			return sf.newSymbol("INT",sym.INT);
			}
"as"            {	if(debug) System.out.println("token AS");
			return sf.newSymbol("AS",sym.AS);
			}
"string"        {	if(debug) System.out.println("token STRING");
			return sf.newSymbol("STRING",sym.STRING);
			}
"long"          {	if(debug) System.out.println("token LONG");
			return sf.newSymbol("LONG",sym.LONG);
			}
"double"        {	if(debug) System.out.println("token DOU");
			return sf.newSymbol("DOU",sym.DOU);
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
"step"          {	if(debug) System.out.println("token STEP");
			return sf.newSymbol("STEP",sym.STEP);
			}
"mod"           {	if(debug) System.out.println("token MOD");
			return sf.newSymbol("MOD",sym.MOD);
			}
"="             {	if(debug) System.out.println("token ASSIGN");
			return sf.newSymbol("ASSIGN",sym.ASSIGN);
			}
"=="             {	if(debug) System.out.println("token COM");
			return sf.newSymbol("COM",sym.COM);
			}
"<"             {	if(debug) System.out.println("token LT");
			return sf.newSymbol("LT",sym.LT);
			}
">"             {	if(debug) System.out.println("token RT");
			return sf.newSymbol("RT",sym.RT);
			}
">="            {	if(debug) System.out.println("token RTE");
			return sf.newSymbol("RTE",sym.RTE);
			}
"<="            {	if(debug) System.out.println("token LTE");
			return sf.newSymbol("LTE",sym.LTE);
			}
"<>"            {	if(debug) System.out.println("token DIF");
			return sf.newSymbol("DIF",sym.DIF);
			}
"^"             {	if(debug) System.out.println("token CIR");
			return sf.newSymbol("CIR",sym.CIR);
			}
"'"             {	if(debug) System.out.println("token CS");
			return sf.newSymbol("CS",sym.CS);
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
"("             {	if(debug) System.out.println("token LPAREN");
			return sf.newSymbol("LPAREN",sym.LPAREN);
			}
")"             {	if(debug) System.out.println("token RPAREN");
			return sf.newSymbol("RPAREN",sym.RPAREN);
			}
","             {	if(debug) System.out.println("token COMA");
			return sf.newSymbol("COMA",sym.COMA);
			}
";"             {	if(debug) System.out.println("token SEMI");
			return sf.newSymbol("SEMI",sym.SEMI);
			}
{numero}        {	if(debug) System.out.println("token NUM");
			return sf.newSymbol("NUM",sym.NUM,new Integer(yytext()));
			}
{identificador}	{	if(debug) System.out.println("token ID");
				return sf.newSymbol("ID",sym.ID,new String(yytext()));
			}
{nuevalinea}    {       if(debug) System.out.println("token FL");
				return sf.newSymbol("FL",sym.FL);
			}
{espacio}    { /* saltos espacios en blanco*/}
"{'[^}]+'}"  { /* salto comentarios */ if(debug) System.out.println("token COMENTARIO");
                                        return sf.newSymbol("COMEN", sym.COMEN);}
[A-Za-z][A-Z|a-z|0-9]*(\.[A-Z|a-z|0-9]*)?\%  {  if(debug) System.out.println("token ID2");
                                        	return sf.newSymbol("ID2",sym.ID2,yytext());}
\"[^(\"|\r\n)]*\" {	if(debug) System.out.println("token COMILLAS");
                    	return sf.newSymbol("COMILLAS",sym.COMILLAS,yytext());}
.               {System.err.println("Caracter Ilegal encontrado en analisis lexico: " + yytext() + "\n");}