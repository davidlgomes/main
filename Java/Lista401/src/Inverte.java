
public class Inverte {
    int n;
    int vetor1[];
    int a, j;
    Inverte(int vetor[], int n){
      this.n= n;
      vetor1 = new int[n];  
    }
      void inverter(int vetor[]){
        for(int i=0; i<n ;i++){    
          vetor1[i]=vetor[i];
          i=j;
        }
        
        for(int i=0; i<n; i++){
           vetor1[j]=a;
           vetor[i]=vetor1[j];
           a=vetor1[j];
        }
         for(int i=0; i<n; i++){
             System.out.println(vetor[i]);
         }
      }
}
         
       

