require 'pry'

# I believe Alyssa is right. ==> Ben is right

class BankAccount
  attr_reader :balance

  def initialize(starting_balance)
    @balance = starting_balance
  end

  def positive_balance?
    balance >= 0
  end
end

obj = BankAccount.new(1000)
binding.pry