# frozen_string_literal: true

require 'account'

describe Account do
  let(:report) { double('report', print: true) }

  describe 'deposit' do
    it 'has a balance of 1000 when 1000 deposited' do
      subject = Account.new
      expect(subject.deposit('10-01-2012', 1000)) .to eq(1000)
    end

    it 'can store multiple
    deposits and updates balance' do
      subject = Account.new
      subject.deposit('10-01-2012', 1000)
      expect(subject.deposit('11-01-2012', 1000)) .to eq(2000)
    end
  end
  describe 'print stub' do
    it 'print the account with reference to other class' do
      subject = Account.new(report)
      expect(subject.print).to eq(true)
    end
  end
end
