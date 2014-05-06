require File.expand_path("../hole_set")

class Game
  attr_reader :holes, :output, :errors

  def initialize(hole_numbers)
    @holes = HoleSet.find(hole_numbers)
  end

  def scored_holes
    play
    holes
  end

  def play
    holes.map(&:attempt)
  end

  def score
    successful_holes.map(&:score).sum
  end

  def successful_holes
    holes.select(&:successful?)
  end
end
