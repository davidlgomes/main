# Caçadoras de tesouros

Claudia, Erika e Laís se encontravam numa aventura inusitada: uma caça ao
tesouro! Tendo conseguido as instruções que levavam à ilha onde esse tesouro
supostamente se encontrava, abandonaram as precauções e se jogaram rumo ao destino.

Ao analisar melhor o mapa, perceberam que algumas instruções indicavam que
tomassem caminhos completamente opostos: 100 passos para o Norte
imediatamente seguidos de 200 para o Sul ou 50 passos para Oeste imediatamente
seguidos de 20 para Leste, por exemplo.

Logo perceberam que, se seguissem todas as instruções à risca, levariam muito
tempo para alcançar o objetivo.

Nesse desafio, você deve implementar o método `directions_simplifier` que deve
receber uma lista de direções `directions` e simplificá-la, removendo todas as
instruções conflitantes.

## Exemplo

A chamada do método com:

```ruby
directions = "20:NORTE-30:OESTE-40:NORTE-30:LESTE-15:SUL"
```

Deve retornar `"20:NORTE-30:OESTE-40:NORTE-30:LESTE-15:SUL"`, pois não tem direções
conflitantes uma seguida da outra.

A chamada do método com:

```ruby
directions = "20:NORTE-30:OESTE-40:NORTE-40:SUL-10:LESTE"
```

Deve retornar `"20:NORTE-20:OESTE"`, pois `"40:NORTE"` é imediatamente seguido de
`"40:SUL"`, e essas instruções se cancelam. A partir desse ponto, as instruções
`"30:OESTE"` e `"10:LESTE"` também se tornam direções opostas em sequência,
resultando na direção simplificada `"20:OESTE"`.
