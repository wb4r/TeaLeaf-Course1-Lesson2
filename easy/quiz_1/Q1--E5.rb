require 'pry'

class Fruit
  def initialize(name)
    name = name
  end
end

class Pizza
  def initialize(name)
    @name = name
  end
end
apple = Fruit.new("Apple")
margarita = Pizza.new("Marggie")
binding.pry

# => #<Fruit:0x00000002c442d8>
# => #<Pizza:0x00000002c7e208 @name="Marggie">