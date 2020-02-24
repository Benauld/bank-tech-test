# frozen_string_literal: true

# account report class with 1 method for prinint accounts reports
class AccountReport
  def initialize(transactions = [])
    @header = 'date || credit || debit || balance'
    @transactions = transactions
  end

  def print
    puts @header
    if !@transactions.empty?
      @transactions.each do |t|
        puts "#{t[0]}.00 || #{t[1]}.00 || #{t[2]}.00 || #{t[3]}.00"
      end
    else puts 'no transactions'
    end
  end
end
