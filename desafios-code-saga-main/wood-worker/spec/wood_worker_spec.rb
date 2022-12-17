require 'spec_helper'

describe 'WoodWorker' do
  it '1: Recebe 1 lista de designs e materiais, e deve retornar 3' do
    designs = [{ tabua: 4 }]
    available_materials = { tabua: 12 }

    expect(WoodWorker.new.maximum(designs, available_materials)).to eq(3)
  end

  it '2: Recebe 1 lista de designs e materiais, e deve retornar 0' do
    designs = [{ tabua: 5 }]
    available_materials = { tabua: 3 }

    expect(WoodWorker.new.maximum(designs, available_materials)).to eq(0)
  end

  it '3: Recebe 1 lista de designs e materiais, e deve retornar 2' do
    designs = [{ tabua: 5, prego: 2, parafuso: 2 }]
    available_materials = { tabua: 18, prego: 12, parafuso: 5, cola: 200 }

    expect(WoodWorker.new.maximum(designs, available_materials)).to eq(2)
  end

  it '4: Recebe 1 lista de designs e materiais, e deve retornar 0' do
    designs = [{ tabua: 5, prego: 2, parafuso: 1, cola: 400 }]
    available_materials = { tabua: 12, prego: 12, parafuso: 5, cola_de_isopor: 200 }

    expect(WoodWorker.new.maximum(designs, available_materials)).to eq(0)
  end

  it '5: Recebe 2 listas de designs e materiais, e deve retornar 1' do
    designs = [{ tabua: 5, prego: 1, parafuso: 4, cola: 400, cola_de_isopor: 200 },
               { tabua: 3, prego: 8, parafuso: 3, cola: 200, barra_de_aluminio: 2 }]
    available_materials = { tabua: 12, prego: 12, parafuso: 5, cola: 1000, cola_de_isopor: 200, barra_de_aluminio: 1 }

    expect(WoodWorker.new.maximum(designs, available_materials)).to eq(1)
  end

  it '6: Recebe 3 listas de designs e materiais, e deve retornar 0' do
    designs = [{ tabua: 5, prego: 1, parafuso: 4, cola: 400, cola_de_isopor: 200 },
               { tabua: 3, prego: 8, parafuso: 3, cola: 400, barra_de_aluminio: 200 },
               { tabua: 5, prego: 1, parafuso: 2, cola: 200, porca: 20, verniz: 250 }]
    available_materials = { tabua: 6, prego: 12, parafuso: 5, cola: 200, cola_de_isopor: 200, porca: 15, verniz: 250 }

    expect(WoodWorker.new.maximum(designs, available_materials)).to eq(0)
  end

  it '7: Recebe 2 listas de designs e materiais, e deve retornar 5' do
    designs = [{ tabua: 3, prego: 8, parafuso: 3, cola: 400, barra_de_aluminio: 2 },
               { tabua: 2, prego: 1, parafuso: 1, cola: 400, cola_de_isopor: 200 }]
    available_materials = { tabua: 12, prego: 12, parafuso: 5, cola: 2000, cola_de_isopor: 1000, barra_de_aluminio: 1 }

    expect(WoodWorker.new.maximum(designs, available_materials)).to eq(5)
  end

  it '8: Recebe 4 listas de designs e materiais, e deve retornar 7' do
    designs = [{ tabua: 3, prego: 8, parafuso: 3, cola: 400, barra_de_aluminio: 2},
               { tabua: 2, prego: 1, parafuso: 1, cola: 400, cola_de_isopor: 200 },
               { tabua: 5, dobradica: 4, puxador: 1, parafuso: 3, verniz: 200, cola_de_isopor: 200},
               { fechadura: 5, tabua: 25, puxador: 1, prego: 1 }]
    available_materials = { tabua: 40, prego: 12, parafuso: 22, cola: 2000, cola_de_isopor: 2000,
                            barra_de_aluminio: 2, puxador: 7, verniz: 2000, dobradica: 28 }

    expect(WoodWorker.new.maximum(designs, available_materials)).to eq(7)
  end
end
