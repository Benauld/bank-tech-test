require 'account'

describe Account do

  describe "deposit" do
    
    it "has a balance of 1000 when 1000 deposited" do
      subject = Account.new
      expect(subject.deposit(10-01-2012, 1000)) .to eq(1000)
    end

    it "can store multiple deposits and updates balance" do
      subject = Account.new
      subject.deposit(10-01-2012, 1000)
      expect(subject.deposit(11-01-2012, 1000)) .to eq(2000)
    end
  end

  describe "withdraw" do
    it "can withdraw an amount from an account - reduces balance" do
      subject = Account.new
      expect(subject.withdraw(14-01-2012, 500)) .to eq(-500)
    end
  end
end
