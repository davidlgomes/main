# Trabalhando com móveis

Como parte do seu estágio em uma marcenaria, você deve ajudar os marceneiros no processo de gerenciamento de materiais e escolha de design.

Para isso, você precisa implementar o método `maximum` que, ao receber uma lista que possui diferentes designs para montar um móvel `designs` e uma lista de materiais disponíveis `available_materials`, encontra o design que produzirá o maior número de móveis e retorna a quantidade de móveis que pode ser feita com esse design.

Admita que, caso um material não esteja presente em `available_materials`, mas esteja listado em algum dos `designs`, que a quantidade disponível desse material é 0. Admita, também, que apenas um design será seguido, ou seja, se a partir de um design podem ser feitos 3 móveis e ainda sobrarem materiais para fazer um móvel de outro design, a resposta final será 3.


## Exemplos

A chamada do método com:

```ruby
designs: [{tabua: 5, prego: 2, parafuso: 1, cola: 200}, {tabua: 7, prego: 6, parafuso: 3, cola: 200}]
available_materials: {tabua: 12, prego: 12, parafuso: 5, cola: 400}
```
deve retornar 2, pois, com os materiais disponíveis, podemos fazer 2 móveis pelo primeiro design e apenas 1 móvel pelo segundo.

Por outro lado, a chamada com:

```ruby
designs: [{fechadura: 3, tabua: 3, prego: 1, cola: 100, barra_de_aluminio: 100},
          {puxador: 7, tabua: 2, prego: 3, cola: 150, barra_de_aluminio: 100}]
available_materials: {prego: 2, tabua: 20, cola: 2000, puxador: 24, barra_de_aluminio: 500}
```
deve retornar 0, pois o primeiro design não pode ser feito pois o material `fechadura` está em falta enquanto o segundo design não pode ser feito pois, mesmo tendo todos os materiais na lista `available_materials`, não temos o material `prego` em quantidade suficiente para fazer nenhum móvel.

## Link de apoio

[Documentação de Hash](https://ruby-doc.org/core-3.1.0/Hash.html)
