require 'pry'

class Cat
  def initialize(type)
    @type = type
  end
  
  def to_s
    "I am a #{@type} cat"
  end
end

tabbycat = Cat.new("tabby")
binding.pry