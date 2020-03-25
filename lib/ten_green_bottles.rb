require 'humanize'

class TenGreenBottles

  def initialize(bottles = 10)
    @bottles = bottles
    @verses = []
  end

  def lyrics
    while @bottles > 0
      @bottles == 1 ? @verses.push(final_verse) : @verses.push(verse)
      @bottles -= 1
    end
    @verses.join("\n\n")
  end

  private

  def verse
    x = @bottles.humanize.capitalize
    y = (@bottles-1).humanize
    plural = "s" if @bottles > 2
    "#{x} green bottles\nHanging on the wall\n#{x} green bottles\nHanging on the wall\nAnd if one green bottle\nShould accidentally fall\nThere'll be #{y} green bottle#{plural}\nHanging on the wall"
  end

  def final_verse
    "One green bottle\nHanging on the wall\nOne green bottle\nHanging on the wall\nIf that one green bottle\nShould accidentally fall\nThere'll be no green bottles\nHanging on the wall"
  end

end
