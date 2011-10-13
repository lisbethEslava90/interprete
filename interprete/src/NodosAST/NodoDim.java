package NodosAST;

public class NodoDim extends NodoBase{
	
	public String var;
	public NodoBase con;
	
	public NodoDim(){
		super();
		this.var = null;
		this.con = null;
	}
	
	public NodoDim(String var){
		this.var=var;
	}
	
	public NodoDim(String var,NodoBase con){
		this.var=var;
		this.con=con;
	}
	
	public void setvar(String var){
		this.var = var;
	}
	
	public String getvar(){
		return this.var;
	}
	
	public void setcon(NodoDim con){
		this.con = con;
	}
	
	public NodoBase getcon(){
		return this.con;
	}
}