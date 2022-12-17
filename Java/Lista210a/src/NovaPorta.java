
public class NovaPorta {
    double dimensaoX2,dimensaoY2, dimensaoZ2;
    String cor3;
    boolean aberta2;
    NovaPorta(Porta obj){
        dimensaoX2=obj.dimensaoX1;
        dimensaoY2=obj.dimensaoY1;
        dimensaoZ2=obj.dimensaoZ1;
        cor3=obj.cor1;
        aberta2=obj.aberta1;
    }
    String imprime(){
        System.out.println("Informações da nova porta");
        return ("Dimensão1 será: "+dimensaoX2 +"Dimensão2 será: "+ dimensaoY2 +"Dimensão3 será: "+ dimensaoZ2 +"A cor será: "+ cor3);
    }
    
}
