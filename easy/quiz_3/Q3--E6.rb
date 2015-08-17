require 'pry'
# one solution is using @age instead of self.age
# and I believe even only age would work bc of the attr_accessor
# well this is wrong but I used the logic of when using 
# puts "#{age}" and its working but not in this case. I also 
# changed the make_one... def to age.to_s and it workds without @


class Cat
  attr_accessor :type, :age

  def initialize(type)
    @type = type
    @age  = 0
  end

  def make_one_year_older
    @age += 1
  end
end

cat1 = Cat.new("persian")
binding.pry