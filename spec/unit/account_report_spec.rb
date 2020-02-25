# frozen_string_literal: true

require 'account_report'

describe AccountReport do
  describe 'print: ' do
    it 'prints a basic header when no account exists' do
      subject = AccountReport.new
      expect { subject.print }.to output(/credit/).to_stdout
    end

    it 'prints a single line when an account exists' do
      subject = AccountReport.new([['01-01-2015', 0, 1, 1]])
      expect { subject.print }.to output(/01-01-2015/).to_stdout
    end
  end
end
