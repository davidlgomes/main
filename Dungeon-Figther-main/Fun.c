#include<stdio.h>
#include<stdlib.h>
#include<stdint.h>
#include<time.h>
#include "dung.h"

void escolherpersonagem(int opc){
	tipo heroi;
	char cont;
	do{
		system("cls");
		printf("%d", opc);
		printf("G - Guerreiro  || Aumenta sua defesa em 50%% durante duas rodadas.\n");
		printf("P - Paladino   || Recupera 50%% dos seus pontos de vida totais.\n");
		printf("B - Barbaro    || Desfere um ataque que causa 50%% a mais de dano.\n\n");
		printf("Digite a letra do personagem desejado: ");
		scanf(" %c",&heroi.classe);
		
		if(heroi.classe=='g' || heroi.classe=='G'){
			printf("Muito bem! Voce escolheu o Guerreiro!\nDeseja continuar? (s / n)\n> ");
			heroi.classe = 'g';
		}else if(heroi.classe=='b' || heroi.classe=='B'){
			printf("Muito bem! Voce escolheu o Barbaro!\nDeseja continuar? (s / n)\n> ");
			heroi.classe='b';
		}else if(heroi.classe=='p' || heroi.classe=='P'){
			printf("Muito bem! Voce escolheu o Paladino!\nDeseja continuar? (s / n)\n> ");
			heroi.classe='p';
	
		}
		if(heroi.classe=='g' || heroi.classe == 'G' || heroi.classe=='b' || heroi.classe=='B' || heroi.classe=='p' || heroi.classe=='P'){
			scanf(" %c",&cont);
			if(cont=='s' || cont=='S'){
				distribuirpontos(heroi, opc);
			}
		if(cont=='n' || cont=='N'){
		cont='n';
		}
		}else{
			printf("Opcao invalida! Digite novamente.\n");
			system("pause");
		}
	}while((cont=='n')||(heroi.classe!='g' && heroi.classe!='G' && heroi.classe!='b' && heroi.classe!='B' &&  heroi.classe!='p' && heroi.classe!='P'));
}

void distribuirpontos(tipo heroi, int opc){
tipo mat[5][10], chefe, monstro, armadilhagrande, armadilhapequena, elixir, duvida, vazio;
int saude=0; int contelixir=0; int lin=0; int col=0;
	int total=10, pontosdisp;
	char opcao;
	do{
		system("cls");
		printf("%d", opc);
		printf("Voce tem 10 pontos, distribua-os em \n1- Ataque \n2- Saude\n3- Defesa\n");
		printf("ATAQUE: ");
		scanf(" %d",&heroi.ataque);
		if(heroi.ataque==10){
			printf("\nNao adicione tudo no ataque.\n");
			system("PAUSE");
		}else if(heroi.ataque<=0){
			printf("\nValor invalido. Adicione novamente.\n");
			system("PAUSE");
		}else if(heroi.ataque>10){
			printf("\nVoce nao possui pontos o bastante.\n");
			system("PAUSE");
		}else{
			pontosdisp = total - heroi.ataque;
			printf("Voce ainda possui %d pontos.\n",pontosdisp);
			printf("DEFESA: ");
			scanf(" %d",&heroi.defesa);
			if(heroi.defesa==pontosdisp){
				printf("\nVoce precisa deixar algo para a saude.\n");
			}else if(heroi.defesa<=0){
				printf("\nValor invalido. Adicione novamente.\n");
				system("PAUSE");
			}else if(heroi.defesa>pontosdisp){
				printf("\nVoce nao possui pontos o bastante.\n");
				system("PAUSE");
			}else{
				pontosdisp = pontosdisp - heroi.defesa;
				//REFAZER A PARTE ABAIXO DA SEGUINTE FORMA:
				// "X PONTOS SOBRARAM, DESEJA ADICIONA-LOS EM ALGUM ATRIBUTO OU COMECAR DO ZERO?"
				printf("\nVoce deseja adicionar os %d pontos que sobraram a saude?\nAperte S para adicionar ou qualquer outra tecla para cancelar.\n",pontosdisp);
				scanf(" %c",&opcao);
				if(opcao=='s' || opcao == 'S'){
					heroi.saude=pontosdisp;
					pontosdisp=0;
					if(opc==1){
					definirtabuleiro(heroi);
			        }
			        else{
						printf("%d", opc);
						system("PAUSE");
						andar(mat,heroi,&saude,chefe, monstro, armadilhagrande, armadilhapequena, elixir, duvida, vazio, &contelixir, &lin, &col);
					    
					}
				}else{
					printf("Ok! Vamos fazer novamente!\n");
					system("pause");
				}
				
			}
		}
	}while((pontosdisp>0)||(heroi.ataque==10 && heroi.ataque<=0 && heroi.ataque>10) || (heroi.defesa==pontosdisp && heroi.defesa<=0&&heroi.defesa>pontosdisp)||(opcao!='s'&&opcao!='S'));
}

