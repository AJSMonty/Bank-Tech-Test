# Bank Tech Test

This is a tech test to simulate simple transactions from a bank account

## How to set-up

* clone into repository
* run bundle install
* to run tests run rspec
* open irb (irb -r './lib/bank.rb')

## How to use

* To make a new account do: name_of_account = Bank.new
* To deposit into account do: name_of_account.deposit(date: , credit_amount: )
  * An example format in the arguments is: name_of_account.deposit(date: '08/02/21', credit_amount: 300)
  * The date must be entered as a string in format "dd/mm/yy"
  * The credit_amount must be an integer
* To withdraw from account do: name_of_account.withdraw(date: , debit_amount: )
  * Same rules apply as above
* To see all transactions do: name_of_account.print_transactions

An example of a full use:

* bank = Bank.new
* bank.deposit(3000)
* bank.withdraw(222)
* bank.withdraw(430)
* bank.deposit(2000)
* bank.deposit(1000)
* bank.withdraw(15)
* bank.withdraw(500)
* bank.print_transactions
* exit

## Why this way?

The reason I have structured my code this way was to try to reduce responsibility of any one method. I also wanted to hide the method to add_to_transactions as this would cause a bug if it was able to be accessed externally. The three methods that are externally available are the only methods needed to implement the functionality.

I have formatted the transactions so that they better line up on the command line, but I am aware that within the code it doesn't look that great. However when dealing with 4 digit deposits and withdrawals, I think the print_transactions method looks nicer with this formatting.