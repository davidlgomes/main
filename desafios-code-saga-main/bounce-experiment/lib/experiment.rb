class Experiment
  def bounce(initial_height, observer_height, bounce_factors)
    contador=0
    indice=0
    bounce_factors.each do |bounce_indice|
      heigth = initial_height
      if bounce_indice.to_f>=0 and bounce_indice.to_f<1
        while heigth>=observer_height do
          contador+=1
          heigth *= bounce_indice.to_f
          if heigth>=observer_height
            contador+=1
          else
            break
          end
        end
      end
      indice+=1
    end
    contador
  end
end
