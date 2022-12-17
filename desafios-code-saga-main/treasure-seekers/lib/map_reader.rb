class MapReader
  def directions_simplifier(directions)
    array_numeros=[]
    array_direcoes=[]
    directions_auxiliar=[]
    array_simplificado=[]
    arrayTeste=[]
    indice=0
    sequencia_direcoes=0
    directions_auxiliar=directions.split("-")
    array_numeros=array_valores(directions_auxiliar)
    array_direcoes=array_direcoes(directions_auxiliar)
    sequencia_direcoes = sequencia_direcoes(array_direcoes)
    indiceTeste=0
    while sequencia_direcoes>0
      if indice>0
        directions_auxiliar=array_simplificado(array_numeros, array_direcoes)
      end
      directions_auxiliar=array_simplificado(array_numeros, array_direcoes)
      array_numeros=array_valores(directions_auxiliar)
      array_direcoes=array_direcoes(directions_auxiliar)
      sequencia_direcoes = sequencia_direcoes(array_direcoes)
      indice+=1
    end
    directions_auxiliar.join("-")
    
  end

  def array_valores(directions_auxiliar)
    remover_alfabeto =":ABCDEFGHIJLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
    indice=0
    array_auxiliar=[]
    while indice<directions_auxiliar.length do
      array_auxiliar<<directions_auxiliar[indice].delete(remover_alfabeto).to_i
      indice+=1
    end
    array_auxiliar
  end
  def array_direcoes(directions_auxiliar)
    remover_numeros =":0123456789"
    indice=0
    array_auxiliar=[]
    while indice<directions_auxiliar.length do
      array_auxiliar<<directions_auxiliar[indice].delete(remover_numeros)
      indice+=1
    end
    array_auxiliar
  end
  def sequencia_direcoes(array_direcoes)
    indice=0
    contador=0
    while indice<array_direcoes.length-1 do
      if array_direcoes[indice]=='NORTE' and array_direcoes[indice+1]=='SUL'
        contador+=1
        indice+=2
      elsif array_direcoes[indice]=='SUL' and array_direcoes[indice+1]=='NORTE'
        contador+=1
        indice+=2
      elsif array_direcoes[indice]=='LESTE' and array_direcoes[indice+1]=='OESTE'
        contador+=1
        indice+=2
      elsif array_direcoes[indice]=='OESTE' and array_direcoes[indice+1]=='LESTE'
        contador+=1
        indice+=2
      elsif array_direcoes[indice] == array_direcoes[indice+1]
        contador+=1
        indice+=2
      else
        indice+=1
      end
      contador+=1
    end
    contador
  end
  def array_simplificado(array_numeros, array_direcoes)
    indice=0
    array_numeros_temporaria=[]
    while indice<array_direcoes.length
      if array_direcoes[indice]=='NORTE' and array_direcoes[indice+1]=='SUL'
        if array_numeros[indice]-array_numeros[indice+1]>0
          array_numeros_temporaria<< "#{array_numeros[indice]-array_numeros[indice+1]}:NORTE"
        elsif array_numeros[indice]-array_numeros[indice+1]<0
          array_numeros_temporaria<< "#{array_numeros[indice+1]-array_numeros[indice]}:SUL"
        end
        indice+=2
      elsif array_direcoes[indice]=='SUL' and array_direcoes[indice+1]=='NORTE'
        if array_numeros[indice]-array_numeros[indice+1]>0
          array_numeros_temporaria<< "#{array_numeros[indice]-array_numeros[indice+1]}:SUL"
        elsif array_numeros[indice]-array_numeros[indice+1]<0
          array_numeros_temporaria<< "#{array_numeros[indice+1]-array_numeros[indice]}:NORTE"
        end
        indice+=2
      elsif array_direcoes[indice]=='LESTE' and array_direcoes[indice+1]=='OESTE'
        if array_numeros[indice]-array_numeros[indice+1]>0
          array_numeros_temporaria<< "#{array_numeros[indice]-array_numeros[indice+1]}:LESTE"
        elsif array_numeros[indice]-array_numeros[indice+1]<0
          array_numeros_temporaria<<"#{array_numeros[indice+1]-array_numeros[indice]}:OESTE"
        end
        indice+=2
      elsif array_direcoes[indice]=='OESTE' and array_direcoes[indice+1]=='LESTE'
        if array_numeros[indice]-array_numeros[indice+1]>0
          array_numeros_temporaria<<"#{array_numeros[indice]-array_numeros[indice+1]}:OESTE"
        elsif array_numeros[indice]-array_numeros[indice+1]<0
          array_numeros_temporaria<< "#{array_numeros[indice+1]-array_numeros[indice]}:LESTE"
        end
        indice+=2
      elsif array_direcoes[indice] == array_direcoes[indice+1]
          array_numeros_temporaria<< "#{array_numeros[indice]+array_numeros[indice+1]}:#{array_direcoes[indice]}"
          indice+=2
      else
        array_numeros_temporaria<< "#{array_numeros[indice]}:#{array_direcoes[indice]}"
        indice+=1
      end
      
    end
    array_numeros_temporaria
  end
end

