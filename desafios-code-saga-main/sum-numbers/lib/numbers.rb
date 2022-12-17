class Numbers
  def sum_text(numbers_text)
    array_numbers=[]
    resultado=0
    indice=0
    array_numbers=numbers_text.split("\n").map(&:to_i)
    resultado=array_numbers.inject(:+)
    return resultado
  end
end