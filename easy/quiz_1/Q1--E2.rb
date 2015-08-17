require 'pry'
module Speed
  def go_fast
    puts "I am a #{self.class} and going super fast!"
  end
end

class Car
  include Speed
  def go_slow
    puts "I am safe and driving slow."
  end
end

class Truck
  include Speed
  def go_very_slow
    puts "I am a heavy truck and like going very slow."
  end
end

car1 = Car.new
truck1 = Truck.new
binding.pry

# car1.go_fast
# truck1.go_fast