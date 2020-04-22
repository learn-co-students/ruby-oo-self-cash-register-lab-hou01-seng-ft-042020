require 'pry'

# apply_discount requires working w/ an Integer vs a Float in Ruby. 
# 100.class returns Integer while 100.0.class returns Float.
#  Ruby provides methods for changing 
#  an object of type Integer to a Float and vice versa.

# a discount is calculated as a percentage off of the total cash register price 

# void_last_transaction method will remove the last transaction from the total. 
# You'll need to make an additional attribute accessor 
# and keep track of that last transaction amount somehow. 
# In what method of the class are you working with an individual item?

class CashRegister
    attr_accessor :total, :discount, :list, :last_price

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @list = []
        @last_price = 0
    end 

    def add_item(title, price, quantity = 1)
        @total += price*quantity
        
        quantity.times {@list << title} 
        @last_price = price*quantity 
    end 

    def apply_discount
        @total = @total - @total*@discount/100
        if @discount != 0
            p "After the discount, the total comes to $#{total}."
        else 
            p "There is no discount to apply."
        end 
    end 

    def items
        @list
    end 
    
    def void_last_transaction
        # binding.pry
        @total = @total-@last_price
        
    end 
end 

######## README PRACTICE ############
# class Person
 
#     attr_accessor :age
   
#     def initialize(age = 0)
#       @age = age 
#     end 
   
#     def birthday
#       self.age += 1
#     end
#   end

# phyllis = Person.new(22)
# puts phyllis
# puts phyllis.age
# phyllis.birthday
# puts phyllis.age