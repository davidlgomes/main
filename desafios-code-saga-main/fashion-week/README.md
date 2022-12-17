# O desfile da Fashion Week de São Paulo

Esse ano, no desfile da Fashion Week São Paulo, os produtores decidiram tentar um 
formato diferente: o desfile teria várias passarelas e as
modelos passariam por elas simultaneamente, uma modelo em cada passarela por
vez. Cada modelo, além disso, teria um tempo diferente para desfilar,
determinado de acordo com o contratante e designer de moda. Para que a imprensa possa
estar preparada para cobrir os destaques de cada passarela, você deve
auxiliá-los, entregando a lista de modelos que passará por cada passarela e a
ordem com que isso vai acontecer.

Nesse desafio, você deve implementar o método `catwalk_order` que, ao receber
uma lista de modelos `models` e um número de passarelas `available_catwalks` que
serão usadas no desfile, deve retornar a ordem com a qual as modelos irão passar
por cada uma das passarelas.

Cada posição da lista `models` contém uma string com o nome da modelo e o tempo
que ela tem para desfilar. Ou seja, numa lista `models`
`['SHEILA:40','ROSE:60','JOANNE:70','HONEY:50']`, temos 4 modelos. A primeira
levará 40 segundos em seu desfile, a segunda levará 60 segundos e assim por
diante.

Tenha em mente que a fila inicial de modelos nunca muda de ordem e que uma modelo na
fila se dirige a uma passarela no exato momento em que essa se mostra
disponível.

**Dica**: pense no conjunto de passarelas como um array de arrays e cada modelo escolhe
sempre a **primeira** passarela disponível para desfilar.

## Exemplo

A chamada do método com

```ruby
models = ['SHEILA:40','ROSE:60','JOANNE:70','HONEY:50']
available_catwalks = 2
```

deve retornar `['SHEILA-JOANNE','ROSE-HONEY']`, pois Sheila e Rose, como são as
duas primeiras modelos, são as duas primeiras a passar pelas passarelas. Quando
Sheila termina, sua passarela fica disponível e a próxima da lista, Joanne, toma
seu lugar na primeira passarela. Rose termina antes de Joanne terminar, então
Honey assume a segunda passarela assim que ela fica disponível.
