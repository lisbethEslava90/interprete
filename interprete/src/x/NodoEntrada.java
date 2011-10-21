package x;

import NodosAST.NodoBase;

public class NodoEntrada extends NodoBase {
	
	public String comillas;
	private String id;
	
	public NodoEntrada(NodoBase variables,String identificador){
		 this.id = identificador;
	}
	public NodoEntrada(String comillas,String variables){
		this.id=variables;
		this.comillas=comillas;
	}
	public void setId() {
        this.id = id;
        }
	public String getId() {
        return id;
}
}