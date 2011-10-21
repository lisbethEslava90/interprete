/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package NodosAST ;

/**
 *
 * @author joferzz
 */
public class NodoCadena extends NodoBase{
    private String cadena;

    public NodoCadena() {
    }

    public NodoCadena(String cadena) {
        this.cadena = cadena;
    }

    public String getCadena() {
        return cadena;
    }
    
    
}
