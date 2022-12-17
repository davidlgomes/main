import java.util.Scanner;
public class Comparável {
    int valor1, valor2;
    boolean sim;
    Scanner obj1 = new Scanner(System.in);
    Comparável(int valor){
        valor1 = valor;
        valor2 = obj1.nextInt();

    }
    public void ÉMaiorOuIgual(){
        if(valor1>=valor2){
            sim=true;
            System.out.println(sim + "É maior ou igual");
        }
        else{
            sim=false;
            System.out.println(sim + "É maior ou igual");
        }
    } 
    public void ÉMenorOuIgual(){
        if(valor1<=valor2){
           sim=true;
           System.out.println(sim + "É menor ou igual");
        }
        else{
            sim=false;
            System.out.println(sim + "É menor ou igual");
        }
    }
        public void DiferenteDe(){
            if(valor1!=valor2){
                sim=true;
                System.out.println(sim + "É diferente de");
            }
            else{
                sim=false;
                System.out.println(sim + "É diferente de");
            }
        }
}