void definirtabuleiro(tipo heroi){
	srand(time(NULL));
	int num,i,j,contelixir=0,lin=0,col=0;
	tipo mat[5][10];
	tipo chefe;
	tipo monstro;
	tipo armadilhagrande;
	tipo armadilhapequena;
	tipo elixir;
	tipo duvida;
	tipo vazio;
	
	monstro.classe = 'm';
	chefe.classe = 'c';
	armadilhagrande.classe = 'Y';
	armadilhapequena.classe = 'y';
	elixir.classe = 'e';
	duvida.classe= 'd';
	vazio.classe = ' ';

	
	for(i=0;i<5;i++){
		for(j=0;j<10;j++){
			mat[i][j].classe = 'd'; // define todo o tabuleiro como duvida;
		}
	}
	
	for(i=0;i<4;i++){
		num = rand()%10;
		if(mat[i][num].classe == 'd'){
			mat[i][num] = monstro;
		}else{
			i--;
		}
	}
	
	for(i=0;i<4;i++){
		num=rand()%10;
		if(mat[i][num].classe=='d'){
			mat[i][num] = armadilhagrande;
		}else{
			i--;
		}
	}
	
	for(i=0;i<4;i++){
		num=rand()%10;
		if(mat[i][num].classe=='d'){
			mat[i][num] = armadilhapequena;
		}else{
			i--;
		}
	}
	
	for(i=0;i<4;i++){
		num=rand()%10;
		if(mat[i][num].classe=='d'){
			mat[i][num] = elixir;
		}else{
			i--;
		}
	}
	mat[0][0] = heroi; // define local inicial do personagem
	mat[4][rand()%10] = chefe; //define local do chefao

	// pontuacao dos monstros
	monstro.ataque=3;
	monstro.defesa=3;
	monstro.saude=4;
	
	// pontuacao do chefao
	// pontuacao do chefao eh 15
	chefe.ataque=6;
	chefe.defesa=5;
	chefe.saude=4;
	
	// visibilidade 
	heroi.visivel=1;
	chefe.visivel=1;
	elixir.visivel=0;
	armadilhagrande.visivel=0;
	armadilhapequena.visivel=0;
	monstro.visivel=0;
	
	andar(mat,heroi,&heroi.saude,chefe,monstro,armadilhagrande,armadilhapequena,elixir,duvida,vazio,&contelixir,&lin,&col);
}

void exibir(tipo mat[][10]){
	int i,j;
	printf("1   2   3   4   5   6   7   8   9   10\n\n");

	for(i=0;i<5;i++){
		for(j=0;j<10;j++){
			if(mat[i][j].classe == 'd'){
				printf("?   ");
			}else{
				if(mat[i][j].classe=='m'){ // monstro
					printf("M   ");
				}else if(mat[i][j].classe=='c'){ // chefe
					printf("C   ");
				}else if(mat[i][j].classe=='Y'){ 
					printf("G   "); // armadilha grande
				}else if(mat[i][j].classe=='y'){
					printf("p   "); // armadilha pequena
				}else if(mat[i][j].classe=='g' || mat[i][j].classe=='p' || mat[i][j].classe=='b'){ // heroi
					printf("H   ");
				}else if(mat[i][j].classe=='e'){ // elixir
					printf("e   ");
				}else if(mat[i][j].classe==' '){
					printf("    ");
				}
			}
		}
		printf("\n\n");
	}

}

