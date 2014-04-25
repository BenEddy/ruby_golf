require "spec_helper"
require "2/hole_2.rb"

describe HoleTwo do
  describe ".play" do
    let(:csv) { File.open(File.expand_path("../fixtures/users.csv", __FILE__)) }

    it "returns the tallest and shortest users" do
      when_implemented do
        expect(described_class.play(csv)).to eq({
          tallest:  "Trilvius",
          shortest: "Jon-Dexter"
        })
      end
    end
  end
end

