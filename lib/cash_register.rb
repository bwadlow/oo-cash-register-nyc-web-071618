require "pry"

class CashRegister

  attr_accessor :total, :last
  attr_reader :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @cart=[]
  end

  def add_item(item, price, quantity = 1)
    @total += price * quantity
    @last=price * quantity
    quantity.times do |i|
      @cart << item
    end
  end

  def apply_discount
    if @discount==0
    return "There is no discount to apply."
  end
    @total = @total * (100-@discount)/100
    return "After the discount, the total comes to $#{@total}."
  end

  def items
    @cart
  end

  def void_last_transaction
    @total -=@last
  end


end # end of class
