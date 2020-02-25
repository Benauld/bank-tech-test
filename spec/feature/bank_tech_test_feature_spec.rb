# frozen_string_literal: true

require 'account'
require 'account_report'

describe Account do
  describe 'deposit and withdrawal' do
    it 'can keep track of multiple deposits and withdrawals' do
      subject = Account.new
      subject.deposit('10-01-2012', 1000)
      subject.withdraw('13-01-2012', 500)
      subject.deposit('10-01-2012', 1000)
      expect(subject.withdraw('14-01-2012', 500)) .to eq(1000)
    end
  end

  describe 'print account' do
    it 'print the account with reference to other class' do
      subject = Account.new
      subject.deposit('10-01-2012', 1000)
      subject.withdraw('13-01-2012', 500)
      subject.deposit('14-01-2012', 1000)
      expect { subject.print }.to output(/1000 || 1500/).to_stdout
    end
  end
end
