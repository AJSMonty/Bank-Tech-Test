# Bank Tech Test

This is a tech test to simulate simple transactions from a bank account

## How to set-up

* clone into repository
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



