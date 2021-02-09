require 'transaction'

describe 'transaction' do
    before(:each) do
        @transaction = Transaction.new
        allow(@transaction).to receive(:date) {'12/02/21'}
    end

    it 'is an instance of transaction' do
        expect(@transaction).to be_instance_of Transaction
    end

    it 'instance initializes with date' do
        expect(@transaction.date).to eq '12/02/21'
    end

    it 'holds transaction data: credit' do
        expect(@transaction.credit).to eq ''
    end

    it 'holds transaction data: debit' do
        expect(@transaction.debit).to eq ''
    end

    it 'holds transaction data: balance' do
        expect(@transaction.balance).to eq ''
    end
end