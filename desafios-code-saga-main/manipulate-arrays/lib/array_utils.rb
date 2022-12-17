class ArrayUtils
  def self.compara(lista1, lista2)
    if lista1.length==lista2.length
      if (lista1-lista2).empty?
        return true
      end
    end
    return false
  end
  def self.divisiveis(primeiro_divisor, segundo_divisor)
  indice=1
  divisiveis_primeiro_segundo=[]
  divisiveis_primeiro=[]
  divisiveis_segundo=[]
  divisiveis=[]
    while indice<=50 do
      if indice%primeiro_divisor==0 && indice%segundo_divisor==0
        divisiveis_primeiro_segundo<<indice
      elsif indice%primeiro_divisor==0 && indice%segundo_divisor!=0
        divisiveis_primeiro<<indice
      elsif indice%primeiro_divisor!=0 && indice%segundo_divisor==0
        divisiveis_segundo<<indice
      end
      indice+=1
    end
    divisiveis<<divisiveis_primeiro_segundo
    divisiveis<<divisiveis_primeiro
    divisiveis<<divisiveis_segundo
    return divisiveis
  end
  def self.soma(lista1)
    lista1.inject(:+)
  end
  def self.combinar(lista1, lista2)
    lista1.product(lista2)  
  end
end
