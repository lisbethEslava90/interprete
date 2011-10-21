package x;

import NodosAST.NodoBase;

public class NodoIdentificador extends NodoBase {
	private String nombre;

	public NodoIdentificador(String nombre) {
		super();
		this.nombre = nombre;
	}

	public NodoIdentificador() {
		super();
	}

	public void setIdentificador(String nom) {
		this.nombre = nom;
	}
	
	public String getNombre() {
		return nombre;
	}

}