void andar(tipo mat[][10],tipo heroi,int *saude,tipo chefe, tipo monstro, tipo armadilhagrande, tipo armadilhapequena, tipo elixir, tipo duvida, tipo vazio, int *contelixir, int *lin, int *col){
	
	char posicao;
	char classe;
	int linha = *lin;
	int coluna = *col;
	srand(time(NULL));
	do{
		system("cls");
		exibir(mat);
        printf("\n Para qual direcao voce deseja ir? \na - Esquerda\nd - Direita \ns - baixo\nw - cima\n");
        scanf(" %c", &posicao);
        // Talvez seja necessario refazer a parte abaixo
        // necessario conferir o dano das armadilhas, nao parece estar funcionando perfeitamente (parece causar menos dano do que deveria)
		if(posicao=='a' || posicao == 'A'){
			if(coluna-1>=0){
				if(mat[linha][coluna-1].classe==' '){
					classe = ' ';
					mat[linha][coluna-1] = heroi;
					mat[linha][coluna-1].classe = heroi.classe;
					mat[linha][coluna].classe = vazio.classe;
					coluna--; 
					*col = coluna;
				}else if(mat[linha][coluna-1].classe=='d'){
					classe = 'd';
					mat[linha][coluna-1] = heroi;
					mat[linha][coluna-1].classe = heroi.classe;
					mat[linha][coluna].classe = vazio.classe;
					coluna--; 
					*col = coluna;
				}else if(mat[linha][coluna-1].classe=='m'){
                    classe = 'm';
					combate(&heroi, classe,monstro,&chefe, linha, coluna,&contelixir, mat);  
					coluna--;
					*col = coluna;
				}else if(mat[linha][coluna-1].classe=='Y'){ // armadilha com dano variavel de 1 a 5 (ver depois como diminuir esse dano)
					classe='Y';
					mat[linha][coluna-1] = heroi;
					mat[linha][coluna-1].classe = heroi.classe;
					mat[linha][coluna].classe = vazio.classe;
					*saude = *saude - rand()%5+1;
					coluna--;
					*col = coluna;
					printf("Sua saude e %d\n", heroi.saude);
					system("pause");
				}else if(mat[linha][coluna-1].classe=='y'){ // armadilha com dano fixo de 1
					classe = 'y';
					mat[linha][coluna-1] = heroi;
					mat[linha][coluna-1].classe = heroi.classe;
					mat[linha][coluna].classe = vazio.classe;
					*saude = *saude - 1;
					coluna--;
					*col = coluna;
					printf("Sua saude e %d\n", heroi.saude);
					system("pause");
				}else if(mat[linha][coluna-1].classe=='e'){
					classe = 'e';
					mat[linha][coluna-1] = heroi;
					mat[linha][coluna-1].classe = heroi.classe;
					mat[linha][coluna].classe = vazio.classe;
					*contelixir = *contelixir + 1;
					coluna--;
					*col = coluna;
				}else if(mat[linha][coluna-1].classe=='c'){
                    classe = 'c';
					combate(&heroi, classe,monstro,&chefe, linha, coluna,&contelixir, mat);  
					coluna--;
				    *col = coluna;
				}
			}else{
				printf("Posicao invalida.\n");
				system("pause");
			}
		}
		
		if(posicao=='d' || posicao == 'D'){
			if(coluna+1<=9){
				if(mat[linha][coluna+1].classe==' '){
					classe = ' ';
					mat[linha][coluna+1] = heroi;
					mat[linha][coluna+1].classe = heroi.classe;
					mat[linha][coluna].classe = vazio.classe;
					coluna++; 
					*col = coluna;
				}else if(mat[linha][coluna+1].classe=='d'){
					classe = 'd';
					mat[linha][coluna+1] = heroi;
					mat[linha][coluna+1].classe = heroi.classe;
					mat[linha][coluna].classe = vazio.classe;
					coluna++; 
					*col = coluna;
				}else if(mat[linha][coluna+1].classe=='m'){
					classe = 'm';
					combate(&heroi, classe,monstro,&chefe, linha, coluna,&contelixir, mat);  
					coluna++;
					*col = coluna; 
				}else if(mat[linha][coluna+1].classe=='Y'){ // armadilha com dano variavel de 1 a 5 (ver depois como diminuir esse dano)
					classe = 'Y';
					mat[linha][coluna+1] = heroi;
					mat[linha][coluna+1].classe = heroi.classe;
					mat[linha][coluna].classe = vazio.classe;
					*saude = *saude - rand()%5+1;
					coluna++;
					*col = coluna;
					printf("Sua saude e %d\n", heroi.saude);
					system("pause");
				}else if(mat[linha][coluna+1].classe=='y'){ // armadilha com dano fixo de 1
					classe='y';
					mat[linha][coluna+1] = heroi;
					mat[linha][coluna+1].classe = heroi.classe;
					mat[linha][coluna].classe = vazio.classe;
					*saude = *saude - 1;
					coluna++;
					*col = coluna;
					printf("Sua saude e %d\n", heroi.saude);
					system("pause");
				}else if(mat[linha][coluna+1].classe=='e'){
					classe = 'e';
					mat[linha][coluna+1] = heroi;
					mat[linha][coluna+1].classe = heroi.classe;
					mat[linha][coluna].classe = vazio.classe;
					*contelixir = *contelixir + 1;
					coluna++;
					*col = coluna;
				}else if(mat[linha][coluna+1].classe=='c'){
					classe = 'c';
					combate(&heroi, classe,monstro,&chefe, linha, coluna,&contelixir, mat);  
					coluna++;
					*col=coluna;
				}
			}else{
				printf("Posicao invalida!\n");
				system("pause");
			}
		}
		
		if(posicao=='s' || posicao == 'S'){
			if(linha+1<5){
				if(mat[linha+1][coluna].classe==' '){
					classe = ' ';
					mat[linha+1][coluna] = heroi;
					mat[linha+1][coluna].classe = heroi.classe;
					mat[linha][coluna].classe = vazio.classe;
					linha++; 
					*lin = linha;
				}else if(mat[linha+1][coluna].classe=='d'){
					classe = 'd';
					mat[linha+1][coluna] = heroi;
					mat[linha+1][coluna].classe = heroi.classe;
					mat[linha][coluna].classe = vazio.classe;
					linha++;
					*lin = linha;
				}else if(mat[linha+1][coluna].classe=='m'){
					classe = 'm';
					combate(&heroi, classe,monstro,&chefe, linha, coluna,&contelixir, mat);   
					linha++;
					*lin=linha;
				}else if(mat[linha+1][coluna].classe=='Y'){ // armadilha com dano variavel de 1 a 5 (ver depois como diminuir esse dano)
					system("cls");
					classe='Y';
					mat[linha+1][coluna] = heroi;
					mat[linha+1][coluna].classe = heroi.classe;
					mat[linha][coluna].classe = vazio.classe;
					*saude = *saude - rand()%5+1;
					linha++;
					*lin = linha;
					printf("Sua saude e %d\n", heroi.saude);
					system("pause");
				}else if(mat[linha+1][coluna].classe=='y'){ // armadilha com dano fixo de 1
					classe='y';
					system("cls");
					mat[linha+1][coluna] = heroi;
					mat[linha+1][coluna].classe = heroi.classe;
					mat[linha][coluna].classe = vazio.classe;
					*saude = *saude - 1;
					linha++;
					*lin = linha;
					printf("Sua saude e %d\n", heroi.saude);
					system("pause");
				}else if(mat[linha+1][coluna].classe=='e'){
					classe='e';
					mat[linha+1][coluna] = heroi;
					mat[linha+1][coluna].classe = heroi.classe;
					mat[linha][coluna].classe = vazio.classe;
					*contelixir = *contelixir + 1;
					linha++;
					*lin = linha;
				}else if(mat[linha+1][coluna].classe=='c'){
					classe='c';
					combate(&heroi, classe,monstro,&chefe, linha, coluna,&contelixir, mat);  
					linha++;
					*lin=linha;
				}
			}else{
				printf("Posicao invalida!\n");
				system("pause");
			}
		}   
		
		if(posicao=='w' || posicao == 'W'){
			if(linha-1>=0){
				if(mat[linha-1][coluna].classe==' '){
					classe = ' ';
					mat[linha-1][coluna] = heroi;
					mat[linha-1][coluna].classe = heroi.classe;
					mat[linha][coluna].classe = vazio.classe;
					linha--; 
					*lin = linha;
				}else if(mat[linha-1][coluna].classe=='d'){
					classe='d';
					mat[linha-1][coluna] = heroi;
					mat[linha-1][coluna].classe = heroi.classe;
					mat[linha][coluna].classe = vazio.classe;
					linha--; 
					*lin = linha;
				}else if(mat[linha-1][coluna].classe=='m'){
					classe = 'm';
					combate(&heroi, classe,monstro,&chefe, linha, coluna,&contelixir, mat);  
					linha--;
					*lin=linha; 
				}else if(mat[linha-1][coluna].classe=='Y'){ // armadilha com dano variavel de 1 a 5 (ver depois como diminuir esse dano)
					classe='Y';
					system("cls");
					mat[linha-1][coluna] = heroi;
					mat[linha-1][coluna].classe = heroi.classe;
					mat[linha][coluna].classe = vazio.classe;
					*saude = *saude - rand()%5+1;
					linha--; 
					*lin = linha;
					printf("Sua saude e %d", heroi.saude);
					system("pause");
				}else if(mat[linha-1][coluna].classe=='y'){ // armadilha com dano fixo de 1
					classe='y';
					system("cls");
					mat[linha-1][coluna] = heroi;
					mat[linha-1][coluna].classe = heroi.classe;
					mat[linha][coluna].classe = vazio.classe;
					*saude = *saude - 1;
					linha--; 
					*lin = linha;
					printf("Sua saude e %d", heroi.saude);
					system("pause");
				}else if(mat[linha-1][coluna].classe=='e'){
					classe='e';
					mat[linha-1][coluna] = heroi;
					mat[linha-1][coluna].classe = heroi.classe;
					mat[linha][coluna].classe = vazio.classe;
					*contelixir = *contelixir + 1;
					linha--; 
					*lin = linha;
				}else if(mat[linha-1][coluna].classe=='c'){
					classe='c';
					combate(&heroi, classe, monstro, &chefe, linha, coluna, &contelixir, mat);   
					linha--;
					*lin=linha; 
				}
			}else{
				printf("Posicao invalida!\n");
				system("pause");
			}
		} 
		    
  	}while(heroi.saude>0);
	if(heroi.saude<=0){
		system("cls");
		printf("Voce morreu.\n");
		system("pause");
	}	
    if((chefe.saude<0)&&(heroi.saude>0)){
        system("cls");
		printf("PARABENS!\nVoce venceu o jogo\n");
		system("PAUSE");
    }
}

