require 'pry'

class Greeting
  def greet(msg)
    puts msg
  end
end

class Hello < Greeting
  def hi
    greet "Hello"
  end
end

class Goodbye < Greeting
  def bye
    greet "Goodbye"
  end
end

binding.pry