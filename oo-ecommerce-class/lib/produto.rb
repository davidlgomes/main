class Produto
    def initialize(categoria:'Geral',**args)
        @nome = args[:nome]
        @categoria =  categoria
        @preco = args[:preco]
        @estoque = args[:estoque]
    end
    def nome
        return @nome
    end
    def categoria
        return @categoria
    end
    def preco
        return @preco
    end
    def estoque
        return @estoque
    end
        
end
