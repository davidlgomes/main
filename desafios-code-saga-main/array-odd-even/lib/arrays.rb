class Arrays
  def self.converte_impares_por(lista, numero)
    indice=0
    indice_auxiliar=0
    lista_atualizada=[]
    array_auxiliar=[]
    array_auxiliar2=[]
    array_vazio=[[],[]]
    if lista.empty?
      return array_vazio
    end
    while indice<lista.length do
      if lista[indice].odd?
        array_auxiliar[indice_auxiliar]=lista[indice]
        indice_auxiliar+=1
      end
      indice+=1
    end
    lista_atualizada<<array_auxiliar
    indice=0
    while indice<array_auxiliar.length do
        array_auxiliar2[indice]=array_auxiliar[indice]*numero
        indice+=1
    end
    lista_atualizada<<array_auxiliar2
    return lista_atualizada  

  end

  def self.converte_pares_por(lista, numero)
    indice=0
    indice_auxiliar=0
    lista_atualizada=[]
    array_auxiliar=[]
    array_auxiliar2=[]
    array_vazio=[[],[]]
    if lista.empty?
      return array_vazio
    end
    while indice<lista.length do
      if lista[indice].even?
        array_auxiliar[indice_auxiliar]=lista[indice]
        indice_auxiliar+=1
      end
      indice+=1
    end
    lista_atualizada<<array_auxiliar
    indice=0
    while indice<array_auxiliar.length do
        array_auxiliar2[indice]=array_auxiliar[indice]*numero
        indice+=1
    end
    lista_atualizada<<array_auxiliar2
    return lista_atualizada  
  end
end
