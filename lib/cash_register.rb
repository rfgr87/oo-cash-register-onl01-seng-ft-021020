class CashRegister
  attr_accessor :total, :discount
  @@item = []
  @@new_total = []
  
  def initialize(discount=nil)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price)
    @new_total << price
    @total = @new_total.sum
    @@item << title
  end
  
  def apply_discount
    if @discount = nil
      puts "There no discount to apply"
    else
      @total = @discount.to_f * 0.01 * @new_total.sum
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
