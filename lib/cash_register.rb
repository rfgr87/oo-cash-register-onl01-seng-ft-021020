class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount=nil)
    @total = 0.0
    @discount = discount
  end
  
  def add_item(title=nil, price=0.0, quantity=1)
    @new_total = []
    @item = []
    @total += (price*quantity)
    @new_total.push(price * quantity)
    @item.push(title * quantity)
  end
  
  def apply_discount
    if @discount = nil
      puts "There no discount to apply"
    else
      @total = @discount.to_f * 0.01 * @new_total.to_f.sum
    end
  end
  
  def item
    @@item
  end
  
  def void_last_transaction
    @total = @new_total.sum - @new_total[@new_total.length-1]
    @total
  end
      
end
