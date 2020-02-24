# frozen_string_literal: true

class AccountReport
  def initialize
    @header = 'date || credit || debit || balance'
  end

  def print(account)
    puts @header
  end
end