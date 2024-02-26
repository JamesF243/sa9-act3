require 'OOP_Cars'

RSpec.describe Vehicle do
  describe "#initialize" do
    it "initializes the Vehicle with correct attributes" do
      vehicle = Vehicle.new(200, 20, 1)
      expect(vehicle.max_speed).to eq(200)
      expect(vehicle.mileage).to eq(20)
      expect(vehicle.capacity).to eq(1)
    end
  end
  
  describe "#m1" do
    it "prints the correct attributes" do
      vehicle = Vehicle.new(200, 20, 1)
      expect { vehicle.m1 }.to output("Mileage: 20\nMax Speed: 200\nCapacity: 1\n").to_stdout
    end
  end

  describe "#fare" do
    it "calculates the fare correctly" do
      vehicle = Vehicle.new(200, 20, 1)
      expect(vehicle.fare).to eq(0.50)
    end
  end
end

RSpec.describe Bus do
  describe "#fare" do
    it "calculates the bus fare correctly" do
      bus = Bus.new(120, 300, 15)
      expect(bus.fare).to eq(46.50)
    end
  end

  describe "#m1" do
    it "prints the correct attributes including bus fare" do
      bus = Bus.new(120, 300, 15)
      expect { bus.m1 }.to output("Mileage: 300\nMax Speed: 120\nCapacity: 15\nBus Fare: 46.5\n").to_stdout
    end
  end
end