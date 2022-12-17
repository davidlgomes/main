import java.util.Scanner;
public class Lista209 {
    static double imc;
    static String nome="David", sexo="M";
    static int idade=0;
    static double altura=1.65, peso=80.2;
    
    public static void main(String[] args) {     
         Scanner obj = new Scanner(System.in); 
         int conf;
         Lista209 obj1 = new Lista209();
         System.out.println("Deseja alterar dados?");
         conf=obj.nextInt();
         if(conf==1){
         obj1.getNome();
         obj1.getIdade();
         obj1.getSexo();
         obj1.getAltura();
         obj1.getPeso();
         obj1.calcIMC();
         obj1.imprime();
         }
         else{
         obj1.calcIMC();
         obj1.imprime();
         }
    }
    void getNome(){
       Scanner obj = new Scanner(System.in);
       nome=obj.nextLine();
    } 
    void getSexo(){
        Scanner obj = new Scanner(System.in);
        sexo=obj.nextLine();
    }
    void getIdade(){
        Scanner obj = new Scanner(System.in);
        idade=obj.nextInt();
    }
    void getAltura(){
        Scanner obj = new Scanner(System.in);
        altura=obj.nextDouble();
    }
    void getPeso(){
        Scanner obj = new Scanner(System.in);
        peso=obj.nextDouble();
    }
    void calcIMC(){
      imc = peso/(Math.pow(altura,2));
    }
    void imprime(){
        System.out.println(nome);
        System.out.println(idade);
        System.out.println(sexo);
        if(imc<=18.5){
            System.out.println("Abaixo do peso normal");
        }
        if((imc > 18.5)&&(imc<25)){
            System.out.println("Peso Normal");
        }
        if((imc>25)&&(imc<30)){
            System.out.println("Acima do peso normal");
        }
        if(imc>30){
            System.out.println("Obesidade");
        }
    }
}

