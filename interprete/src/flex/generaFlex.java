
package flex;

import JFlex.anttask.JFlexTask;
import java.io.*;

import flex.*;
/**
 *
 * @author LisEslava
 */
public class generaFlex {
   
    /**
     * @param args the command line arguments
     */
    
    public static void main(String[] args) {
        // TODO code application logic here
        JFlex.Main.generate(new File("src\\flex\\lexico.flex"));
    }

}
