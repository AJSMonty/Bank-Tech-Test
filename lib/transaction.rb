
require 'date'

class Transaction
    attr_reader :date, :credit, :debit, :balance

    def initialize(credit: '', debit: '', balance: '')
        @date = Date.today.strftime('%d/%m/%y') # this returns in format dd/mm/yy
        @credit = credit
        @debit = debit
        @balance = balance
    end

end