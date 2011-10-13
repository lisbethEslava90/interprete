package NodosAST;

public class NodoIf extends NodoBase {

	private NodoBase ex;
	private NodoBase pthen;
	private NodoBase pelse;
	
	public NodoIf(NodoBase ex, NodoBase pthen) {
		super();
		this.ex = ex;
		this.pthen = pthen;
		this.pelse = null;
	}
	
	public NodoIf(NodoBase ex, NodoBase pthen, NodoBase pelse) {
		super();
		this.ex = ex;
		this.pthen = pthen;
		this.pelse = pelse;
	}
	
	public NodoIf() {
		super();
		this.ex = null;
		this.pthen = null;
		this.pelse = null;		
	}

	public NodoBase getex() {
		return ex;
	}

	public void setex(NodoBase ex) {
		this.ex = ex;
	}

	public NodoBase getpthen() {
		return pthen;
	}

	public void setpthen(NodoBase pthen) {
		this.pthen = pthen;
	}

	public NodoBase getpelse() {
		return pelse;
	}

	public void setpelse(NodoBase pelse) {
		this.pelse = pelse;
	}
	
	
	
}
