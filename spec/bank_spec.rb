# frozen_string_literal: true

require 'bank'

describe 'bank class' do
  before(:each) do
    @account = Bank.new
  end

  it 'initializes with a balance of 0' do
    expect(@account.balance).to eq 0
  end

  it 'changes balance when deposit is added' do
    @account.deposit(100)
    expect(@account.balance).to eq 100
  end

  it 'changes balance when amount is withdrawn' do
    @account.withdraw(100)
    expect(@account.balance).to eq -100
  end

  it 'can print off a list of transactions' do
    allow(Date).to receive(:today).and_return Date.new(2021,2,12)
    @account.deposit(2000)
    allow(Date).to receive(:today).and_return Date.new(2021,2,14)
    @account.deposit(1000)
    expect{ @account.print_transactions }.to output("date||credit||debit||balance\n14/02/21||1000||||3000\n""12/02/21||2000||||2000\n").to_stdout
  end

end
