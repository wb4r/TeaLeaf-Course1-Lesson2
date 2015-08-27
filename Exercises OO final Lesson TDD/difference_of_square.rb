require 'pry'

class Squares
  def self.compare(number_given)
    self.square_ofthe_sums(number_given) - self.sum_of_squares(number_given) 
  end
  def self.sum_of_squares(number_given)
    total_sum_of_squares = 0

    number_given.downto(1) do |i|
      total_sum_of_squares += i**2
    end
    total_sum_of_squares
  end

  def self.square_ofthe_sums(number_given)
    total_square_ofthe_sums = 0

    number_given.downto(1) do |i|
      total_square_ofthe_sums += i 
    end
    total_square_ofthe_sums**2
  end
end

Squares.new
puts Squares.compare(5)