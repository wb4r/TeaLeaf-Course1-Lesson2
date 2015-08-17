require 'pry'

class Being
  attr_accessor :name
  def initialize(name1)
    self.name = name1
    #puts "Being #{name1} XX"
  end
end

class Human < Being
  def initialize(name, name1)
    super(name1)
    puts name
    #puts "Human #{name1} XX"
  end
end

a = Being.new "mada"
b = Human.new a.name, "faca"
