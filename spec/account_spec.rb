require 'account'

describe Account do

  describe "deposit" do
    
    it "has a balance of 1000 when 100 deposited" do
      subject = Account.new
      expect(subject.deposit(10-01-2012, 1000)) .to eq(1000)
    end
  end
end
