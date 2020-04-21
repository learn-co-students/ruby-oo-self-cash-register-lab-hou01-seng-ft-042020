class CashRegister

    attr_accessor :total, :discount, :tranasctions

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        @tranasctions = []
    end

    def add_item(item, price, quantity = 1)
        @total += price*quantity
        quantity.times do 
            @items << item
        end
        @tranasctions << price*quantity
    end

    def apply_discount
        if @discount == 0
            return "There is no discount to apply."
        end
         disc = (@total*@discount)/100
         @total = @total - disc 
        return "After the discount, the total comes to $#{@total}."
    end

    def items
        @items
    end

    def void_last_transaction
        last = tranasctions[-1]
        @tranasctions.delete_at(-1)
        @total = @total - last
    end

end
