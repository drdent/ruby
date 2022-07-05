class Product
  attr_reader :base_price

  def initialize(base_price)
    @price = base_price
  end

  def price(amount)
    base_price * amount
  end
end
