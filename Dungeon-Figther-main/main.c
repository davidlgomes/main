#include<stdio.h>
#include<stdlib.h>
#include"Dung.h"

int main(){
	
	int opcao;
	do{
		system("cls");
		printf("\tDUNGEON FIGHTER \n");
		printf("1 - Jogar\t2 - Debug\t3 - Sair\n\n");
		printf("Digite a opcao desejada: ");
		scanf(" %d",&opcao);
		
		switch(opcao){
			case 1:
				escolherpersonagem();
				break;
			case 2:
				//funcaodebug
				break;
			case 3:
				printf("\nPrograma encerrado.\n");
				return;
				break;
			default:
				printf("Opcao invalida!\nDigite novamente.\n");
		}
	}while(opcao!=3);
	
	
	return 0;
}
