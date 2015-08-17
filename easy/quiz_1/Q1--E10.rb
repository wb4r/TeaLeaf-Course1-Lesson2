require 'pry'

class Bag
  def initialize(color, material)
    @color = color
    @material = material
  end
end

bag_example = Bag.new("White", "Plastic")

binding.pry