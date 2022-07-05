class BuyService
  def self.call(user, product, amount)
    user.buy(product.price(amount))
  end
end
