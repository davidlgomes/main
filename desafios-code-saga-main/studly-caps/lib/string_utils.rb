class StringUtils
  def wavefy(string)
    indice=0
    while indice<string.length do
      if indice%2==0
        string[indice]=string[indice].downcase()
        print string[indice]
      else
        string[indice]=string[indice].upcase()
        print string[indice]
      end
    indice+=1
    end
    return string
  end
end
