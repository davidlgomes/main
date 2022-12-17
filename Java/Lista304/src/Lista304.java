import java.util.Scanner;
public class Lista304 {

    public static void main(String[] args) {
        Scanner obj = new Scanner(System.in);
        int x, y;
        x=obj.nextInt();
        y=obj.nextInt();
        Somadedivisao obj1= new Somadedivisao(x, y);
        obj1.elevadoA();
        obj1.imprimeResultado();
        obj1.CalculaPi(y);
        obj1.PiQuadradoSobre8(y);
        System.out.println(obj1.CalculaPi(y));
        System.out.println(obj1.PiQuadradoSobre8(y));
    }
    
}
