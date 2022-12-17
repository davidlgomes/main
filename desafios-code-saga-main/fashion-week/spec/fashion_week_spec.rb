require 'spec_helper'

describe 'FashionWeek' do
  it '1: Recebe 1 modelo com 1 passarela e retorna quais modelos passearam por quais passarelas' do
    models = ['ADRIANA:50']
    catwalks = 1

    expect(FashionWeek.new.catwalk_order(models, catwalks)).to eq (['ADRIANA'])
  end

  it '2: Recebe 6 modelos com 8 passarelas e retorna quais modelos passaram por quais passarelas' do
    models = ['ADRIANA:50','FERNANDA:20','MARCELA:30','BRUNA:60','CAMILA:30','GISELLE:120']
    catwalks = 8
    result = ['ADRIANA','FERNANDA','MARCELA','BRUNA','CAMILA','GISELLE','VAZIO','VAZIO']

    expect(FashionWeek.new.catwalk_order(models, catwalks)).to eq (result)
  end

  it '3: Recebe 3 modelos com 2 passarelas e retorna quais modelos passaram por quais passarelas' do
    models = ['ADRIANA:50','GISELLE:70','GABRIELLA:30']
    catwalks = 2
    result = ['ADRIANA-GABRIELLA','GISELLE']

    expect(FashionWeek.new.catwalk_order(models, catwalks)).to eq (result)
  end

  it '4: Recebe 7 modelos com 2 passarelas e retorna quais modelos passaram por quais passarelas' do
    models = ['ZULEIKA:30','GIGI:50','BELLA:60','NATHÁLIA:40','DÉBORA:80','KENDALL:120','DELLIMA:30']
    catwalks = 2
    result = ['ZULEIKA-BELLA-DÉBORA-DELLIMA','GIGI-NATHÁLIA-KENDALL']

    expect(FashionWeek.new.catwalk_order(models, catwalks)).to eq (result)
  end

  it '5: Recebe 15 modelos com 4 passarelos e retorna quais modelos passaram por quais passarelas' do
    models = ['CLAUDIA:45','NAOMI:180','HILLARY:50','CAROLYN:30','KATE:60',
              'EMILY:70','ANJA:50','CANDICE:80','MIKEYLA:40','ISIS:120',
              'BRUNA:120','IRINA:40','DELLIMA:150','ISABELLY:40','LILY:50']
    catwalks = 4
    result = ['CLAUDIA-EMILY-ISIS-LILY',
              'NAOMI-DELLIMA',
              'HILLARY-ANJA-MIKEYLA-BRUNA',
              'CAROLYN-KATE-CANDICE-IRINA-ISABELLY']

    expect(FashionWeek.new.catwalk_order(models, catwalks)).to eq (result)
  end

  it '6: Recebe 20 modelos com 3 passarelas e retorna quais modelos passaram por quais passarelas' do
    models = ['MARYANE:60','MARINA:120','BARBARA:40','ÉRIKA:60','CLAUDIA:70',
              'LAIS:120','HIKARI:45','LIGIA:180','IOLANDA:150','HAILEE:50',
              'STEINFIELD:120','TYRA:240','RUPAUL:30','MICHELLE:50','LINDSEY:140',
              'SABRINA:120','ISABELI:60','ANITTA:180','LUDMILLA:180','LINN:240']
    catwalks = 3
    result = ['MARYANE-CLAUDIA-LIGIA-TYRA-LUDMILLA',
              'MARINA-HIKARI-IOLANDA-RUPAUL-MICHELLE-SABRINA-ISABELI-LINN',
              'BARBARA-ÉRIKA-LAIS-HAILEE-STEINFIELD-LINDSEY-ANITTA']

    expect(FashionWeek.new.catwalk_order(models, catwalks)).to eq (result)
  end
end
