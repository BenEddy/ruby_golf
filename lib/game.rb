class Game
  attr_reader :hole_numbers, :output, :errors

  def initialize(holes_numbers)
    @hole_numbers ||= hole_numbers || all_hole_numbers
    @output = StringIO.new
    @errors = StringIO.new
  end

  def holes
    @holes ||= hole_numbers.map { |i| Hole.new(i) }
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

  private

  def all_hole_numbers
    (0..Dir["spec/**/hole*.rb"].count - 1).to_a
  end
end
