class MatrixMixer
  def sorter(matrix, instructions)
        instructions.split("\n").each do |instruction|
          number = instruction.split[1].split(':')[0].to_i
          max_size = matrix.max { |a, b| a.size <=> b.size }.size
          matrix.each { |line| (max_size - line.size).times { line << nil } }
          matrix = matrix.transpose if instruction.split[0] == 'COLUNA'
          case instruction.split[1].split(':')[1]
          when 'ÍMPARES'
            b = matrix[number].select { |i| i.instance_of?(Integer) && i.to_i.odd? }.sort
            matrix[number].map! {|i| (i.instance_of?(Integer) && i.to_i.even?)  i.class != Integer ? i : b.shift}
          when 'PARES'
            b = matrix[number].select {|i| i.instance_of?(Integer) && i.to_i.even?}.sort
            matrix[number].map! {|i| (i.instance_of?(Integer) && i.to_i.odd?)  i.class != Integer ? i : b.shift}
          when 'ALFABETO'
            b = matrix[number].select {|i| i.instance_of?(Integer) && !i.nil?}.sort
            matrix[number].map! {|i| i.instance_of?(Integer) || i.nil? ? i : b.shift }
          end
          matrix = matrix.transpose if instruction.split[0] == 'COLUNA'
        end
        matrix.each_with_index { |line, index| matrix[index] = line.compact }
  end
end
