class CashRegister
  attr_accessor :total, :discount, :last_transaction, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @purchase_price = []
    @transactions = []
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    quantity.times do |item|
      @items << title
      @transactions << price
    end
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total -= (@total * @discount) / 100
      "After the discount, the total comes to $#{@total}."
    end
  end

  def void_last_transaction
    @total -= @transactions.last
  end

end
