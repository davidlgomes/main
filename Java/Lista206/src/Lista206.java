import java.util.Scanner;
public class Lista206 {
   
    public static void main(String[] args) {
        float num1, num2, soma, multiplicacao, divisao, subtracao;
        Scanner obj = new Scanner(System.in);
        System.out.println("Digite o primeiro numero");
        num1 = obj.nextFloat();
        System.out.println("Digite o segundo valor");
        num2 = obj.nextFloat();
        soma = num1+num2;
        multiplicacao = num1*num2;
        divisao = num1/num2;
        subtracao = num1-num2;
        System.out.println(soma);
        System.out.println(multiplicacao);
        System.out.println(subtracao);
        System.out.println(divisao);
    }  
}
