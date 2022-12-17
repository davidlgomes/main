import java.util.Scanner;
public class Lista303 {
    public static void main(String[] args) {
        int ano1, mes1, dia1;
        int hora1, minutos1; 
        int anoNas1, mesNas1, diaNas1;
        Scanner ent = new Scanner(System.in);
        ano1 = ent.nextInt();
        mes1 = ent.nextInt();
        dia1 = ent.nextInt();
        anoNas1 = ent.nextInt();
        mesNas1 = ent.nextInt();
        diaNas1 = ent.nextInt();
        hora1 = ent.nextInt();
        minutos1 = ent.nextInt();
        Data obj1 = new Data(ano1, mes1, dia1);
        float valor1=20.5f;
        int sala1=3;
        
        Horario obj2 = new Horario(hora1, minutos1);
        EntradaDeCinema obj = new EntradaDeCinema(obj1, obj2, sala1, valor1);
        obj.CalculaDesconto(obj1, anoNas1, mesNas1, diaNas1);
        obj.DescontoHorario(obj2);
        obj.imprime(obj2, obj1);
        System.out.println(obj.imprime(obj2, obj1));
    }
    
}
