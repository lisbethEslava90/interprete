
package interprete;

import JFlex.anttask.JFlexTask;
import java.io.*;
/**
 *
 * @author LisEslava
 */
public class Main {
   
    /**
     * @param args the command line arguments
     */
    
    public static void main(String[] args) {
        // TODO code application logic here
        JFlex.Main.generate(new File("src\\interprete\\lexico.flex"));

    }

}
