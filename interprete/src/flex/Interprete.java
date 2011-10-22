/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package flex;

import NodosAST.NodoBase;
import NodosAST.NodoCadena;
import NodosAST.NodoDim;
import NodosAST.NodoIdentificador;
import NodosAST.NodoImprimir;

/**
 *
 * @author joferzz
 */


public class Interprete {
    
    private NodoBase root;

    public Interprete() {
    }

    public Interprete(NodoBase root) {
        this.root = root;
    }
      
    public void interpretar(){
        System.out.println("---------------------------");
        NodoBase actual = root;
        while(actual!=null){
            if(actual instanceof NodoImprimir){
                imprimir((NodoImprimir)actual);
            }else if(actual instanceof NodoDim){
                imprimir((NodoDim)actual);
            }
            actual = actual.getHermanoDerecha(); 
        }
        System.out.println("---------------------------");
    }

    private void imprimir(NodoImprimir nodoImprimir) {
        String s = ((NodoCadena)nodoImprimir.getExpresion()).getCadena();
        System.out.println(s);
    }
    private void imprimir(NodoDim nodoImprimir) {
        String r = ((NodoDim)nodoImprimir).getVariable();
        System.out.println(r);
    }
}
