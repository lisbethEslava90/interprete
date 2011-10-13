package NodosAST;

public class NodoFor extends NodoBase {

	private NodoBase asi;
	private NodoBase ex;
	private NodoBase ex1;
	private NodoBase ex2;
	private NodoBase ex3;
	private NodoBase pfor;

	public NodoFor(NodoBase asi, NodoBase ex1, NodoBase ex2, NodoBase pfor) {
		super();
		this.asi = asi;
		this.ex1 = ex1;
		this.ex2 = ex2;
		this.pfor = pfor;
	}
	
	public NodoFor(NodoBase ex, NodoBase ex1, NodoBase ex2, NodoBase ex3, NodoBase pfor) {
		super();
		this.ex = ex;
		this.ex1 = ex1;
		this.ex2 = ex2;
		this.ex3 = ex3;
		this.pfor = pfor;
	}
	
	public NodoFor() {
		super();
		this.asi = null;
		this.ex = null;
		this.ex1 = null;
		this.ex2 = null;
		this.ex3 = null;
		this.pfor = null;		
	}

	public NodoBase getasi() {
		return asi;
	}

	public void setasi(NodoBase asi) {
		this.asi = asi;
	}

	public NodoBase getex() {
		return ex;
	}

	public void setex(NodoBase ex) {
		this.ex = ex;
	}
	
	public NodoBase getex1() {
		return ex1;
	}

	public void setex1(NodoBase ex1) {
		this.ex1 = ex1;
	}
	public NodoBase getex2() {
		return ex2;
	}

	public void setex2(NodoBase ex2) {
		this.ex2 = ex2;
	}
	
	public NodoBase getex3() {
		return ex3;
	}

	public void setex3(NodoBase ex3) {
		this.ex	= ex3;
	}
	
	public NodoBase getpfor() {
		return pfor;
	}

	public void setpfor(NodoBase pfor) {
		this.pfor = pfor;
	}

}
