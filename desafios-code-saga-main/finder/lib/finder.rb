class Finder
  def index_of(list, value)
  posicoes_encontradas=[]
  indice=0
  while indice<list.length do
    if list[indice].include? value
      posicoes_encontradas<<indice
    end
    indice+=1
  end 
    return posicoes_encontradas
  end
end
