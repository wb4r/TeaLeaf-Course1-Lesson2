require 'pry'

class Greeting
  def greet(message)
    puts message
  end
end

class Hello < Greeting
  def self.hi           # wrong
    greet("Hello")
  end
end

binding.pry