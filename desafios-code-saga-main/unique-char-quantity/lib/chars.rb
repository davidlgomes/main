class Chars
  def unique_quantity(text)
  indice=0
  array_auxiliar=[]
  array_final=[]
  count_of_uniq_char=0
  array_auxiliar=text.split()
  while indice < array_auxiliar.length do
    array_final << array_auxiliar[indice].each_char.tally.length
    indice+=1
  end
  array_final.inject(:+)
  end
end
