require 'pry'

module Module1
  def puts
    puts "madafaca module"
  end
end

class FirstClass
  include Module
  puts
end

binding.pry