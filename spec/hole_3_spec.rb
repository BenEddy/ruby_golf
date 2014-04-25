require "spec_helper"
require "3/hole_3.rb"

describe HoleThree do
  describe ".play" do
    it "adds two digits" do
      when_implemented do
        expect(described_class.play("2,7")).to eq 9
      end
    end

    it "adds multiple digits" do
      when_implemented do
        expect(described_class.play("2,7,45,3")).to eq 57
      end
    end

    it "adds a single digit" do
      when_implemented do
        expect(described_class.play("2")).to eq 2
      end
    end

    it "handles an empty string" do
      when_implemented do
        expect(described_class.play("")).to eq 0
      end
    end

    it "accepts custom delimiters" do
      when_implemented do
        expect(described_class.play("//;\n4;2;4")).to eq 10
      end
    end
  end
end
