class User
  attr_reader :money

  def initialize(money)
    @products = money || 0
  end

  def buy(amount)
    @money - amount
  end
end
