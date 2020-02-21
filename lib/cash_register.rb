class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount=nil)
    @total = 0.0
    @discount = discount
  end
  
  def total
    if @discount == nil
      @discount = 0.0
    @total = @total - (@total * (@discount*0.01))
    @total
  end
  
  def add_item(title=nil, price=0.0, quantity=1)
    @new_total = []
    @item = []
    @total += (price*quantity)
    @new_total.push(price.to_i.to_f * quantity.to_i.to_f)
    @item.push(title * quantity)
  end
  
  def apply_discount
    if @discount == nil
      puts "There no discount to apply"
    else
      @total = @total - (@total * (@discount * 0.01))
      @total
    end
  end
  
  def items
    @item
  end
  
  def void_last_transaction
    if @new_total.length == 0
      @total = 0.0
      @total
    else
      @total = @total - @new_total[@new_total.length-1]
      @total
    end
  end
      
end
