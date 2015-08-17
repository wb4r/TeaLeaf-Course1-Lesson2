require 'pry'

class AngryCat
  def hiss
    puts "Hisssss!!!"
  end
end

kiko = AngryCat.new
binding.pry