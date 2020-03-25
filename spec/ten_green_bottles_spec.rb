require 'ten_green_bottles'

describe TenGreenBottles do
  describe '#lyrics' do

    begin
      v1 = "Ten green bottles\nHanging on the wall\nTen green bottles\nHanging on the wall\nAnd if one green bottle\nShould accidentally fall\nThere'll be nine green bottles\nHanging on the wall"
      v2 = "Nine green bottles\nHanging on the wall\nNine green bottles\nHanging on the wall\nAnd if one green bottle\nShould accidentally fall\nThere'll be eight green bottles\nHanging on the wall"
      v3 = "Eight green bottles\nHanging on the wall\nEight green bottles\nHanging on the wall\nAnd if one green bottle\nShould accidentally fall\nThere'll be seven green bottles\nHanging on the wall"
      v4 = "Seven green bottles\nHanging on the wall\nSeven green bottles\nHanging on the wall\nAnd if one green bottle\nShould accidentally fall\nThere'll be six green bottles\nHanging on the wall"
      v5 = "Six green bottles\nHanging on the wall\nSix green bottles\nHanging on the wall\nAnd if one green bottle\nShould accidentally fall\nThere'll be five green bottles\nHanging on the wall"
      v6 = "Five green bottles\nHanging on the wall\nFive green bottles\nHanging on the wall\nAnd if one green bottle\nShould accidentally fall\nThere'll be four green bottles\nHanging on the wall"
      v7 = "Four green bottles\nHanging on the wall\nFour green bottles\nHanging on the wall\nAnd if one green bottle\nShould accidentally fall\nThere'll be three green bottles\nHanging on the wall"
      v8 = "Three green bottles\nHanging on the wall\nThree green bottles\nHanging on the wall\nAnd if one green bottle\nShould accidentally fall\nThere'll be two green bottles\nHanging on the wall"
      v9 = "Two green bottles\nHanging on the wall\nTwo green bottles\nHanging on the wall\nAnd if one green bottle\nShould accidentally fall\nThere'll be one green bottle\nHanging on the wall"
      v10 = "One green bottle\nHanging on the wall\nOne green bottle\nHanging on the wall\nIf that one green bottle\nShould accidentally fall\nThere'll be no green bottles\nHanging on the wall"
      space = "\n\n"
    end

    it 'returns the final verse to the song' do
      song = TenGreenBottles.new(1)
      expect(song.lyrics).to eq v10
    end

    it 'returns the penultimate and final verses to the song' do
      song = TenGreenBottles.new(2)
      expect(song.lyrics).to eq v9+space+v10
    end

    it 'returns the final 4 verses to the song' do
      song = TenGreenBottles.new(4)
      expect(song.lyrics).to eq v7+space+v8+space+v9+space+v10
    end

    it 'returns all lyrics to the song, with a starting default of 10 bottles' do
      song = TenGreenBottles.new
      expect(song.lyrics).to eq v1+space+v2+space+v3+space+v4+space+v5+space+v6+space+v7+space+v8+space+v9+space+v10
    end

    it 'returns all the lyrics to the song, with a custom starting number' do
      song = TenGreenBottles.new(99)
      expect(song.lyrics).to include "Ninety-nine green bottles\nHanging on the wall"
      song = TenGreenBottles.new(99)
      expect(song.lyrics).to include "There'll be ninety-eight green bottles\nHanging on the wall"
      song = TenGreenBottles.new(99)
      expect(song.lyrics).to include "Twenty-five green bottles\nHanging on the wall"
      song = TenGreenBottles.new(99)
      expect(song.lyrics).to include "There'll be twenty-four green bottles\nHanging on the wall"
      song = TenGreenBottles.new(99)
      expect(song.lyrics).to include v9
      song = TenGreenBottles.new(99)
      expect(song.lyrics).to include v10
    end
  end
end
