package NodosAST;

public class NodoImprimir extends NodoBase{

	String com;
	NodoBase conju;
	
	public NodoImprimir(String com,NodoBase conju) {
		this.com=com;
		this.conju=conju;
	}
	
	public NodoImprimir(String com) {
		this.com=com;
	}
	
	public NodoImprimir(NodoBase conju) {
		this.conju=conju;
	}
	
	public NodoBase getExpresion() 
	 {
        return conju;
	 }
}
