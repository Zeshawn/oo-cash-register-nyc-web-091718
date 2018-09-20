require "pry"


class CashRegister

attr_accessor :total, :discount, :item, :last_transaction


  def initialize(discount = 0)
    @item = []
    @total = 0
    @discount = discount


  end

  def total
    return @total
  end


  def add_item(title, price, quantity=1)
    @total += price*quantity
      quantity.times do
        @item << title
      end
      self.last_transaction = price * quantity
  end

  def apply_discount
   if @discount > 0
     @total = @total - (@total * @discount/100)
     "After the discount, the total comes to $#{@total}."
   elsif @discount == 0
     "There is no discount to apply."
   end
  end


  def items
    @item
  end

  def void_last_transaction
    @total = @total - self.last_transaction
  end



end
