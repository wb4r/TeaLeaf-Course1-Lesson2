require 'pry'

module Towable
  def can_tow?(kg)
    kg < 1000 ? true : false
  end
  
  
  class Vehicle
    attr_accessor :year, :color, :model, :metacolor
    @@number_of_vehicles = 0
    def initialize(year, color, model)
      self.year = year
      self.color = color
      self.model = model
      @@number_of_vehicles += 1
    end
    def pseudo_initialize(year, color, model)
      self.year = year
      self.color = color
      self.model = model
    end
    def self.total
      @@number_of_vehicles
    end
    def age
      Time.now.year - self.year
    end
    def set_metacolor(color)
      self.write(color)
    end
    def read_metacolor
      self.read
    end
    
    private
    #attr_reader :metacolor
    def write(color)
      self.metacolor = color
    end
    def read
      "#{self.metacolor}"
    end
  end
end

  

class MyCar < Towable::Vehicle
  include Towable
end

class MyTruck < Towable::Vehicle
  attr_accessor :weight_capacity
  
  def co_initialize(weight_capacity)
    self.weight_capacity = weight_capacity
  end
end

tr = MyTruck.new(1928, "white", "ibeco")
madafacascar = MyCar.new(1990, "Red", "Ibiza")
binding.pry
    
    