import java.util.Scanner;
public class Lista110 {

   
    public static void main(String[] args) {
        Scanner objeto = new Scanner(System.in);
        int a, b, c, d, e, media, soma, maior, menor;
        System.out.println("Digite a");
        a = objeto.nextInt();
        System.out.println("Digite b");
        b = objeto.nextInt();
        System.out.println("Digite c");
        c = objeto.nextInt();
        System.out.println("Digite d");
        d = objeto.nextInt();
        System.out.println("Digite e");
        e = objeto.nextInt();
          maior = a;
          menor = a;
       
           if(b>maior){
              maior=b;
           }
           if(c>maior){
              maior = c;    
           }
           if(d>maior){
              maior=d;
           }
           if(e>maior){
              maior=e;
           }
           
          
           if(b<menor){
              menor=b;
           }
           if(c<menor){
              menor=c;
           }
           if(d<menor){
              menor=d;
           }
           if(e<menor){
              menor=e;   
           }
          
        
           soma = a+b+c+d+e;
           
        media = soma/5;
        
        
        System.out.println("A soma dos valores é: " +soma);
        System.out.println("A media dos valores é: " +media);
        System.out.println("O máximo dos valores é: " +maior);
        System.out.println("O mínimos dos valores é: " +menor);
          
    }    
}