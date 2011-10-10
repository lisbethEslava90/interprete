import java.io.*;
import java.lang.*;

%%

%{
	static FileInputStream FInStr = null;
	static String fInName ; //nombre archivo entrada


	public static void main (String argv[])
	throws java.io.IOException {

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
letra			= [a-zA-Z]

%%
"END"		{ System.out.print("token END\n"); } 
"SUB" {}	 
"FUNCTION" {}
"PRINT" {}
"INPUT" {}
"FOR" {}
"NEXT" {}
"CLS" {}
"WHILE" {} 
"WEND" {}
"IF" {}
"ELSE" {}
"LOOP" {}
"UNTIL" {}
"DO" {}
"REM" {}
"DIM" {}
"INTEGER" {}
"AS" {}
"SHARED" {}
"SINGLE" {}
"STRING" {}
"LONG" {}
"DOUBLE" {}
"AND" {}
"OR" {}
"NOT" {}
"SELECT CASE OJO" {}
"ELSEIF" {}
"TO" {}
"+" {}
"-" {}
"*" {}
"/" {}
"MOD" {}
"<" {}
">" {}
"<=" {}
">=" {}
"=" {}
"<>" {}
"(" {}
")" {}
"^" {}