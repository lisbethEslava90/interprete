package NodosAST;

public class NodoImprimir extends NodoBase {

    NodoBase conju;

    public NodoImprimir(NodoBase conju) {
        this.conju = conju;
    }

    public NodoBase getExpresion() {
        return conju;
    }
}
