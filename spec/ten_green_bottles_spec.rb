require 'ten_green_bottles'

describe TenGreenBottles do
  describe '.lyrics' do
    it 'returns the first verse to Ten Green Bottles' do
      song = TenGreenBottles.new
      result = "Ten green bottles\nHanging on the wall\nTen green bottles\nHanging on the wall\nAnd if one green bottle\nShould accidentally fall\nThere'll be nine green bottles\nHanging on the wall"
      expect(song.lyrics).to eq result
    end
  end
end
