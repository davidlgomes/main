class ArrayUtils
  def self.multiplos(qtd, multiplo)
    indice=0
    array_resultado=[]
    while indice<qtd do
      array_resultado[indice]=multiplo*(indice+1)
      indice+=1
    end
    return array_resultado
  end
  def self.tabuada(limite)
    indice=0
    array_auxiliar=[1,2,3,4,5,6,7,8,9,10]
    array_auxiliar_tabuada=[]
    array_tabuada=[]
    array_resultado=[]
    while indice<limite do  
      indice1=0
      array_tabuada << array_auxiliar.map do |tabuada|
        tabuada*(indice+1)
      end
      indice+=1
    end
    return array_tabuada
  end  
end
