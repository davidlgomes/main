# Descobrindo a senha do cofre

Ao conversar com o advogado da família, Hikari descobriu que seu pai havia lhe deixado de herança um cofre pequeno, da qual a senha era desconhecida por todos. Junto com o cofre, havia uma carta. Um excerto dessa carta dizia:

"Minha amada filha, o conteúdo desse cofre não pode ser descoberto por ninguém além de você, a única pessoa em quem confio. Espero que entenda que não posso deixar a senha anotada para que qualquer pessoa possa descobrir. Mas tenho fé que, com essas dicas, você conseguirá."

O resto da carta descrevia uma brincadeira de criança que Hikari e seus pais costumavam fazer: pegavam as letras de uma palavra ou frase e a embaralhavam de uma maneira específica para que o outro pudesse descobrir a mensagem original. Veja, a seguir, um exemplo de como a brincadeira acontecia:

- Para embaralhar a palavra, o primeiro passo era separar todas as letras dessa palavra e, com elas, criar uma `string` inteiramente bagunçada. Essa `string` deve ser formada apenas com as letras da palavra original, porém as quantidades que essas letras aparecem na `string` podem ser diferentes, desde que toda letra apareça pelo menos uma vez;
- Esse embaralhamento não era feito de forma aleatória. Ele era feito de forma que, dado um fator `n`, ao dividir a `string` em grupos que possuem esse fator como tamanho, a ordem das letras que aparecem nesses grupos segue a ordem na qual as letras aparecem na palavra original.
- Para melhor visualização, considere a palavra bola. Ela pode ser embaralhada em conjuntos de 3 letras (seguindo as especificações acima) como bol, ola, bla, formando a string final bololabla. Note como cada conjunto possui apenas uma cópia de uma letra e a ordem das letras reflete a ordem na palavra original.

Nesse desafio, você deve ajudar Hikari a descobrir a senha do cofre de seu pai, seguindo a brincadeira que eles faziam quando mais novos. Para isso, você deve criar o método `password_finder` que, dada uma `string` e um fator `n`, deve retornar a palavra original. Não assuma nada sobre a `string` a não ser o fato de que você tem todas as informações necessárias para descobrir a palavra original e de que, na palavra original, nenhuma letra se repete.

## Exemplo

Para facilitar a visualização do desafio, vamos assumir uma entrada nesse método com

```ruby
string = "vazorzrazvoaoravoz"
n = 3
```

Como `n` é 3, isso significa que se eu dividir essa string em grupos de 3, a ordem das letras que aparecem nesses grupos é a mesma da palavra original. Fazendo essa divisão, temos os seguintes grupos:

- vaz orz raz voa ora voz

Do primeiro grupo `vaz`, podemos concluir que, na palavra original, a letra v aparece antes da letra a que, por sua vez, aparece antes da letra z. Do segundo grupo `orz` podemos concluir que, na palavra original, a letra o aparece antes da letra r que, por sua vez, aparece antes de z. Seguindo o raciocínio e juntando as conclusões, temos que a palavra secreta codificada nessa string é `voraz`.
