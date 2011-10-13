package NodosAST;

public class NodoConj_var extends NodoBase{
	
	public String var;
	public NodoBase cv;
	
	public NodoConj_var(){
		super();
		this.var = null;
		this.cv = null;
	}
	
	public NodoConj_var(String var){
		this.var=var;
	}
	
	public NodoConj_var(String var,NodoBase cv){
		this.var=var;
		this.cv=cv;
	}
	
	public void setvar(String var){
		this.var = var;
	}
	
	public String getvar(){
		return this.var;
	}
	
	public void setcv(NodoConj_var cv){
		this.cv = cv;
	}
	
	public NodoBase getcv(){
		return this.cv;
	}
}