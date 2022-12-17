class Decoder
  def password_finder(string, n)
    resultado = string.split('').uniq
    continuar = true
    while continuar==true
      continuar = false
      string.chars.to_a.each_slice(n).to_a.map(&:to_s).each do |letras|
        letras = letras.tr('[",] ', '')
        letras_previa = nil
        letras.chars.each do |letras_auxiliar|
          if !letras_previa.nil? && resultado.index(letras_previa) > resultado.index(letras_auxiliar)
            continuar = true
            auxiliar = resultado[resultado.index(letras_previa)]
            resultado[resultado.index(letras_previa)] = resultado[resultado.index(letras_auxiliar)]
            resultado[resultado.index(letras_auxiliar)] = auxiliar
          end
          letras_previa = letras_auxiliar
        end
      end
    end
    resultado.join
  end
end
