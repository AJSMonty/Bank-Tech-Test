require 'transaction'

describe 'transaction' do
    before(:each) do
        @transaction = Transaction.new
        allow(@transaction).to receive(:date) {'12/02/21'}
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