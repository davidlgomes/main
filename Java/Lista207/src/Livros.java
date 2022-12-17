


public class Livros {
    String nome, autores, editora, isbn, ano;
    
    Livros(String nome , String autores, String editora, String isbn, String ano){
       this.nome = nome;
       this.autores = autores;
       this.editora=editora;
       this.isbn = isbn;
       this.ano = ano;
    }
    void mostraDados(){
        System.out.println(nome);
        System.out.println(autores);
        System.out.println(editora);
        System.out.println(isbn);
        System.out.println(ano);
    }
    void atualizaDados(String nomen, String autoresn, String editoran, String isbnn, String anon){
        this.nome=nomen;
        this.autores=autoresn;
        this.editora = editoran;
        this.isbn=isbnn;
        this.ano=anon;
    }
 } 


