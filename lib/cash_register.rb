class CashRegister 
 attr_accessor :total, :discount 

  def initialize(discount = nil)
    @total = 0
    @discount = discount
  end 

  def add_item(title, price, quantity = 1)
    self.total=(@total + (price * quantity))
    @total 
  end

  def apply_discount
    if self.discount > 0 
      self.total=@total - (@total * @discount / 0.01)
      puts "After the discount, the total comes to $#{@total.to_i}."
    else 
      puts "There is no discount to apply."
    end
  end
end

test = CashRegister.new(25)

test.add_item("test item", 100, 2)

puts test.total

puts test.discount

test.apply_discount
