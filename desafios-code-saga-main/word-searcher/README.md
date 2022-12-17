# Construindo strings

A filha de João pediu ajuda com uma atividade da escola de crianças prodígio.
Nessa atividade, ela deveria construir palavras e frases a partir de um conjunto
de caracteres e espaços em branco distribuídos numa matriz.

Veja um exemplo a seguir, de uma matriz 4x4:

```ruby
    matrix = [['p','m','k','l'],
              ['m','j','a','a'],
              ['ç','ç','a','ã'],
              ['ç','a','ã','á']]
```

Importante ressaltar que essa matriz vem dividida em 4 grupos:

- o grupo marcado como 1 é composto pelos caracteres formados na intersecção
entre as duas primeiras linhas e as duas primeiras colunas;

```ruby
  'p', 'm'
  'm', 'j'
```

- o gurpo marcado como 2 é composto pelos caracteres formados na intersecção
entre as duas primeiras linhas e as duas últimas colunas;

```ruby
  'k', 'l'
  'a', 'a'
```

- o grupo marcado como 3 é composto pelos caracteres formados na intersecção
entre as duas últimas linhas e as duas primeiras colunas;

```ruby
  'ç', 'ç'
  'ç', 'a'
```

- o grupo marcado como 4 é composto pelos caracteres formados na intersecção
entre as duas últimas linhas e as duas últimas colunas.

```ruby
  'a', 'ã'
  'ã', 'á'
```

Com essa divisão em mente, a tarefa era a seguinte: encontrar a palavra ou frase
formada com os caracteres que aparecem o maior número de vezes em cada grupo.

No exemplo acima, temos:

- no grupo 1, o caractere que mais se repete é 'm';
- no grupo 2, o caractere que mais se repete é 'a';
- no grupo 3, o caractere que mais se repete é 'ç';
- no grupo 4, o caractere que mais se repete é 'ã'.

Juntando os quatro caracteres, chegamos na palavra 'maçã'.

João, como bom programador que é, logo compreendeu o algoritmo necessário para
construir todas essas palavras, seja para matrizes 4x4, 9x9, 16x16 etc.

Nesse desafio, você deverá implementar o método `string_builder`, que ao receber
uma matriz, deve encontrar a `string` secreta, seguindo as regras
ditadas na atividade da filha de João.

##Dica:

Os grupos para as matrizes 9x9 a 16x16 podem ser construídos de forma similar
aos da matriz 4x4, com algumas diferenças:

- Nas matrizes 9x9, temos 9 grupos formados por 9 caracteres. O grupo 1 é
composto pelos caracteres formados na intersecção entre as linhas 1, 2 e 3 e as
colunas 1, 2 e 3; o grupo 2 é composto pelos caracteres formados na intersecção
entre as linhas 1, 2 e 3 e as colunas 4, 5 e 6; o grupo 3 é formado pelos
caracteres formados na intersecção entre as linhas 1, 2 e 3 e as colunas 7, 8 e
9, e assim por diante;
- Nas matrizes 16x16, temos 16 grupos formados por 16 caracteres. O grupo 1 é
composto pelos caracteres formados na intersecção entre as linhas 1, 2, 3 e 4 as
colunas 1, 2, 3 e 4; o grupo 2 é composto pelos caracteres formados na
intersecção entre as linhas 1, 2, 3 e 4 e as colunas 5, 6, 7 e 8; o grupo 3 é
formado pelos caracteres formados na intersecção entre as linhas 1, 2, 3 e 4 e
as colunas 9, 10, 11 e 12 e assim por diante.
