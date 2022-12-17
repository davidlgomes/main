class Pagamento
    def initialize(quantidade:, produto:'Sem nome', preco:)
        @quantidade = quantidade
        @produto = produto
        @preco = preco
        @valor=0
      end

    def calcular_valor
        @valor=@preco*@quantidade
    end
    def valor
        @valor
    end
    def produto
        @produto
    end
    def aplicar_desconto(desconto)  
        @valor -= desconto
        
    end
end
