class Vehicle
  attr_reader :max_speed, :mileage, :capacity

  def initialize(max_speed, mileage, capacity)
    @max_speed = max_speed
    @mileage = mileage
    @capacity = capacity
  end

  def m1
    puts "Mileage: #{@mileage}"
    puts "Max Speed: #{@max_speed}"
    puts "Capacity: #{@capacity}"
  end

  def fare
    fare = @capacity * 0.50
    return fare
  end
end

class Bus < Vehicle
  def fare
    fare = @capacity * 3.10
    return fare
  end

  def m1
    super
    puts "Bus Fare: #{fare}"
  end
end
