require "spec_helper"
require "1/hole_1.rb"

describe HoleOne do
  describe ".play" do
    it "returns the specified number of FizzBuzz numbers" do
      when_implemented do
        expect(described_class.play(10)).to eq "1,2,Fizz,4,Buzz,Fizz,7,8,Fizz,Buzz"
      end
    end

    it "returns many FizzBuzz numbers" do
      when_implemented do
        expect(described_class.play(100)).to eq "
          1,2,Fizz,4,Buzz,Fizz,7,8,Fizz,Buzz,
          11,Fizz,13,14,FizzBuzz,16,17,Fizz,19,Buzz,
          Fizz,22,23,Fizz,Buzz,26,Fizz,28,29,FizzBuzz,
          31,32,Fizz,34,Buzz,Fizz,37,38,Fizz,Buzz,
          41,Fizz,43,44,FizzBuzz,46,47,Fizz,49,Buzz,
          Fizz,52,53,Fizz,Buzz,56,Fizz,58,59,FizzBuzz,
          61,62,Fizz,64,Buzz,Fizz,67,68,Fizz,Buzz,
          71,Fizz,73,74,FizzBuzz,76,77,Fizz,79,Buzz,
          Fizz,82,83,Fizz,Buzz,86,Fizz,88,89,FizzBuzz,
          91,92,Fizz,94,Buzz,Fizz,97,98,Fizz,Buzz".gsub(/\s/, "")
      end
    end

    it "returns an empty string when n is zero" do
      when_implemented do
        expect(described_class.play(0)).to eq ""
      end
    end

    it "returns an empty string when n is negative" do
      when_implemented do
        expect(described_class.play(-1)).to eq ""
      end
    end
  end
end

