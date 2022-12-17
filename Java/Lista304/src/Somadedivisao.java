import java.lang.*;
public class Somadedivisao {
    int x,y; 
    double resultado=1;
    Somadedivisao(int x, int y){
        this.x=x;
        this.y=y;
    }
    Double elevadoA(){
        int i=1;
        resultado=1;
        while(i<=y){  
            
            resultado=resultado*x;
            i++;    
        }
 
        return resultado;
    }
    void imprimeResultado(){
        System.out.println(elevadoA());
    }
    Double PiQuadradoSobre8(int n){
        double i=1;
        int cont=0;
        resultado=0;
        do{
            resultado = (1/(Math.pow(i, 2))) + resultado;
            i=i+2;
            cont++;
        }while(cont!=n);
        return resultado;
    }
    Double CalculaPi(int n){
        int a, b;
        resultado=2;
        double i=1;
        double nume=2;
        int cont=0;
        do{
            for(a=0; a<2; a++){
                resultado= resultado*(nume/i);
                i=i+2;
                cont++;
            }
            for(b=0;b<2;b++){
                nume=nume+2;
                resultado= resultado*(nume/i);
                cont++;
            }
            
            }while(cont==n);
        return resultado;
    }
}

