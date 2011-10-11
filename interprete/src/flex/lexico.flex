import java.io.*;
import java.lang.*;

%%

%{
	static FileInputStream FInStr = null;
	static String fInName ; //nombre archivo entrada


	public static void main (String argv[])
	throws java.io.IOException {
                argv = new String[]{"entrada.txt"};
		int numparams = argv.length; //n�mero argumentos pasados

		//Obtenci�n de par�metros pasados en l�nea de comandos
		if ( numparams != 1) 
		{ 	//error: nr. Par�metros incorrecto
			System.out.println ("N�mero par�metros incorrecto!. Uso: ");
			System.out.println ( "\tjava lexico archivo.EXT");
			return; 
		}
		else 
		{ 	fInName = argv[0];		
			lexico yy = new lexico(new FileInputStream(fInName));
			while (yy.yylex() != -1) ; 
		}

	} //Final main
%}


%initthrow{ // Declaro el tipo de excepcion declarada en la clausula throw
	FileNotFoundException
%initthrow}


%integer

%class lexico

digito		= [0-9]
numero		= {digito}+
letra		= [a-zA-Z]
palabra         = {letra}+


%%
"END"		{ System.out.print("token END\n"); } 
"SUB"           { System.out.print("token SUB\n"); }
"FUNCTION"      { System.out.print("token FUNC\n"); }
"PRINT"         { System.out.print("token PRINT\n"); }
"INPUT"         { System.out.print("token INPUT\n"); }
"FOR"           { System.out.print("token FOR\n"); }
"NEXT"          { System.out.print("token NEXT\n"); }
"CLS"           { System.out.print("token CLS\n"); }
"WHILE"         { System.out.print("token WHILE\n"); }
"WEND"          { System.out.print("token WEND\n"); }
"IF"            { System.out.print("token IF\n"); }
"END IF"            { System.out.print("token END IF\n"); }
"ELSE"          { System.out.print("token ELSE\n"); }
"LOOP"          { System.out.print("token LOOP\n"); }
"UNTIL"         { System.out.print("token UNTIL\n"); }
"DO"            { System.out.print("token DO\n"); }
"REM"           { System.out.print("token REM\n"); }
"DIM"           { System.out.print("token DIM\n"); }
"INTEGER"       { System.out.print("token INT\n"); }
"AS"            { System.out.print("token AS\n"); }
"SHARED"        { System.out.print("token SHA\n"); }
"SINGLE"        { System.out.print("token SIN\n"); }
"STRING"        { System.out.print("token STR\n"); }
"LONG"          { System.out.print("token LONG\n"); }
"DOUBLE"        { System.out.print("token DOU\n"); }
"AND"           { System.out.print("token AND\n"); }
"OR"            { System.out.print("token OR\n"); }
"NOT"           { System.out.print("token NOT\n"); }
"SELECT CASE"   { System.out.print("token SELC\n"); }
"ELSEIF"        { System.out.print("token ELSIF\n"); }
"TO"            { System.out.print("token TO\n"); }
"+"             { System.out.print("token SUMA\n"); }
"-"             { System.out.print("token RESTA\n"); }
"*"             { System.out.print("token MULTIPLICA\n"); }
"/"             { System.out.print("token DIVIDE\n"); }
"MOD"           { System.out.print("token MOD\n"); }
"<"             { System.out.print("token MENOR\n"); }
">"             { System.out.print("token MAYOR\n"); }
"<="            { System.out.print("token MENORI\n"); }
">="            { System.out.print("token MAYORI\n"); }
"="             { System.out.print("token IGUAL\n"); }
"<>"            { System.out.print("token DIFERENTE\n"); }
"("             { System.out.print("token PARENA\n"); }
")"             { System.out.print("token PARENC\n"); }
"^"             { System.out.print("token CIRCUN\n"); }
"'"             { System.out.print("token COMILLA\n"); }