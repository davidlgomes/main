class FashionWeek
  def catwalk_order(models, available_catwalks)
    string_final=[]
    indice=0
    variavel_subtracao=0
    array_tempo=[]
    array_tempo_auxiliar=[]
    string_nome=[]
    minimo=0
    alfabeto= ":AÁÀÂÃBCDEÉÈÊFGHIÍÌÎJKLMNOÓÒÔÕPQRSTUÚÙÛVWXYZaáàâãbcdeéèêfghiíìîjklmnoóòôõpqrstuúùûvwxyz"
    if available_catwalks >= models.length
      variavel_subtracao=available_catwalks - models.length.to_i
      while indice < variavel_subtracao do
        models << "VAZIO"
        indice+=1
      end
      string_final=models.join(" ")
      string_final=string_final.delete(":0123456789")
      string_final= string_final.split
    else
      string_nome=models.join(" ")
      string_nome=string_nome.delete(":0123456789").split
      models.map{|elemento| array_tempo<<elemento.delete(alfabeto).to_i}
      while indice<available_catwalks do
        string_final[indice]=string_nome[indice]
        array_tempo_auxiliar[indice]=array_tempo[indice]
        indice+=1
      end
      indice=available_catwalks
      while indice<string_nome.length do
        minimo=array_tempo_auxiliar.index(array_tempo_auxiliar.min)
        string_final[minimo]<< "-#{string_nome[indice]}"
        array_tempo_auxiliar[minimo]+=array_tempo[indice]
        indice+=1
      end
    end
    return string_final
  end
end

