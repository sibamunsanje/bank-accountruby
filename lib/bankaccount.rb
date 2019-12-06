class BankAccount
  attr_reader :balance
  #MIN_BALANCE = 0

  def initialize(money)
    @balance = (money)
  end
  def deposit(money)
    @balance += money
  end
  def withdraw(money)
    @balance -= money #unless its less than MIN_BALANCE

  end
end
