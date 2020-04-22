class CashRegister
    attr_accessor :discount, :total, :items, :last_item
    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end
    def add_item(title, price, quantity=1)
        self.total += price * quantity
        quantity.times do 
            items << title
        end
        self.last_item = price * quantity
    end
    def apply_discount
        if discount == 0
            "There is no discount to apply."
        else
        self.total = total - total * discount / 100.00
        "After the discount, the total comes to $#{total.to_i}."
        end
    end
    def void_last_transaction
        self.total -= self.last_item
    end
end
