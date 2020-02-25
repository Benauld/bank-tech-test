# frozen_string_literal: true

# account class with 3 methods - depost / withdraw and print
class Account
  def initialize(report = AccountReport.new)
    @transation = []
    @transactions = []
    @current_balance = 0
    @report = report
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
    @report.print(@transactions)
  end
end
