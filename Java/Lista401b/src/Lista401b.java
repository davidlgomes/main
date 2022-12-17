import java.util.Scanner;
public class Lista401b {

    
    public static void main(String[] args) {
       int n;
       Scanner obj= new Scanner(System.in);
       n = obj.nextInt();
       int vet[] = new int[n];
       for(int i=0; i < n; i++){
           vet[i] = obj.nextInt();
       }
       Inverter1 obj2 = new Inverter1(n);
       obj2.inverter(vet);
    }
    
}
