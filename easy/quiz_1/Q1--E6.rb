require 'pry'

class Cube
  #attr_accessor :volume
  def initialize(volume)
    @volume = volume
  end
end

qb = Cube.new(35)
binding.pry