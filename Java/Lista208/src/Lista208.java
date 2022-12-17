import java.util.Scanner;
public class Lista208 {

    public static void main(String[] args) {
       int numcont, cpf, saq;
       double saldo, saque=0, deposito=0;
       String nome, dep;
       
       Scanner obj = new Scanner(System.in);
       System.out.println("Digite o nome completo");
       nome = obj.nextLine();
       System.out.println("Digite o número da conta");
       numcont = obj.nextInt();
       System.out.println("Digite o número do CPF");
       cpf = obj.nextInt();
       System.out.println("Digite o valor atual na conta");
       saldo = obj.nextDouble();
       Conta obj1 = new Conta(numcont, nome, cpf, saldo);
       
       System.out.println("1-saque?");
       saq = obj.nextInt();
       switch(saq){
           case 1: 
               System.out.println("Digite o valor a ser sacado");
               saque = obj.nextDouble();
               obj1.sacar(saque);
             break;
           default:
             break;
       }        
       System.out.println("Deseja realizar um depósito?");
       dep=obj.nextLine();
       switch(dep){
           case "s": 
               System.out.println("Digite o valor a ser depositado");
               deposito = obj.nextDouble();
               obj1.deposito(deposito);
             break;
           default:
             break;
       }
       obj1.retor();
    }
    
}
