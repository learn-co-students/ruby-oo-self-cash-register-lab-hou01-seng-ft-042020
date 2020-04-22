require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction_amount

  def initialize (discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction_amount = 0
  end

  def add_item (item, price, quantity = 1)
    self.total += (quantity * price)
    quantity.times do self.items.push(item)
      end
    self.last_transaction_amount = price * quantity
  end

  def apply_discount
    if discount != 0
      #then apply discount to total price
      self.total = self.total*(100-self.discount)*0.01
      "After the discount, the total comes to $#{total.to_i}."
    else
      #discount = 0
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= last_transaction_amount
  end
  
end



    # #void_last_transaction
    # subtracts the last item from the total (FAILED - 1)
    # returns the total to 0.0 if all items have been removed (FAILED - 2)