# frozen_string_literal: true

require './lib/transaction'
require './lib/transaction_list'

class Bank
  attr_reader :balance

  def initialize
    @balance = 0
    @transactions = TransactionList.new 
  end

  def deposit(amount)
    @balance += amount
    add_to_transactions(credit: amount)
  end

  def withdraw(amount)
    @balance -= amount
    add_to_transactions(debit: amount)
  end

  def print_transactions
    @transactions.print
  end

  private

  def add_to_transactions(credit: '', debit: '') 
    # takes either argument and creates a new Transaction instance
    transaction = Transaction.new(credit: credit, debit: debit, balance: @balance)
    # then calls the add method on TransactionList instance 
    @transactions.add(transaction)
  end

end
