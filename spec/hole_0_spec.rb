require "spec_helper"
require "0/hole_0.rb"

describe HoleZero do
  describe ".play" do
    it "should display the first fibonacci number" do
      when_implemented do
        expect(HoleZero.play(1)).to eq("1")
      end
    end

    it "should display the second fibonacci numbers" do
      when_implemented do
        expect(HoleZero.play(2)).to eq("1,1")
      end
    end

    it "should display the first 10 fibonacci numbers" do
      when_implemented do
        expect(HoleZero.play(10)).to eq("1,1,2,3,5,8,13,21,34,55")
      end
    end

    it "returns an empty string when 0" do
      when_implemented do
        expect(HoleZero.play(0)).to eq("")
      end
    end
  end
end
