import java.util.Scanner;
public class Lista401 {

    
    public static void main(String[] args) {
       Scanner obj= new Scanner(System.in);
       int n;
       n=obj.nextInt();
       int vetor[] = new int[n];
       for(int i=0; i<n; i++){
           vetor[i] = obj.nextInt();
       }
       Inverte obj1 = new Inverte(vetor, n);
       obj1.inverter(vetor);
    }
    
}
