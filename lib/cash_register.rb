class CashRegister 
  attr_accessor :total, :discount, :item, :last_transaction 
  
  def initialize(discount = 0)
    # optional discount, so if there is not a discount it will equal 0
    @total = 0
    @discount = discount 
    # the discount could later on be 20% as mentioned 
    @item_array = []
  end 
  
  def add_item(item, price, quantity = 1) 
    quantity.times {@item_array << item}
    # here we are keeping track of item names, including the quantity
    @price = price  
    @total += price * quantity
    #total is increased based on the quantity
    self.last_transaction = price * quantity
    # **we have to keep track of the last transaction 
  end 
  
  
  def apply_discount
    if @discount == 0 
       "There is no discount to apply."
    else  self.total -= @total * @discount / 100
      # figure out the discount per above..#here we are first figuring out the discount by multiplying the total by the discount, dividing by 100 and then subtracing that by the total!! 
      "After the discount, the total comes to $#{@total}."
    end 
  end 
  
  def items 
    @item_array
  end   
  
  def void_last_transaction 
    self.total = self.total - self.last_transaction
  end 
end 

