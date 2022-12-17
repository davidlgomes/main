import java.lang.Math;
import java.util.Scanner;
public class Lista113 {

    
    public static void main(String[] args) {
       double x1, x2, y1, y2, dist,difx, dify, expx, expy;
       Scanner obj1 = new Scanner(System.in);
       System.out.println("Digite a posição inicial de x");
       x1=obj1.nextDouble();
       System.out.println("Digite a posição final de x");
       x2=obj1.nextDouble();
       System.out.println("Digite a posição inicial de y");
       y1=obj1.nextDouble();
       System.out.println("Digite a posição final de y");
       y2=obj1.nextDouble();
       difx=x2-x1;
       dify=y2-y1;
       expx= Math.pow(difx,2);
       expy= Math.pow(dify,2);
       dist = Math.sqrt(expx+expy);
       System.out.println(dist);
    }
    
}
