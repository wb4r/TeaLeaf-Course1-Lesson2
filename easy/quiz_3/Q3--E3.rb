require 'pry'

class AngryCat
  def initialize(age, name)
    @age  = age
    @name = name 
  end

  def age
    puts @age
  end

  def name
    puts @name
  end

  def hiss
    puts "Hisssss!!!"
  end
end

ac1 = AngryCat.new(13, "putput")
ac2 = AngryCat.new(4, "kikin")
binding.pry