void combate(tipo *heroi, char classe, tipo monstro, tipo *chefe, int linha, int coluna, int **contelixir, tipo mat[][10]){
//faz um menu p funcao combate com as opcoes
    srand(time(NULL));
	int op, saudeinimigo,num1,num2, dano, k=0;
	do{
	system("cls");
	dano=0;
	printf("Selecione uma opcao:\n");
	printf("1 - Combate\n2 - Pegar elixir\n");
	scanf(" %d",&op);
	
	// pro caso de a pessoa escolher 1, por exemplo, seria a opcao de atacar, entao executa:
	if(op==1){
	   if(classe=='m'){
	      system("cls");
	      num1=rand()%(*heroi).ataque;
	      num2=rand()%3;
	      dano = ((*heroi).ataque + num1) - (monstro.defesa + num2);
		  if (dano>0){
             monstro.saude = monstro.saude - dano;
           }
		  if(dano<0){
             (*heroi).saude = (*heroi).saude + dano;
           }
          printf("A saude do monstro e %d\n", monstro.saude);
	      printf("Sua saude e %d\n", (*heroi).saude);
	      printf("O dano foi de %d\n", dano);
          system("PAUSE");
          printf("Agora o ataque do monstro\n");
		  num1=rand()%monstro.ataque;
	      num2=rand()%(*heroi).defesa;
	      dano= (monstro.ataque+num1)-((*heroi).defesa+num2);
	      if (dano>0){
             (*heroi).saude = (*heroi).saude - dano;
           }
		  if(dano<0){
             monstro.saude = monstro.saude + dano;
           }
		  printf("A saude do monstro e %d\n", monstro.saude);
	      printf("Sua saude e %d\n", (*heroi).saude);
	      printf("O dano foi de %d\n", dano);
	       }
	       
	   if(classe=='c'){
	      system("cls");
	      num1=rand()%(*heroi).ataque;
	      num2=rand()%(*chefe).ataque;
	      dano = ((*heroi).ataque + num1) - ((*chefe).defesa + num2);
		  if (dano>0){
             (*chefe).saude = (*chefe).saude - dano;
           }
		  if(dano<0){
             (*heroi).saude = (*heroi).saude + dano;
           }
          printf("A saude do Chefe e %d\n", (*chefe).saude);
	      printf("Sua saude e %d\n", (*heroi).saude);
	      printf("O dano foi de %d\n", dano);
          system("PAUSE");
          printf("Agora o ataque do Chefe\n");
		  num1=rand()%(*chefe).ataque;
	      num2=rand()%(*heroi).defesa;
	      dano= (monstro.ataque+num1)-((*heroi).defesa+num2);
	      if (dano>0){
             (*heroi).saude = (*heroi).saude - dano;
           }
		  if(dano<0){
             (*chefe).saude = (*chefe).saude + dano;
           }
		  printf("A saude do monstro e %d\n", (*chefe).saude);
	      printf("Sua saude e %d\n", (*heroi).saude);
	      printf("O dano foi de %d\n", dano);
          system("PAUSE");
		}
		}	// fazer if  chefe e passar saude dele por onteiro      
	  if(op==2){
	// usar o elixir. 
	   if(**contelixir>0){
		   system("cls");
		   (*heroi).saude= (*heroi).saude + 1;
	       printf("A sua saude e de %d\n", (*heroi).saude);
		   **contelixir = **contelixir - 1;
	       printf("Voce ainda tem %d\n", **contelixir);
		   system("PAUSE");
	       
	   }else if(**contelixir==0){
	        system("cls");
			printf("vc nao possui mais elixir\n");
	        system("PAUSE");
	   }
	}	
	
	}while((*heroi).saude>0 && monstro.saude>0 && (*chefe).saude);
	if((monstro.saude<=0)&&((*heroi).saude>0)){
       system("cls");
       printf("Voce derrotou o monstro!\n");
       system("PAUSE"); 
   }
	if(((*chefe).saude<=0)&&((*heroi).saude>0)){
		system("cls");
		printf("Voce derrotou o Chefe\n");
	}    
   
}

