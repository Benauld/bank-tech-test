# frozen_string_literal: true

# account report class with 1 method for prinint accounts reports
class AccountReport
  def initialize
    @header = 'date || credit || debit || balance'
  end

  def print(transactions)
    puts @header
    print_line(transactions)
  end

  def print_line(transactions)
    if !transactions.empty?
      transactions.each do |t|
        puts "#{t[0]}.00 || #{t[1]}.00 || #{t[2]}.00 || #{t[3]}.00"
      end
    else puts 'no transactions'
    end
  end
end
