class CashRegister
  attr_accessor :total
  
  def initialize(discount)
    @total = 0
    @employee_discount = discount
  end
  
  def add_item(title, price)
    @new_total += @total + price
  end
  
  def apply_discount
    @new_total = @employee_discount.to_f * 0.01
  
end
