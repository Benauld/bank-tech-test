# frozen_string_literal: true

class AccountReport
  def initialize(transactions = [])
    @header = 'date || credit || debit || balance'
    @transactions = transactions
  end

  def print
    puts @header
    if @transactions.length > 0
      @transactions.each do |trans| 
        puts "#{trans[0]}.00 || #{trans[1]}.00 || #{trans[2]}.00 || #{trans[3]}.00"
      end
    elsif
      puts "no transactions"
    end
  end
end