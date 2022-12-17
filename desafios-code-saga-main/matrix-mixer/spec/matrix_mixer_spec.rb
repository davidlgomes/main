require 'spec_helper'

describe 'MatrixMixer' do
  it '1: Recebe instruções e matriz de caracteres, e retorna matriz modificada' do
    matrix = [['A', 7, 2, 'P', 3, 5, 'F', 40, 1, 'C']]
    instructions = 'LINHA 0:ÍMPARES'

    expect(MatrixMixer.new.sorter(matrix, instructions)).to eq([['A', 1, 2, 'P', 3, 5, 'F', 40, 7, 'C']])
  end

  it '2: Recebe instruções e matriz de caracteres, e retorna matriz modificada' do
    matrix = [['A', 7, 2, 'P', 3, 5, 'F', 40, 1, 'C'],
              [13, 4, 21, 'B', 3, 'A', 2, 1, 5, 'P']]
    instructions = <<~INSTRUCTIONS
      LINHA 0:ÍMPARES
      LINHA 1:ÍMPARES
      LINHA 1:ALFABETO
    INSTRUCTIONS

    expect(MatrixMixer.new.sorter(matrix, instructions)).to eq([['A', 1, 2, 'P', 3, 5, 'F', 40, 7, 'C'],
                                                               [1, 4, 3, 'A', 5, 'B', 2, 13, 21, 'P']])
  end

  it '3: Recebe instruções e matriz de caracteres, e retorna matriz modificada' do
    matrix = [['Z', 7, 2, 'P', 'A', 5, 'F', 'E', 1, 'C'],
              [13, 4, 8, 'B', 12, 'A', 2, 1, 4, 'P']]
    instructions = <<~INSTRUCTIONS
      LINHA 0:ALFABETO
      LINHA 1:PARES
    INSTRUCTIONS

    expect(MatrixMixer.new.sorter(matrix, instructions)).to eq([['A', 7, 2, 'C', 'E', 5, 'F', 'P', 1, 'Z'],
                                                               [13, 2, 4, 'B', 4, 'A', 8, 1, 12, 'P']])
  end

  it '4: Recebe instruções e matriz de caracteres, e retorna matriz modificada' do
    matrix = [['A'],
              [32],
              [9],
              [18],
              [40],
              ['S'],
              ['P'],
              [2],
              [13],
              [4]]
    instructions = <<~INSTRUCTIONS
      COLUNA 0:PARES
      COLUNA 0:ÍMPARES
    INSTRUCTIONS

    expect(MatrixMixer.new.sorter(matrix, instructions)).to eq([['A'],[2],[9],[4],[18],['S'],['P'],[32],[13],[40]])
  end

  it '5: Recebe instruções e matriz de caracteres, e retorna matriz modificada' do
    matrix = [['A',5,2,'S','J'],
              [32, 1, 'P', 'A', 4],
              [9, 3, 7, 2, 0],
              [18, 23, 4, 2, 1],
              [40, 'A', 'J', 'C', 5],
              ['S', 'B', 'D', 'K', 2],
              ['P', 11, 5, 4, 'C'],
              [2, 'E', 'G', 'I', 'J'],
              [13, 31, 40, 'N', 'T'],
              [4, 17, 'X', 15, 9]]
    instructions = <<~INSTRUCTIONS
      COLUNA 0:PARES
      COLUNA 3:ÍMPARES
      COLUNA 4:ALFABETO
      COLUNA 1:ÍMPARES
    INSTRUCTIONS

    expect(MatrixMixer.new.sorter(matrix, instructions)).to eq([['A', 1, 2, 'S', 'C'],
                                                               [2, 3, 'P', 'A', 4],
                                                               [9, 5, 7, 2, 0],
                                                               [4, 11, 4, 2, 1],
                                                               [18, 'A', 'J', 'C', 5],
                                                               ['S', 'B', 'D', 'K', 2],
                                                               ['P', 17, 5, 4, 'J'],
                                                               [32, 'E', 'G', 'I', 'J'],
                                                               [13, 23, 40, 'N', 'T'],
                                                               [40, 31, 'X', 15, 9]])
  end

  it '6: Recebe instruções e matriz de caracteres, e retorna matriz modificada' do
    matrix = [['Z', 7, 2, 'P', 'A', 5, 'F', 'E', 1, 'C'],
              [13, 4, 8, 'B', 12, 'A', 2, 1, 4, 'P'],
              [7, 'B', 2, 'A', 'C', 3, 'G', 'O', 3, 'Q']]
    instructions = <<~INSTRUCTIONS
      LINHA 0:ALFABETO
      LINHA 1:PARES
      COLUNA 3:ALFABETO
      COLUNA 2:PARES
      COLUNA 9:ALFABETO
    INSTRUCTIONS

    expect(MatrixMixer.new.sorter(matrix, instructions)).to eq([['A', 7, 2, 'A', 'E', 5, 'F', 'P', 1, 'P'],
                                                               [13, 2, 2, 'B', 4, 'A', 8, 1, 12, 'Q'],
                                                               [7, 'B', 4, 'C', 'C', 3, 'G', 'O', 3, 'Z']])
  end

  it '7: Recebe instruções e matriz de caracteres, e retorna matriz modificada' do
    matrix = [['A', 5, 2, 'S', 'J', 198, 'Z', 'L', 'Z', 40],
              [32, 1, 'P', 'A', 4, 'X', 9, 17, 'P', 'A'],
              [9, 3, 7, 2, 0, 15, 90, 34, 4, 1],
              [18, 23, 4, 2, 1, 'A', 'Z', 'B', 'S', 'K'],
              [40, 'A', 'J', 'C', 5, 7, 3, 80, 2],
              ['S', 'B', 'D', 'K', 2, 'A', 'Y', 9, 4, 3],
              ['P', 11, 5, 4, 'C', 'W', 87, 41, 1, 3, 5],
              [2, 'E', 'G', 'I', 'J', 'D', 'A', 'B', 'C', 'F'],
              [13, 31, 40, 'N', 'T', 51, 7, 5, 47, 8, 9, 10],
              [4, 17, 'X', 15, 9, 'A', 7, 'J', 0, 'V']]
    instructions = <<~INSTRUCTIONS
      COLUNA 0:PARES
      LINHA 6:ÍMPARES
      COLUNA 3:ÍMPARES
      LINHA 7:ALFABETO
      COLUNA 4:ALFABETO
      LINHA 9:ÍMPARES
      COLUNA 9:PARES
      LINHA 8:PARES
      COLUNA 1:PARES
      LINHA 0:ALFABETO
      COLUNA 9:ALFABETO
      COLUNA 1:ÍMPARES
    INSTRUCTIONS

    expect(MatrixMixer.new.sorter(matrix, instructions)).to eq([['A', 1, 2, 'C', 'L', 198, 'S', 'Z', 'Z', 8],
                                                               [2, 1, 'P', 'A', 4, 'X', 9, 17, 'P', 'A'],
                                                               [9, 3, 7, 2, 0, 15, 90, 34, 4, 1],
                                                               [4, 5, 4, 2, 1, 'A', 'Z', 'B', 'S', 'J'],
                                                               [18, 'A', 'J', 'C', 5, 7, 3, 80, 2],
                                                               ['S', 'B', 'D', 'K', 2, 'A', 'Y', 9, 4, 3],
                                                               ['P', 7, 3, 4, 'D', 'W', 5, 5, 11, 41, 87],
                                                               [32, 'A', 'B', 'C', 'J', 'E', 'F', 'G', 'I', 'K'],
                                                               [13, 23, 10, 'N', 'T', 51, 7, 5, 47, 40, 9, 40],
                                                               [40, 31, 'X', 9, 15, 'A', 17, 'J', 0, 'V']])
  end
end
