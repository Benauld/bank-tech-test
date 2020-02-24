# frozen_string_literal: true

require 'account_report'

describe AccountReport do
  let(:account_trans2) { double(:account_trans, each: [[01-01-2015, 0, 1, 1],[01-01-2015, 0, 2, 3]], length: 2) }
  describe 'print: ' do
    it 'prints a basic header when no account exists' do
      subject = AccountReport.new()
      expect{ subject.print}.to output(/date || credit || debit || balance\n/).to_stdout 
    end

    it 'prints a single line when an account exists' do
      subject = AccountReport.new(account_trans2)
      expect{ subject.print}.to output(/01-01-2015 || 0 || 0 || 0/).to_stdout 
    end
  end
end