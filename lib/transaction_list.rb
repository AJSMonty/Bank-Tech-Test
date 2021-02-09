class TransactionList

    attr_reader :transaction_list

    def initialize
        @transaction_list = []
    end

    def add(transaction)
        @transaction_list << transaction
    end

    def print
        puts 'date||credit||debit||balance'
        # puts all transactions in reverse order
        @transaction_list.reverse.each { |transaction| puts "#{transaction.date}||#{transaction.credit}||#{transaction.debit}||#{transaction.balance}" }
    end

end