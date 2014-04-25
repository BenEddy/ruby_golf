require "spec_helper"
require "4/hole_4.rb"

describe HoleFour do
  describe ".play" do
    it "returns a square" do
      when_implemented do
        expect(described_class.play(width: 5, height: 5)).to eq <<-Shape.strip
#####
#   #
#   #
#   #
#####
Shape
      end
    end

    it "returns a rectangle" do
      when_implemented do
        expect(described_class.play(width: 3, height: 8)).to eq <<-Shape.strip
###
# #
# #
# #
# #
# #
# #
###
Shape
      end
    end

    it "accepts a character option" do
      when_implemented do
        expect(described_class.play(width: 3, height: 3, character: "*")).to eq <<-Shape.strip
***
* *
***
Shape
      end
    end

    it "accepts a fill option" do
      when_implemented do
        expect(described_class.play(width: 3, height: 3, character: "*")).to eq <<-Shape.strip
****
****
****
****
Shape
      end
    end
  end
end

