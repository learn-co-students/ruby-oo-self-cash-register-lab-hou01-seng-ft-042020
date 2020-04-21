class CashRegister
  attr_accessor :discount 
  attr_accessor :total
  attr_accessor :items
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = [] 
    @item_hashes = []
  end 
  def total 
    @total
  end
  def add_item(title, price, quantity=1)
    quantity.times do |i|
      items << title
    end 
    @item_hashes << {title: title, price: price, quantity: quantity}

    self.total = self.total + price * quantity
  end 
  def apply_discount
    if discount > 0
      new_total = self.total - (self.discount * self.total / 100)
      self.total = new_total
      "After the discount, the total comes to $#{new_total}."
    else 
      "There is no discount to apply."
    end
  end 
  def items 
    @items
  end 
  def void_last_transaction
    self.total = self.total - @item_hashes[-1][:price] * @item_hashes[-1][:quantity] 
  end 

end 
