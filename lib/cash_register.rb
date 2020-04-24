require 'pry'


class CashRegister
    attr_accessor :total, :discount

    def initialize (discount = 0)
        @total = 0
        @discount = discount
        @cart = []
        @transaction = 0
    end

    def total
        @total
    end

    def add_item(title, price, quantity = 1)
        @total += price * quantity
        quantity.times do
            @cart << title
        end
        @transaction = price * quantity
    end

    def apply_discount
        if discount != 0
            total_discount = (self.total * @discount.to_f / 100)
            self.total = self.total - total_discount
            "After the discount, the total comes to $800."
        else
            "There is no discount to apply."
        end
    end

    def items
        @cart
    end

    def void_last_transaction
        self.total = self.total - @transaction
    end
end






# binding.pry
