require 'ten_green_bottles'

describe TenGreenBottles do
  describe '#lyrics' do

    subject(:song) { TenGreenBottles.new }

    it 'returns the first verse to Ten Green Bottles' do
      result = "Ten green bottles\nHanging on the wall\nTen green bottles\nHanging on the wall\nAnd if one green bottle\nShould accidentally fall\nThere'll be nine green bottles\nHanging on the wall"
      expect(song.lyrics).to eq result
    end

    it 'returns the second verse to Ten Green Bottles' do
      result = "Nine green bottles\nHanging on the wall\nNine green bottles\nHanging on the wall\nAnd if one green bottle\nShould accidentally fall\nThere'll be eight green bottles\nHanging on the wall"
      expect(song.lyrics(9)).to eq result
    end
  end
end
