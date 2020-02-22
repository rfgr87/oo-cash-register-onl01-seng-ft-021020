class CashRegister
  attr_accessor :total, :discount
  @new_total = []
  @item = []
  
  def initialize(discount=nil)
    @total = 0.0
    @discount = discount
  end
  
  def total
    if @discount == nil
      @discount = 0.0
    end
    @total = @total - (@total * (@discount*0.01))
    @total
  end
  
    
  def add_item(title=nil, price=0.0, quantity=1)
    binding.pry
    @total += (price*quantity)
    @new_total = (price.to_f * quantity.to_f)
    i = 0
    while i < quantity
      @item << (title)
      i += 1
    end
    
  end
  
  def apply_discount
    if @discount == nil || @discount == 0.0
      return "There is no discount to apply."
    else
      @total = @total - (@total * (@discount * 0.01))
      @total
      return "After the discount, the total comes to $#{@total}."
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
