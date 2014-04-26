require "5/hole_5.rb"

describe HoleFive do
  let(:schema) { File.open(File.expand_path("../fixtures/schema.sql", __FILE__)) }
  let(:cars)   { File.open(File.expand_path("../fixtures/cars.sql", __FILE__)) }

  def play(query)
    HoleFive.play(schema: schema, data: cars, query: query)
  end


  describe ".play" do
    it "selects everything" do
      expect(play("SELECT * FROM cars;")).to eq [
        {id: "1", make: "Toyota",  model: "Camary",  year: "2009", price: "19000"},
        {id: "2", make: "BMW",     model: "350i",    year: "2002", price: "16000"},
        {id: "3", make: "Audi",    model: "A3",      year: "2013", price: "28000"},
        {id: "4", make: "Nissan",  model: "Rogue",   year: "2004", price: "9000"},
        {id: "5", make: "Hyundai", model: "Elantra", year: "1999", price: "4000"},
        {id: "6", make: "Hyundai", model: "Sonata",  year: "2009", price: "12000"},
        {id: "7", make: "Toyota",  model: "Camary",  year: "2013", price: "18000"}
      ]
    end

    it "selects a subset of attributes" do
      expect(play("SELECT make, year FROM cars;")).to eq [
        {make: "Toyota",  year: "2009"},
        {make: "BMW",     year: "2002"},
        {make: "Audi",    year: "2013"},
        {make: "Nissan",  year: "2004"},
        {make: "Hyundai", year: "1999"},
        {make: "Hyundai", year: "2009"},
        {make: "Toyota",  year: "2013"}
      ]
    end

    it "selects with a condition" do
      expect(play("SELECT * FROM cars WHERE year > 2004;")).to eq [
        {id: "1", make: "Toyota",  model: "Camary",  year: "2009", price: "19000"},
        {id: "3", make: "Audi",    model: "A3",      year: "2013", price: "28000"},
        {id: "6", make: "Hyundai", model: "Sonata",  year: "2009", price: "12000"},
        {id: "7", make: "Toyota",  model: "Camary",  year: "2013", price: "18000"}
      ]
    end

    it "selects with multiple, ANDed conditions" do
      expect(play("SELECT * FROM cars WHERE year > 2004 AND make = 'Toyota';")).to eq [
        {id: "1", make: "Toyota",  model: "Camary",  year: "2009", price: "19000"},
        {id: "7", make: "Toyota",  model: "Camary",  year: "2013", price: "18000"}
      ]
    end

    it "selects with multiple, ORed conditions" do
      expect(play("SELECT * FROM cars WHERE year > 2004 OR make = 'BMW';;")).to eq [
        {id: "1", make: "Toyota",  model: "Camary",  year: "2009", price: "19000"},
        {id: "2", make: "BMW",     model: "350i",    year: "2002", price: "16000"},
        {id: "3", make: "Audi",    model: "A3",      year: "2013", price: "28000"},
        {id: "6", make: "Hyundai", model: "Sonata",  year: "2009", price: "12000"},
        {id: "7", make: "Toyota",  model: "Camary",  year: "2013", price: "18000"}
      ]
    end

    it "selects a subset of attributes with conditions" do
      expect(play("SELECT price FROM cars WHERE year > 2004 AND make = 'Toyota';")).to eq [
        {price: "19000"},
        {price: "18000"}
      ]
    end
  end
end

