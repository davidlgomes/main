require 'spec_helper'

describe 'MapReader' do
  it "1: Recebe uma lista de direções e devolve a lista simplificada" do
    directions = "45:NORTE-20:SUL"
    simplified = "25:NORTE"

    expect(MapReader.new.directions_simplifier(directions)).to eq(simplified)
  end

  it "2: Recebe uma lista de direções e devolve a lista simplificada" do
    directions = "45:NORTE-30:LESTE-20:SUL"
    simplified = "45:NORTE-30:LESTE-20:SUL"

    expect(MapReader.new.directions_simplifier(directions)).to eq(simplified)
  end

  it "3: Recebe uma lista de direções e devolve a lista simplificada" do
    directions = "45:NORTE-30:LESTE-50:OESTE-20:SUL"
    simplified = "45:NORTE-20:OESTE-20:SUL"

    expect(MapReader.new.directions_simplifier(directions)).to eq(simplified)
  end

  it "4: Recebe uma lista de direções e devolve a lista simplificada" do
    directions = "45:NORTE-50:LESTE-50:OESTE-20:SUL-40:NORTE"
    simplified = "65:NORTE"

    expect(MapReader.new.directions_simplifier(directions)).to eq(simplified)
  end

  it "5: Recebe uma lista de direções e devolve a lista simplificada" do
    directions = "45:NORTE-60:LESTE-50:OESTE-70:LESTE-20:SUL-20:NORTE-20:OESTE"
    simplified = "45:NORTE-60:LESTE"

    expect(MapReader.new.directions_simplifier(directions)).to eq(simplified)
  end

  it "6: Recebe uma lista de direções e devolve a lista simplificada" do
    directions = "30:SUL-40:OESTE-30:NORTE-75:LESTE-40:OESTE-35:OESTE-30:SUL-50:NORTE-20:LESTE"
    simplified = "30:SUL-40:OESTE-50:NORTE-20:LESTE"

    expect(MapReader.new.directions_simplifier(directions)).to eq(simplified)
  end
end