void debug_le(op){	
int linh, colu, i, j, k=0, contelixir=0, lin, col;
char ph[2], arq[20];

	tipo mat[5][10];
	tipo heroi;
	tipo chefe;
	tipo monstro;
	char classe;
	
	tipo armadilhagrande;
	tipo armadilhapequena;
	tipo elixir;
	tipo duvida;
	tipo vazio;
	
	heroi.classe = 'h';
	monstro.classe = 'm';
	chefe.classe = 'c';
	armadilhagrande.classe = 'Y';
	armadilhapequena.classe = 'y';
	elixir.classe = 'e';
	duvida.classe= 'd';
	vazio.classe = ' ';
	monstro.ataque=3;
	monstro.defesa=3;
	monstro.saude=4;
	
	// pontuacao do chefao
	// pontuacao do chefao eh 15
	chefe.ataque=6;
	chefe.defesa=5;
	chefe.saude=4;	
    

//if(debug==NULL){
  //printf("Nao foi possivel abrir o Debug");
 // exit(0);
//}
	 for(lin=0; lin<5; lin++){
	    for(col=0; col<10; col++){
			mat[lin][col].classe=duvida.classe;
		} 
	 }
	 printf("Digite o nome do arquivo.txt");
scanf("%s", &arq);
FILE *debug;
debug=fopen(arq, "r");
	 if(debug==NULL){
  printf("Nao foi possivel abrir o Debug");
  exit(0);
  }

	 do{   
		fscanf(debug,"%s ", &ph);
		lin = conv_lin(ph);
		col = conv_col(ph);
		k++;   
		if(k==1){
			classe='h';
			mat[lin][col].classe=heroi.classe;
			printf("%c", heroi.classe);
	    system("PAUSE");
		}    
	    if(k==2){
		}
		if(k==3){
			classe='m';
			mat[lin][col].classe = monstro.classe;
			printf("%c\n", monstro.classe);		
		system("PAUSE");
		}
		if(k==4){
			classe='m';
			mat[lin][col].classe = monstro.classe;
			printf("%c\n", monstro.classe);		
		system("PAUSE");
		}
		if(k==5){
			classe='m';
			mat[lin][col].classe = monstro.classe;
			printf("%c\n", monstro.classe);		
		system("PAUSE");
		}
		if(k==6){
			classe='m';
			mat[lin][col].classe = monstro.classe;
			printf("%c\n", monstro.classe);
		system("PAUSE");
		}
		if(k==7){
		}
		if(k==8){
			classe='Y';
			mat[lin][col].classe = armadilhagrande.classe;
			printf("%c\n", armadilhagrande.classe);
		system("PAUSE");
		}
		if(k==9){
		classe = 'y';
		mat[lin][col].classe = armadilhapequena.classe;
			printf("%c\n", armadilhapequena.classe);
		system("PAUSE");
		}
		if(k==10){
		classe=classe='Y';
		mat[lin][col].classe = armadilhagrande.classe;
			printf("%c\n", armadilhagrande.classe);
		system("PAUSE");
		}
		if(k==11){
		classe='y';
		mat[lin][col].classe = armadilhapequena.classe;
			printf("%c\n", armadilhapequena.classe);
		system("PAUSE");
		}
		if(k==12){
		classe='Y';
		mat[lin][col].classe=armadilhagrande.classe;
		printf("%c\n", armadilhagrande.classe);
		system("PAUSE");
		}
		if(k==13){
			classe='y';
			mat[lin][col].classe=armadilhapequena.classe;
		    printf("%c\n", armadilhapequena.classe);
		system("PAUSE");
		}
		if(k==14){
			classe='c';
			mat[lin][col].classe=chefe.classe;
			printf("%c\n", chefe.classe);
		system("PAUSE");
		lin=0;
		col=0;
		}
	    }while(!feof(debug));
	    escolherpersonagem(op);
		andar(mat,heroi,&heroi.saude,chefe,monstro,armadilhagrande,armadilhapequena,elixir,duvida,vazio,&contelixir,&lin,&col);
	    system("PAUSE");
		fclose(debug);
	//printf("ABC");
}
int conv_lin(char ph[]){
   int linh;
   switch(ph[0]){
   case '1':
   	 linh=0;
   	 break;
   case '2':
     linh=1;
     break;
   case '3':
     linh=2;
     break;
   case '4':
     linh=3;
     break;
   case '5':
     linh=4;
	 break;	 	 
   default:
   	break;
   }
   return (linh);
}

int conv_col(char ph[]){
int colu;
   switch(ph[1]){
   case 'A':
   	 colu=0;
   	 break;
   case 'B':
   	colu=1;
   	 break;
   case 'C':
   	colu=2;
   	 break;
   case 'D':
   	colu=3;
   	 break;
   case 'E':
   	colu=4;
   	 break;
   case 'F':
   	colu=5;
   	 break;
   case 'G':
   	colu=6;
   	 break;
   case 'H':
   	colu=7;
   	 break;
   case 'I':
   	colu=8;
   	 break;
   case 'J':	
   	colu=9;
   	 break;
   	 default:
   	 	break;
}
   return(colu);
}

