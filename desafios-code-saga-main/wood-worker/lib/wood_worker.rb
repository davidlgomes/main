class WoodWorker
  def maximum(designs, available_materials)
    designs_auxiliar = []
    designs.each do |design|
      if valido?(design, available_materials)
        designs_auxiliar << design
      end
    end
    resultado = array_maximo(designs_auxiliar, available_materials)
    if resultado.max!=nil
      resultado.max
    else
      0  
    end
  end
  
  def valido?(design, available_materials)
    design.each_key do |material|
      if available_materials.include?(material)
        true
      else
        return false
      end
    end
  end
 
  def array_maximo(designs_auxiliar, available_materials)
    maximo = []
    resultado = []
    designs_auxiliar.each do |design|
      design.each do |indice, quantidade|
        resultado_parcial = available_materials[indice] / quantidade
        maximo << resultado_parcial
        maximo
      end
      resultado << maximo.min
      maximo = []
    end
      resultado
  end
end

