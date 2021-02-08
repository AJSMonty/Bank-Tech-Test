class Bank

    attr_reader :balance, :transactions

    def initialize()
        @balance = 0
        @transactions = []
    end

    def deposit(date:, credit_amount:)
        # adds to balance
        @balance += credit_amount
        # then calls add_to_transactions to save state
        add_to_transactions(date: date, credit_amount: credit_amount)
    end

    def withdraw(date:, debit_amount:)
        # removes from balance
        @balance -= debit_amount
        # then calls add_to_transactions to save state
        add_to_transactions(date: date, debit_amount: debit_amount)
    end

    def print_transactions
        # defines the columns in the method rather than having the first index of the array set to:
        puts "  date  ||  credit  ||  debit  ||  balance"
        # puts all transactions in reverse order
        @transactions.reverse.each do |transaction|
            puts transaction
        end
    end

    private

    # added spacing for command line formatting (works best with 4 digit numbers)
    # this method adds the transaction with date to transactions array
    def add_to_transactions(date:, credit_amount: '    ', debit_amount: '    ')
        @transactions << "#{date}||   #{credit_amount}   ||   #{debit_amount}  ||  #{@balance}"
    end

end