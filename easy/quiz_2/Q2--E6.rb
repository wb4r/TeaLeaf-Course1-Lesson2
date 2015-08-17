require 'pry'

# def self.manufacturer is the class method because of the .self
# in the definition of the method

class Television
  def self.manufacturer
    # method logic
  end 

  def model
    # method logic
  end
end

# we call it with Television.manufacturer
binding.pry