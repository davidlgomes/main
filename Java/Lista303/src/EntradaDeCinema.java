
public class EntradaDeCinema {
    String dataDofilme;
    String horario;
    int sala;
    float valor;
    EntradaDeCinema(Data obj1, Horario obj2, int sala1, float valor1){
        dataDofilme = obj1.dataDofilme;
        horario=obj2.horario;
        sala=sala1;
        valor=valor1;
    }
    void CalculaDesconto(Data obj1, int anoNas1, int mesNas1, int diaNas1){
        if(obj1.ano - anoNas1<=12){
            if(obj1.mes < mesNas1){
                if(obj1.dia>diaNas1){
                    valor*=0.5f;
                    System.out.println("Voce tem direito a 50% de desconto! O valor a ser pago será: "+valor);
                }
                else
                    System.out.println("Você não tem direito ao desconto de idade!");
            }
            else
                System.out.println("Você não tem direito ao desconto de idade!");
         
        }
        else
            System.out.println("Você não tem direito ao desconto de idade!");
    }
    void DescontoHorario(Horario obj2){
        if(obj2.hora<=16){
            if(obj2.minutos<=30){
                valor=valor*0.9f;
                System.out.println("Voce tem direito a um desconto de 10%. O valor a ser pago será: "+valor);
            }
        }
    }
    String imprime(Horario obj2, Data obj1){
        return "Horario de chegada: " + obj2.horario+ "\n" + "Horario do filme: " + horario + "\n" + "Sala: " + sala +"Valor: "+ valor +"\n";
    }
}
