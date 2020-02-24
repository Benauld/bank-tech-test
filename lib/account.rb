# frozen_string_literal: true

class Account
  def initialize
    @transation = []
    @transactions = []
    @current_balance = 0
  end

  def deposit(date, amount)
    @current_balance += amount
    @transaction = [date, amount, 0, @current_balance]
    @transactions.unshift(@transaction)
    @current_balance
  end

  def withdraw(date, amount)
    @current_balance -= amount
    @transaction = [date, 0, amount, @current_balance]
    @transactions.unshift(@transaction)
    @current_balance
  end

  def print
    report = AccountReport.new(@transactions)
    report.print
  end
end
