import java.util.Scanner;
public class Lista211 {

    
    public static void main(String[] args) {
       Scanner obj = new Scanner(System.in);
       int total, soma;
       System.out.println("Digite a quantidade de numeros da serie de Fibonacci a imprimir");
       total = obj.nextInt();
       int vetor[];
       vetor=new int[total];
       vetor[0]=1;
       vetor[1]=1;
       soma=1;
       for(int i=0; i<total; i++){
             if(i>=1){
               vetor[i]= soma;
               soma=vetor[i]+vetor[i-1];
             }
       }
       for(int i=0;i<total;i++){
       System.out.println(vetor[i]);
       }
    }
}
