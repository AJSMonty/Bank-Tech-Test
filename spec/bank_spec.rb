require 'bank'

describe "bank class" do
    before(:each) do
        @account = Bank.new()
    end

    it "initialises an instance of Bank" do
        expect(@account).to be_instance_of Bank
    end

    it "has a method called deposit" do
        expect(@account).to respond_to(:deposit)
    end

    it "initializes with a balance of 0" do
        expect(@account.balance).to eq 0
    end

    it "changes balance when deposit is added" do
        @account.deposit(date: '10-01-2012', credit_amount: 100)
        expect(@account.balance).to eq 100
    end

    it "has a method called withdraw" do
        expect(@account).to respond_to(:withdraw)
    end

    it "changes balance when amount is withdrawn" do
        @account.withdraw(date: '13-01-2012', debit_amount: 100)
        expect(@account.balance).to eq -100
    end

    it "keeps a track of all transactions in specific format" do
        @account.deposit(date: '10-01-2012', credit_amount: 100)
        @account.withdraw(date: '13-01-2012', debit_amount: 50)
        expect(@account.transactions).to eq ["10-01-2012||   100   ||         ||  100", "13-01-2012||          ||   50  ||  50"]
    end

    it "can print off list of transactions" do
        @account.deposit(date: '10-01-2012', credit_amount: 1000)
        @account.deposit(date: '10-01-2012', credit_amount: 2000)
        @account.withdraw(date: '13-01-2012', debit_amount: 500)
        expect(@account.print_transactions).to eq ["13-01-2012||          ||   500  ||  2500", "10-01-2012||   2000   ||         ||  3000", "10-01-2012||   1000   ||         ||  1000"]
    end


end