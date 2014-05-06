require "active_support/core_ext"
require File.expand_path("../hole", __FILE__)

class HoleSet
  attr_reader :hole_numbers

  def self.find(hole_numbers)
    new(hole_numbers).to_a
  end

  def initialize(hole_numbers)
    @hole_numbers ||= hole_numbers.presence || all_hole_numbers
  end

  def to_a
    hole_numbers.map { |i| Hole.new(i) }
  end

  private

  def all_hole_numbers
    (0..Dir["spec/**/hole*.rb"].count - 1).to_a
  end
end
