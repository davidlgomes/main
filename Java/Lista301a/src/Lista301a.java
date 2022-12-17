import java.util.Scanner;
public class Lista301a {

    
    public static void main(String[] args) {
        int valor;
        Scanner obj = new Scanner(System.in);
        valor = obj.nextInt();
        Comparável obj2 = new Comparável(valor);
        obj2.ÉMaiorOuIgual();
        obj2.ÉMenorOuIgual();
        obj2.DiferenteDe();
    }
    
}
