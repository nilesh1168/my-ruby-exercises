module Towable
    def towed
        puts "towing is easy"
    end
end

class Vehicle
    @@vehicle_objects = 0
    attr_accessor :age

    def initialize(year, model, color)
        @@vehicle_objects += 1
        @color = color
        @year = year
        @model = model
        @speed = 0
    end

    def self.number_of_vehicles
        puts @@vehicle_objects
    end
    
    def gas_mileage(gallons, miles)
        puts "#{miles / gallons} miles per gallon of gas"
    end

    def spray_paint(new_color)
        @color = new_color
        puts "New color !! #{new_color}"
    end

    def speed_up(number)
        @speed += number
        puts "Increase speed by #{number}"
    end

    def brake(number)
        @speed -= number
        puts "Decrease speed by #{number}"
    end

    def turn_off
        @speed = 0
        puts "Stop!"
    end
    
    def speed
        "Current speed : #{@speed}"
    end

    def age
        puts "Age of vehicle : #{calculate_age}"
    end

    private
    def calculate_age
        Time.now.year - @year
    end
end

class MyCar < Vehicle
    include Towable

    NUM_OF_DOOR = 2

    def initialize(year, model, color)
        super
    end
end

class MyTruck < Vehicle
    NUM_OF_DOOR = 4
    
    def initialize(year, model, color)
        super
    end

end


car = MyCar.new(1990, 'corolla', 'white')
truck = MyTruck.new(1990, 'benz', 'black')
fer = MyCar.new(2020, '2020', 'red')

Vehicle.number_of_vehicles
car.towed
puts MyCar.ancestors

car.speed_up(10)
truck.speed_up(5)
truck.age