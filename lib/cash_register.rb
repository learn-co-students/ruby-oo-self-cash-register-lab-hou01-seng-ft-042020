class CashRegister
    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
      end

    def discount= (discount)
        @discount = discount
    end


    def discount
        @discount 
    end

    def total= (total)
        @total = total
    end

    def total
        @total
    end

    def items= (items)
        @items = items
    end

    def items
        @items
    end

    def last_transaction= (last_transaction)
        @last_transaction = last_transaction
    end

    def last_transaction
        @last_transaction
    end

    def add_item(title,price, quantity = 1)
        self.total += price * quantity
        quantity.times do
            items << title
        end 
        self.last_transaction = price * quantity
    end

    def apply_discount
        if discount != 0
            self.total = (total * ((100.0 - discount.to_f)/100)).to_i
            "After the discount, the total comes to $#{self.total}."
          else
            "There is no discount to apply."
          end   
    end
    def void_last_transaction
        self.total = self.total - self.last_transaction
      end
end
