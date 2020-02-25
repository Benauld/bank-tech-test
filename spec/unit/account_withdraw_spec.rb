# frozen_string_literal: true

require 'account'

describe Account do
  describe 'withdraw' do
    it 'can withdraw an amount from an account - reduces balance' do
      subject = Account.new
      expect(subject.withdraw('14-01-2012', 500)) .to eq(-500)
    end

    it 'can do multiple withdrawals' do
      subject = Account.new
      subject.withdraw('13-01-2012', 500)
      expect(subject.withdraw('14-01-2012', 500)) .to eq(-1000)
    end
  end

  describe 'deposit and withdrawal' do
    it 'can keep track of multiple deposits and withdrawals' do
      subject = Account.new
      subject.deposit('10-01-2012', 1000)
      subject.withdraw('13-01-2012', 500)
      subject.deposit('10-01-2012', 1000)
      expect(subject.withdraw('14-01-2012', 500)) .to eq(1000)
    end
  end
end
