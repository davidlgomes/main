class Exe5e{
    static int a;     
    boolean par;     
    Exe5e(int n){        
        a = n; 
    }     
    void preencheParidade(){
        if(a%2 == 0){
            par = true;
            System.out.println("O número é par: sim ou não?" +par);
        }
        else{ 
            par = false; 
            System.out.println("O número é par: sim ou não?" +par);
        }
    } 
} 
