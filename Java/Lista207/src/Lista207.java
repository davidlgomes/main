import java.util.Scanner;
public class Lista207 {

    public static void main(String[] args) {
       String nome, autores, editora, isbn, nomen,autoresn, editoran,isbnn, ano, anon, conf;
       
       Scanner obj = new Scanner(System.in);
       System.out.println("Digite o nome");
       nome = obj.nextLine();
       System.out.println("Digite o autor");
       autores = obj.nextLine();
       System.out.println("Digite a editora");
       editora = obj.nextLine();
       System.out.println("Digite o isbn");
       isbn = obj.nextLine();
       System.out.println("Digite o ano");
       ano = obj.nextLine();
       
       Livros obj1 = new Livros(nome, autores, editora, isbn, ano);
       obj1.mostraDados();
       System.out.println("Deseja atualizar os dados?");
       conf = obj.nextLine();
       switch(conf){
           case "s":
               System.out.println("Digite o nome");
               nomen = obj.nextLine();
               System.out.println("Digite o autor");
               autoresn = obj.nextLine();
               System.out.println("Digite a editora");
               editoran = obj.nextLine();
               System.out.println("Digite o isbn");
               isbnn = obj.nextLine();
               System.out.println("Digite o ano");
               anon = obj.nextLine();
               obj1.atualizaDados(nomen, autoresn, editoran, isbnn, anon);
               obj1.mostraDados();
               break;
           default:
               break;
       }
    }
    
}
