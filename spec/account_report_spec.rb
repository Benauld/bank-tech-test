# frozen_string_literal: true

require 'account_report'
require 'account'

describe AccountReport do
  describe 'print' do
    it 'prints a basic header when no account exists' do
      subject = AccountReport.new
      account = Account.new
      expect{ subject.print(account).to output("date || credit || debit || balance").to_stdout }
    end
  end
end
