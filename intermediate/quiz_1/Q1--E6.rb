require 'pry'
# its the same because we have the attr_* and we use the def
# show as a getter not a setter so with or witouh .self dont matter.
# the one that is indeed necessary is the @ in the 1st template

class Computer
  attr_accessor :template

  def create_template
    @template = "template 14231"
  end

  def show_template
    template
  end
end

comp = Computer.new
binding.pry