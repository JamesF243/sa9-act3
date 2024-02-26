# Old Warmup from 2150 w/ Yu

class Vehicle:
    def __init__(self, max, miles, cap):
        self.max_speed = max
        self.mileage = miles
        self.capacity = cap

    def m1(self):
        print("Mileage:", self.mileage)
        print("Max Speed:", self.max_speed)
        print("Capacity:", self.capacity)

    def fare(self):
        fare = self.capacity * 0.50
        return fare

# early test code for Vehicle class
car = Vehicle(200, 20, 1)
print(car.max_speed)
print(car.mileage)

# vehicle class without instance variables
class VehicleX:
    def m1(self):
        print("Test message")

# test for capacity
honda = Vehicle(200, 200, 4)
honda.m1()

# bus class with fare calculator and bus specific m1
class Bus(Vehicle):
    def fare(self):
        fare = self.capacity * 3.10
        return fare
    def m1(self):
        print("Mileage:", self.mileage)
        print("Max Speed:", self.max_speed)
        print("Capacity:", self.capacity)
        print("Bus Fare:", self.fare())

# test code for bus class
tour_bus = Bus(120, 300, 15)
print()
tour_bus.m1()
