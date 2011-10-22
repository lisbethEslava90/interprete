package NodosAST;

import NodosAST.NodoBase;

public class NodoIf extends NodoBase {

	private NodoBase ex;
        private NodoBase ex2;  // condicion del ELSEIF
	private NodoBase pthen;
        private NodoBase pthenif; //para el uso del ELSEIF condicion THEN
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

        public NodoIf(NodoBase ex, NodoBase ex2, NodoBase pthen, NodoBase pthenif, NodoBase pelse) {
        this.ex = ex;
        this.ex2 = ex2;
        this.pthen = pthen;
        this.pthenif = pthenif;
        this.pelse = pelse;
    }
	
	public NodoIf() {
		super();
		this.ex = null;
		this.pthen = null;
		this.pelse = null;		
	}

    public NodoBase getEx() {
        return ex;
    }

    public NodoBase getEx2() {
        return ex2;
    }

    public NodoBase getPelse() {
        return pelse;
    }

    public NodoBase getPthen() {
        return pthen;
    }

    public NodoBase getPthenif() {
        return pthenif;
    }

    public void setEx(NodoBase ex) {
        this.ex = ex;
    }

    public void setEx2(NodoBase ex2) {
        this.ex2 = ex2;
    }

    public void setPelse(NodoBase pelse) {
        this.pelse = pelse;
    }

    public void setPthen(NodoBase pthen) {
        this.pthen = pthen;
    }

    public void setPthenif(NodoBase pthenif) {
        this.pthenif = pthenif;
    }

    
}
