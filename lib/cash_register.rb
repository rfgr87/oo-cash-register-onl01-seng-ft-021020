class CashRegister
  attr_accessor :total, :discount
  @item = []
  @new_total = []
  
  def initialize(discount=nil)
    @total = 0.0
    @discount = discount
  end
  
  def add_item(title, price, quantity=1)
    @total = @total + (price.to_f*quantity.to_f)
    @new_total << (price.to_f * quantity.to_f)
    @item << title * quantity
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
