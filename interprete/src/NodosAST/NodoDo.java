package NodosAST;

public class NodoDo extends NodoBase{
	
	public NodoBase pdo;
	public NodoBase ex1;
	
	public NodoDo(){
		super();
		this.pdo = null;
		this.ex1 = null;
	}
	
	public NodoDo(NodoBase pdo,NodoBase ex1){
		this.pdo=pdo;
		this.ex1=ex1;
	}
	
	public void setpdo(NodoDo pdo){
		this.pdo = pdo;
	}
	
	public NodoBase getpdo(){
		return this.pdo;
	}
	
	public void setex1(NodoDo ex1){
		this.ex1 = ex1;
	}
	
	public NodoBase getex1(){
		return this.ex1;
	}
}