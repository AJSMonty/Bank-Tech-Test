
require 'date'

class Transaction
    attr_reader :date, :credit, :debit, :balance

    def initialize(credit: '', debit: '', balance: '')
        @date = Date.today.strftime('%d/%m/%y')
        @credit = credit
        @debit = debit
        @balance = balance
    end

end