
public class Metodos {
    Metodos(){
    }
    static void verifica(int a){
       if(a%2==1){
          System.out.println(a+" é Ímpar");
       }
       else{
          System.out.println(a +" É par");
       }
       
    }
     static void major(int a, int b){
        int maior;
        maior=a;
        if(b>maior){
            maior = b;
        }
        System.out.println("O maior é"+maior);

     }
}