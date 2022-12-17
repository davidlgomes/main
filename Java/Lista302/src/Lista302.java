import java.util.Scanner;
public class Lista302 {

    
    public static void main(String[] args) {
        double num, num3;
        String op;
        Scanner obj1 = new Scanner(System.in);
        op = obj1.nextLine();
        num = obj1.nextDouble();
        num3 = obj1.nextDouble();
        Calculadoraa obj = new Calculadoraa(num, num3);
        
        switch(op){
            case "+":
                obj.soma();
                break;
            case "-":
                obj.subtracao();
                break;
            case "*":
                obj.multiplicacao();
                break;
            case "/":
                obj.divisao();
                break;
            default:
                break;
        }
    }
    
}
