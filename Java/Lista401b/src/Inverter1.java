public class Inverter1{
    int n, a, j;
    int vetor1[] = new int[n];
    Inverter1(int n){
      this.n=n; 
      j=n;
    }
    
      void inverter(int vet[]){
          for(int i=0; i< n; i++){
             vetor1[i]=vet[i];
             
      }
          for(int i=0; i<n/2; i++){
           a=vet[i];
           vet[j-1-i]=a;
           j--;
           
        }
         for(int i=0; i<n; i++){
            System.out.println(vet[i]);
         }
      }
}