require 'pry'

class Cat
  attr_accessor :type, :age

  def initialize(type)
    @type = type
    @age  = 0
  end

  def make_one_year_older
    self.age += 1
  end
end

cat1 = Cat.new("persian")
binding.pry

# it is refering to the object of that class Cat that is
# calling it