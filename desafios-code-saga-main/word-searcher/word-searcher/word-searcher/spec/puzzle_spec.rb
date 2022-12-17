require 'spec_helper'

describe 'Puzzle' do

  it "1. Recebe uma matrix 4x4 com caracteres e encontra 'maçã'" do
    matrix = [['p','m','k','l'],
              ['m','j','a','a'],
              ['ç','ç','a','ã'],
              ['ç','a','ã','á']]

    expect(Puzzle.new.string_finder(matrix)).to eq('maçã')
  end

  it "2. Recebe uma matrix 4x4 com caracteres e encontra 'sumô'" do
    matrix = [['s','ú','o','u'],
              ['u','s','u','m'],
              ['u','m','s','f'],
              ['s','m','ô','ô']]

    expect(Puzzle.new.string_finder(matrix)).to eq('sumô')
  end

  it "3. Recebe uma matrix 9x9 com caracteres e encontra 'boa noite'" do
    matrix = [['b','c','f','i','s','f','l','m','a'],
              ['c','p','a','o','w','p','k','l','a'],
              ['b','j','b','j','o','z','a','m','k'],
              [' ','c','d','s','r','b','o','k','l'],
              ['x','k',' ','n','p','n','j','ç',' '],
              [' ',' ','k','j','a','i','o','ó','m'],
              ['ç','í','é','t','o','n',' ',' ','e'],
              ['i','k','l','l','o','l','e','o','u'],
              ['q','e','i','t','n','t','u','e','ç']]
    
    expect(Puzzle.new.string_finder(matrix)).to eq('boa noite')
  end

  it "4. Recebe uma matriz 9x9 com caracteres e encontra 'por favor'" do
    matrix = [['b','c','f','i','s','f','r','m','a'],
              ['c','p','p','o','w','p','k','l','r'],
              ['b','j','p','j','o','z','r','r','k'],
              [' ','c','d','s','r','f','o','a','l'],
              ['x','k',' ','n','f','n','a','ç',' '],
              [' ',' ','k','f','a','i','o','a','m'],
              ['ç','í','é','s','o','n',' ','r','e'],
              ['i','v','l','l','o','l','e','o','r'],
              ['q','e','v','a','o','t','u','e','r']]

    expect(Puzzle.new.string_finder(matrix)).to eq('por favor')
  end

  it "5. Recebe uma matriz 16x16 com caracteres e encontra 'coração de tinta'" do
    matrix = [['d','c','d','p','l','a','á','o','f','n','m','o','k','l','m','n'],
              ['c','d','p','l','k','l','á','o','g','r','z','x','n','j','a','d'],
              ['x','p','l','c','m','ç','o','n','l','n','r','z','a','b','c','d'],
              ['l','x','x','c','m','a','ã','n','r','j','d',' ','a','z','y',' '],
              ['v','f','a','ç','ã','á','a','à','l','o','ó','ç','n','m',' ','e'],
              ['ç','c','c','o','a','ã','á','ã','o','a','u','i',' ','ç','j','o'],
              ['a','ç','c','u','ã','ã','à','a','g','y','b','o',' ','b','v','s'],
              ['ç','v','i','u','a','à','á','ã','c','j','w','t','h','h','a','é'],
              ['d','n','j','d','p','y','u','e','p','u',' ','á','q','a','z','w'],
              ['o','d','f','b',' ','g' 'e','t','r','h','g','j','s','x','e','d'],
              ['s','v','c','x','k','l','t','e','t','y',' ',' ','c','r','f','v'],
              ['k','b','w',' ','e','r','v','s','p','h','k','l','t','g','t','b'],
              ['l','k','j','h','k','l','m','n','k','l','m','n','a','b','c','d'],
              ['i','o','p','u','n','o','p','q','t','u','v','n','m','a','n','a'],
              ['t','y','u','i','r','s','t','u','r','s','q','t','p','u','t','s'],
              ['b','n','n','i','w','x','y','z','o','a','u','t','h','o','r','a']]

    expect(Puzzle.new.string_finder(matrix)).to eq('coração de tinta')
  end

  it "6. Recebe uma matriz 16x16 com caracteres e encontra 'senhor dos anéis'" do
    matrix = [['d','c','s','p','e','a','á','o','f','n','m','o','k','l','m','n'],
              ['s','s','p','l','k','e','á','o','g','n','z','x','n','j','h','d'],
              ['x','p','l','c','m','ç','e','n','l','n','n','z','h','b','h','d'],
              ['s','x','s','c','m','a','ã','e','r','j','d',' ','a','z','y','h'],
              ['v','g','a','ç','ã','á','d','à','l','o',' ','ç','n','m',' ','e'],
              ['ç','o','o','o','a','r','e','p','o','a',' ','i',' ','ç','j','o'],
              ['a','o','c','u','ã','r',' ','q','g',' ','b','r','d','b','d','s'],
              ['ç','v','o','a','a','r','r','s','c','j','g','c','h','d','a','é'],
              ['o','n','j','d','p','y','u','s','p','u',' ','á','q','a','z','w'],
              ['o','d','f','b','s','g' 's','t','r',' ','g','j','s','x','a','d'],
              ['s','v','o','x','k',' ','t','e','t',' ',' ',' ','c','r','f','v'],
              ['k','b','w',' ','e','s','v','s','p','h','k','l','t','g','a','b'],
              ['l','k','j','h','é','l','m','n','k','l','m','i','s','b','c','d'],
              ['a','o','n','u','é','é','p','q','t','u','n','i','m','s','n','s'],
              ['t','n','u','n','e','ê','k','u','r','s','q','i','p','a','v','s'],
              ['b','n','m','i','é','x','ê','z','o','a','u','i','h','o','r','a']]

    expect(Puzzle.new.string_finder(matrix)).to eq('senhor dos anéis')
  end

  it "7. Recebe uma matriz 25x25 com caracteres e encontra a palavra 'boas-vindas a campus code'" do
    matrix = [['h','i','b','l','k','l','i','n','k','i','a','u','a','b','i','s','a','c','a','v','-','l','-',')','a'],
              ['?','a','p','b','b','g','p','o','r','k','a','t','h','e','e','i','s','a','v','o','s','-','s','t','e'],
              ['ç','à','!','c','n','e','o','c','j','o','a','d','j','a','l','a','e','v','a','i','m','-','s','!','l'],
              ['h','v','b','9','a','h','e','t','o','v','z','m','a','z','l','s','l','o','l','o','l','ç','-',' ','l'],
              ['o','p','q','l','m','o','ç','ç','!','s','n','m','m','s','p','s','s','i','s','a','p','s','j','j',' '],
              ['v','l','i','p','i','i','n','d','i','a','n','a','b','o','r','d','o','r','i','m','a','v','a','c','a'],
              ['v','j','l','v','i','i','m','a','i','r','u','n','i','n','f','e','d','a','d','o','z','i','d','a','a'],
              ['o','p','u','v','l','i','n','a','i','r','a','n','e','n','e','d','r','o','m','e','v','o','m','a','t'],
              ['v','k','l','i','k','m','a','v','o','r','m','e','s','p','i','d','a','r','i','o','a','o','j','a','v'],
              ['v','v','a','h','v','a','z','e','s','i','n','a','f','r','e','d','i','n','d','a','a','s','c','r','i'],
              ['s','a','l','s','o','p','e',' ','s','t','a','m','a','ç','a','p','e',' ','s','t','c','a','s','a','c'],
              ['l','c','a','r','r',' ','l',' ',')','a','é','a','m','a','r',' ','l',' ',')','a','o','c','e','l','a'],
              ['o','s','s','e','l','n','a','o',' ','t','e','l','a','e','x','n','a','o',' ','t','c','a','m','p','o'],
              ['s','i','l','i','c','e','n','h','o',' ','u','s','i','a','i','e','n','h','o',' ','c','o','c','a','c'],
              ['i','o','s','o','s','d','o','c','e',':','b','o','l','o','s','d','o','c','e',':','a','r','i','n','h'],
              ['a','m','a','n','d','m','i','r','i','a','p','a','p','a','i','u','v','u','l','a','s','a','i','l','e'],
              ['a','f','a','r','a','m','m','a','t','t','p','e','i','x','e','u','r','a','n','i','a','c','h','s','u'],
              ['d','a','y','á','r','e','r','m','o','s','p','o','t','e','s','o','u','v','a','u','s','s','u','r','r'],
              ['v','o','r','e','a','t','m','a','p','l','p','r','a','t','o','m','a','t','h','u','o','s','h','e','i'],
              ['p','p','l','e','s','e','s','t','o','r','p','r','o','f',' ','r','m','a','n',' ','l','a','s','o','s'],
              [' ','p',' ','l','ç','c','a','m','p','u','o','r','l','a','n','d','e','d','o','d','e','l','e','f','a'],
              [' ','l','~','^',' ','s','c','o','d','e','d','o','o','r','i','e','o','u','r','o','n','t','e','e','s'],
              ['n','m','a',' ','k','c','c','x','p','l','c','o','r','i','o','d','o','u','r','a','t','r','e','l','a'],
              [',','.','a','l',' ','c','m','d','p','l','o','m','a','s','t','d','o','d','r','a','e','q','u','i','n'],
              [')','(',' ','a','m','a','y','e','r','c','a','r','o','l','o','g','a','o','d','o','o','e','l','u','d']]

    expect(Puzzle.new.string_finder(matrix)).to eq('boas-vindas a campus code')
  end
end
