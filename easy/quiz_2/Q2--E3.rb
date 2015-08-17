require 'pry'
# for that we use .ancestors with the class Class.ancestors = 
# Orange.ancestors
module Taste
  def flavor(flavor)
    puts "#{flavor}"
  end
end

class Orange
  include Taste
  
  def ancestors
    (self.class).ancestors
  end
end

orange = Orange.new
puts Orange.ancestors
binding.pry