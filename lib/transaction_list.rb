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
        @transaction_list.reverse.each do |trans| 
            puts "#{trans.date}||#{trans.credit}||#{trans.debit}||#{trans.balance}"
        end
    end

end