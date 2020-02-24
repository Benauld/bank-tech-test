class Account

  def initialize()
    @current_balance = 0
  end

  def deposit(date, amount)
    @current_balance += amount
  end
end
