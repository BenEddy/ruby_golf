require 'artii'

class Greeting
  def rainbowize(string)
    colors = String.colors - [:black]
    string.split('').map { |char| char.send(:colorize, colors.sample ) }.join()
  end

  def to_s
    rainbowize(ascii_generator.asciify(("Ruby Golf"))) + "\n\n"
  end

  def ascii_generator
    Artii::Base.new(font: "slant")
  end
end
