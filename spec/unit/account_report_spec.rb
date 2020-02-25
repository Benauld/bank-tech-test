# frozen_string_literal: true

require 'account_report'

describe AccountReport do
  let(:account_trans2) do
    double(:account_trans2,
           each: [['01-01-2015', 0, 1, 1]],
           empty?: false)
  end
  describe 'print: ' do
    it 'prints a basic header when no account exists' do
      subject = AccountReport.new
      expect { subject.print }.to output(/date || credit || debit/).to_stdout
    end

    it 'prints a single line when an account exists' do
      subject = AccountReport.new(account_trans2)
      expect { subject.print }.to output(/01-01-2015 || 0 || 1 || 1/).to_stdout
    end
  end
end
