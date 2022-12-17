import java.util.Scanner;
public class Lista111b {

    public static void main(String[] args) {
        int a, b;
        Scanner obj1 = new Scanner(System.in); 
        Metodos obj2 = new Metodos();
        System.out.println("Digite o valor de a");
        a = obj1.nextInt();
        System.out.println("Digite o valor de b");
        b = obj1.nextInt();
        Metodos.verifica(a);
        Metodos.major(a,b);
        
    }
    
}
