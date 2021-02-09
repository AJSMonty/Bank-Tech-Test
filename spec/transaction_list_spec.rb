require 'transaction_list'
require 'transaction'

describe 'transaction_list' do
    before(:each) do
        @transaction_list = TransactionList.new
    end

    it 'is an instance of transaction' do
        expect(@transaction_list).to be_instance_of TransactionList
    end

    it 'initializes with an empty array' do
        expect(@transaction_list.transaction_list).to eq []
    end

    it 'has a method called add that adds a transaction to the array' do
        transaction = Transaction.new
        @transaction_list.add(transaction)
        expect(@transaction_list.transaction_list[0]).to be_instance_of Transaction
    end

    it 'can print a list of transactions with format' do
        transaction = Transaction.new(credit: 2000, balance: 2000)
        allow(transaction).to receive(:date) {'12/02/21'}
        @transaction_list.add(transaction)
        expect{ @transaction_list.print }.to output("date||credit||debit||balance\n12/02/21||2000||||2000\n").to_stdout
    end

    it "can print the list in reverse order" do
        transaction_1 = Transaction.new(credit: 2000, balance: 2000)
        allow(transaction_1).to receive(:date) {'12/02/21'}
        @transaction_list.add(transaction_1)
        transaction_2 = Transaction.new(credit: 1000, balance: 3000)
        allow(transaction_2).to receive(:date) {'14/02/21'}
        @transaction_list.add(transaction_2)
        expect{ @transaction_list.print }.to output("date||credit||debit||balance\n14/02/21||1000||||3000\n""12/02/21||2000||||2000\n").to_stdout
    end

end