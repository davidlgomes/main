
public class Porta {
        boolean aberta1;
        String cor1;
        double dimensaoX1, dimensaoY1, dimensaoZ1;
    Porta(boolean aberta, String cor, double dimensaoX, double dimensaoY,double dimensaoZ){
        aberta1 = aberta;
        cor1=cor;
        dimensaoX1= dimensaoX;
        dimensaoY1= dimensaoY;
        dimensaoZ1= dimensaoZ;
    }   
    void abre(){
        aberta1=true;
    }
    void fecha(){
        aberta1=false;
    }
    void pinta(String cor2){
        cor1=cor2;
        
    }
    boolean estaAberta(){
        if(aberta1==true){
            System.out.println("Está Aberta");
        }
        else{
            System.out.println("A porta está fechada");
        }
    return aberta1;
    }
    
        
}

