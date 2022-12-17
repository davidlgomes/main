#include <stdio.h>
#include "avisoReposicao.h"

unsigned
avisoReposicao(unsigned hamburguerAssado){

	if(hamburguerAssado<=QUANTIDADE_MINIMA_HAMBURGUER_ASSADO)
		printf("\nPrecisa Assar Hamburguer\n");
	else
		printf("\n");
	
	return 0;
}
