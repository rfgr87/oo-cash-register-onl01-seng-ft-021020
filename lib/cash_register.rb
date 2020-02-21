class CashRegister
  attr_accessor :total
  @@item = []
  @@new_total = []
  
  def initialize(discount)
    @total = 0
    @employee_discount = discount
  end
  
  def add_item(title, price)
    @new_total << price
    @@item << title
  end
  
  def apply_discount
    if @employee_discount = nil
      puts "There no discount to apply"
    else
      @total = @employee_discount.to_f * 0.01 * @total
    end
  end
  
  def item
    @@item
  end
  
  def void_last_transaction
    @new_total = @new_total
      
end
