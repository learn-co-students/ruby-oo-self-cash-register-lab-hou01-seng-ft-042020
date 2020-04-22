
class CashRegister

    attr_accessor :total, :discount, :items, :lastitem

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end
    
    def add_item(title, price, quantity = 1)
        self.total += price * quantity
        quantity.times do   
            items.push(title)
        end
        self.lastitem = price * quantity

    end

    def apply_discount
        if discount != 0 
        self.total = (self.total * ((100.0-discount.to_f)/100.0)).to_i
        "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total = self.total - self.lastitem
    end








end
