require 'pry'

# just as like it is given, it wont update. If you put an @
# in front of quantity inside update_quantity method it will work.
# the other solution is to put .self in front of quantity
# but then we MUST create an attr_writer :quantity or it wont
# be able to modify anythin bc its in reader mode


class InvoiceEntry
  attr_reader :quantity, :product_name
  attr_writer :quantity

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    # prevent negative quantities from being set
    quantity = updated_count if updated_count >= 0
  end
end

shopping = InvoiceEntry.new("macbook", "1")
binding.pry