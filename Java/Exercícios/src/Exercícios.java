
public class Exercícios {

    
    public static void main(String[] args) {
       int a, b, c;
       b=c=10;
       a= b++ + b++;
       System.out.println(a); //20
       System.out.println(b); //12
       a = ++c + ++c; 
       System.out.println(a); //22
       System.out.println(c);
       b=10;
       a= b++ + b;
       System.out.println(a); //24
       System.out.println(b); //13
       a=10;
       b=5;
       if(a>b||++b>5)
           System.out.println(b); //6
           a=1;
           b=5;
       if(a>b||++b>5)
           System.out.println(b); //6
    }
    
}
