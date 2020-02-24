class Account

  def initialize()
    @transation = []
    @transactions = [@transaction]
    @current_balance = 0
  end

  def deposit(date, amount)
    @current_balance += amount
    @transaction = [date, amount, 0, @current_balance]
    @transactions.insert(0, @transaction)
    return @current_balance
  end

  def withdraw(date, amount)
    @current_balance -= amount
    @transaction = [date, 0, amount, @current_balance]
    @transactions.insert(0, @transaction)
    return @current_balance
  end
end
