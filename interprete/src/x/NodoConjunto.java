package x;

import NodosAST.NodoBase;

public class NodoConjunto extends NodoBase{
	public NodoBase expresion;
	public String comentario;
	public NodoBase conjunto;
	
	public NodoConjunto(NodoBase expresion,String comentario,NodoBase conjunto){
		this.comentario=comentario;
		this.expresion=expresion;
		this.conjunto=conjunto;
	}
	public NodoConjunto(NodoBase expresion){
		this.expresion=expresion;
	}
	public NodoConjunto(NodoBase expresion,String comentario){
		this.comentario=comentario;
		this.expresion=expresion;
	}
	public NodoBase getExpresion() {
		return expresion;
	}
	public void setExpresion(NodoBase expresion) {
		this.expresion = expresion;
	}
	public String getComentario() {
		return comentario;
	}
	public void setComentario(String comentario) {
		this.comentario = comentario;
	}
	public NodoBase getConjunto() {
		return conjunto;
	}
	public void setConjunto(NodoBase conjunto) {
		this.conjunto = conjunto;
	}
}