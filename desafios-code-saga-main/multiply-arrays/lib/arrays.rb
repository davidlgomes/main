class Arrays
  def self.multiplica_antecessor_predecessor(array)
    array_final=[]
    indice=0
    while indice<array.length do
      if indice==0
        array_final[indice]=array[indice]*array[indice+1]
      elsif indice>0 && indice<array.length-1
        array_final[indice]=array[indice-1]*array[indice+1]
      else
        array_final[indice]=array[indice-1]*array[indice]
      end
    indice+=1
    end
    return array_final
  end
end
