
class CashRegister

    attr_writer

    attr_reader :discount

    attr_accessor :total

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @all_items = []
        @last_transaction = 0
    end

    def add_item(title, price, quantity = 1)
        self.total = total + (price * quantity)
        @last_transaction = price * quantity
        while quantity > 0 do
            @all_items << title
            quantity -= 1
        end

    end

    def apply_discount
        self.total = total - (total * discount / 100)
        if discount == 0
            "There is no discount to apply."
        else
            "After the discount, the total comes to $#{total}."
        end
    end

    def items 
        @all_items
    end

    def void_last_transaction
        @total -= @last_transaction
    end

end