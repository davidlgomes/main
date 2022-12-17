typedef struct{
      int ataque;
      int saude;
      int defesa;
      int visivel;
      char classe;
}tipo;

void escolherpersonagem();
void distribuirpontos(tipo heroi);
void definirtabuleiro(tipo heroi);
void andar(tipo mat[][10],tipo heroi,int *saude,tipo chefe, tipo monstro, tipo armadilhagrande, tipo armadilhapequena, tipo elixir, tipo duvida, tipo vazio, int *contelixir, int *lin, int *col);
void exibir(tipo mat[][10]);
void combate(tipo *heroi, tipo monstro, tipo *chefe, int linha, int coluna, int **contelixir, tipo mat[][10]);
