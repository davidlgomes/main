#include <stdio.h>
#include <stdlib.h>
#include "avisoReposicao.h"

#define OK									0
#define EOS									'\0'
#define QUANTIDADE_ARGUMENTOS				3
#define QUANTIDADE_MINIMA_HAMBURGUER_ASSADO	1000


unsigned avisoReposicao(unsigned hamburguerAssado);

int main(int argc, char**argv){
	unsigned hamburguerAssado; 
	do{
	/*(argc!=QUANTIDADE_ARGUMENTOS){
		printf("\n%s:\nErro:\t<d1> <d2> <d3>\n", argv[0]);
		exit(1);
	}*/
	scanf("%d", &hamburguerAssado);	
	avisoReposicao(hamburguerAssado);
	}while(hamburguerAssado!=0);
	return OK;

}

unsigned
avisoReposicao(unsigned hamburguerAssado){
	
	if((hamburguerAssado<=QUANTIDADE_MINIMA_HAMBURGUER_ASSADO)&&(hamburguerAssado>0))
		printf("\nPrecisa Assar Hamburguer\n");
	else
		printf("\n");
	
	return 0;
}
