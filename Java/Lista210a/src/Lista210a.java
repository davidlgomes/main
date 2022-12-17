import java.util.Scanner;
public class Lista210a{

    public static void main(String[] args){
        Scanner obj1 = new Scanner(System.in);
        boolean aberta=true, resposta;
        String cor="Vermelho",cor2;
        double dimensaoX=10.0, dimensaoY=9.1, dimensaoZ=5.7;
        Porta obj = new Porta(aberta, cor, dimensaoX, dimensaoY, dimensaoZ);
        obj.estaAberta();
        if(obj.aberta1==true){
            System.out.println("Deseja fechar a porta?");
            resposta=obj1.nextBoolean();
            if(resposta==true){
                obj.fecha();
            }
        }
        else{
            System.out.println("Deseja abrir a porta?");
            resposta=obj1.nextBoolean();
            if(resposta==true){
                obj.abre();
        }
    }
        System.out.println("Deseja pintar a porta?");
        resposta=obj1.nextBoolean();
        if(resposta==true){
            cor2=obj1.nextLine();
            obj.pinta(cor2);
        }
        
        NovaPorta obj3 = new NovaPorta(obj);
        obj3.imprime();
        System.out.println(obj3.imprime());
        
    }
}
    

