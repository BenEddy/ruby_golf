require File.expand_path("../null_spec_runner", __FILE__)

class Hole
  attr_reader :number, :state

  def initialize(number)
    @number = number
  end

  def score
    @score ||= source.gsub(/\s/, "").each_char.count
  end

  def attempt
    @state ||= begin
      if    pending?    then Pending.new(self)
      elsif successful? then Success.new(self)
      else  Failure.new(self)
      end
    end
  end

  def pending?
    @pending ||= source.gsub(/#.*/, "").match("NotImplementedError")
  end

  def successful?
    @successful ||= !pending? && specs_pass?
  end

  private

  def specs_pass?
    @specs_pass ||= NullSpecRunner.passing?(spec)
  end

  def source
    File.read("holes/#{number}/hole_#{number}.rb")
  end

  def spec
    "spec/hole_#{number}_spec.rb"
  end

  class Status < Struct.new(:hole)
    def score
      hole.score
    end

    def number
      hole.number
    end
  end

  class Success < Status
    def to_s
      "#{score}".colorize(:green)
    end
  end

  class Pending < Struct.new(:hole)
    def to_s
      "PENDING".colorize(:yellow)
    end
  end

  class Failure < Struct.new(:hole)
    def to_s
      "FAIL \t\tRun './test #{hole.number}' to see errors".colorize(:red)
    end
  end
end
