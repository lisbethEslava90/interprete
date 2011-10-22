package NodosAST;

import NodosAST.NodoBase;

public class NodoWhile extends NodoBase {

	private NodoBase ex;
	private NodoBase pwhile;
	
	public NodoWhile(NodoBase ex, NodoBase pwhile) {
		super();
		this.ex = ex;
		this.pwhile = pwhile;
	}
	
	public NodoWhile() {
		super();
		this.ex = null;
		this.pwhile = null;		
	}

	public NodoBase getex() {
		return ex;
	}

	public void setex(NodoBase ex) {
		this.ex = ex;
	}

	public NodoBase getpwhile() {
		return pwhile;
	}

	public void setpwhile(NodoBase pwhile) {
		this.pwhile = pwhile;
	}
	
	
	
	
	
}
