class MyCar
    attr_accessor :color
    attr_reader :year

    def initialize(year, model, color)
        @year = year
        @color = color
        @model = model
        @speed = 0
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

    def spray_paint(new_color)
        self.color = new_color
        puts "New color !! #{new_color}"
    end
    
    def gas_mileage(gallons, miles)
        puts "#{miles / gallons} miles per gallon of gas"
    end
    
    def to_s
        puts "Presenting #{year} #{color} #{@model} "
    end
end

lumina = MyCar.new(1997, 'chevy lumina', 'white')
lumina.speed_up(20)
lumina.speed
lumina.speed_up(20)
lumina.speed
lumina.brake(20)
lumina.speed
lumina.brake(20)
lumina.speed
lumina.turn_off
lumina.speed

lumina.color = 'black'
puts lumina.color
puts lumina.year

lumina.spray_paint('Blue')

lumina.gas_mileage(5,20)
puts lumina