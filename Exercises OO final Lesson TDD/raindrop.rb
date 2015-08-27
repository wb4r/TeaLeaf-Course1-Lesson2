require 'prime'

class Raindrops
  def convert(input)
    @input = input
    primes = Prime.first input
    primes.keep_if {|prime_number| input % prime_number == 0}
    rain_language(primes, input)
  end
  def rain_language(primes, input)
    result = ""

    candidates = [3, 5, 7]
    if (candidates - primes).size == 3
      result << input.to_s
    else
      primes.each do |x|      
        case x 
        when 3
          result << "Pling"
        when 5
          result << "Plang"
        when 7
          result << "Plong"          
        end
      end
    end
    result
  end
end

mada = Raindrops.new
puts mada.convert(1755)
