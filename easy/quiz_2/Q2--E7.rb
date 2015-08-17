require 'pry'

# @@cats_count is a class variable, so it belongs to class Cat
# it is declared at the beginning equaling to 0 and each time
# an object is created (initialize) it increases by 1. When calling
# def self.cats_count we are calling the class directly bc it is
# a class method and this method itself calls the class variable
# thta has been increasing thorugout the programm when initializing
# an object of this class




binding.pry