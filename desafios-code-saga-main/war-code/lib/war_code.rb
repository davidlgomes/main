class WarCode
  def encode(string, factor)
    indice=0
    indice_calculado=0
    indice2=0
    string_caracteres="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
    string_final=[]
    while indice<string.length do
      if string_caracteres.include? string[indice]
        indice2= string_caracteres.index(string[indice]).to_i + factor
        if indice2 >= string_caracteres.length
          indice_calculado = string_caracteres.index(string[indice]).to_i-string_caracteres.length+factor+26
        else
          indice_calculado = indice2
        end
        string_final<<string_caracteres[indice_calculado]
      else
        string_final<<string[indice]
      end
      indice+=1
    end
    string_final.join
  end
  def decode(string, factor)
    indice=0
    indice_calculado=0
    indice2=0
    string_final=[]
    string_caracteres="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
    while indice<string.length do
      if string_caracteres.include? string[indice]
        indice2= string_caracteres.index(string[indice]).to_i - factor
        if indice2 < 0 
          indice_calculado = string_caracteres.length+string_caracteres.index(string[indice]).to_i - factor - 26
        else
          indice_calculado = indice2
        end
        string_final<<string_caracteres[indice_calculado]
      else
        string_final<<string[indice]
      end
      indice+=1
    end
    string_final.join
  end
end
