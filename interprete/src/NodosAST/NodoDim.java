/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package NodosAST;

/**
 *
 * @author joferzz
 */
public class NodoDim extends NodoBase{
    public NodoBase con;
    public String variable;

    public NodoDim() {
    }

    public NodoDim(String variable) {
        this.variable = variable;
    }
    
    public NodoDim(NodoBase con, String variable) {
        this.con = con;
        this.variable = variable;
    }

    public NodoBase getCon() {
        return con;
    }

    public String getVariable() {
        return variable;
    }

    public void setCon(NodoBase con) {
        this.con = con;
    }

    public void setVariable(String variable) {
        this.variable = variable;
    }
    
}