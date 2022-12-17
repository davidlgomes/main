class PagamentoCredito<Pagamento
    attr_accessor :quantidade, :juros, :produto, :valor
    def initialize(quantidade:, juros:, produto:)
        @quantidade=quantidade
        @juros=juros
        @produto=produto
    end
    def atualizar_valor
        self.valor = valor + valor * juros/100
    end
end