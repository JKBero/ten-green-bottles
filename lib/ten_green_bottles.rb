require 'humanize'

class TenGreenBottles

  def lyrics(bottles = 10)
    verse(bottles)
  end

  private

  def verse(bottles)
    x = bottles.humanize.capitalize
    y = (bottles-1).humanize
    "#{x} green bottles\nHanging on the wall\n#{x} green bottles\nHanging on the wall\nAnd if one green bottle\nShould accidentally fall\nThere'll be #{y} green bottles\nHanging on the wall"
  end

end
