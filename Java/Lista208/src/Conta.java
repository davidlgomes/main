public class Conta {
    int numcont, cpf;
    String nome; 
    double saldo;    
    Conta(int numcont, String nome, int cpf, double saldo){
        this.numcont=numcont;
        this.nome=nome;
        this.cpf=cpf;
        this.saldo=saldo;
    }
    void sacar(double saque){
        System.out.println("Saldo antes do saque: " +saldo);
        saldo=saldo-saque;
        System.out.println("Saldo depois do saque: " +saldo);
        System.out.println("Total do saque é: " +saque);
    }
    void deposito(double deposito){
        System.out.println("Saldo antes do depósito é: "+ saldo);
        saldo = saldo + deposito;
        System.out.println("Saldo depois do depósito é: " +saldo);
        System.out.println("Total do depósito foi: " +deposito);
    }
    String retor(){
        System.out.println("Número da conta: " + numcont);
        System.out.println("Nome: " +nome);
        System.out.println("CPF: " +cpf);
        System.out.println("Saldo: " +saldo);
        return("Número da conta: " + numcont + "Nome: " +nome +"CPF: " +cpf +"Saldo: " +saldo);
 
    }
}
