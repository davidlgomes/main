require 'spec_helper'

describe 'Decoder' do
  it "1: Recebe string embaralhada e o fator e descobre a string 'trumanshow'" do
    string = "trmorutsumswmaanaomhnsshrsunhwhotatwowah"
    n = 2

    expect(Decoder.new.password_finder(string, n)).to eq("trumanshow")
  end

  it "2: Recebe string embaralhada e o fator e descobre a string 'hamilton''" do
    string = "amtomltnhalnhmtoailoilonhionltonhltn"
    n = 4

    expect(Decoder.new.password_finder(string, n)).to eq("hamilton")
  end

  it "3: Recebe string embaralhada e o fator e descobre a string 'fightclub''" do
    string = "htbiglgtutubfititcgluicughbftucluhtutcbihuclblub"
    n = 3

    expect(Decoder.new.password_finder(string, n)).to eq("fightclub")
  end

  it "4: Recebe string embaralhada e o fator e descobre a string 'meangirls'" do
    string = "eaisnirsmegiagrsearlanlsngireglsmrls"
    n = 4

    expect(Decoder.new.password_finder(string, n)).to eq("meangirls")
  end
end