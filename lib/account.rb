require_relative 'formatter'

class Account

  attr_accessor :formatter, :account_summary, :balance

  def initialize(formatter = Formatter.new)
    @formatter = formatter
    @account_summary = []
    @balance = 0.00
  end

  def credit(transaction)
    self.balance += transaction.amount
    account_summary.push([transaction, balance])
  end

  def debit(transaction)
    self.balance -= transaction.amount
    account_summary.push([transaction, balance])
  end

  def statement
    formatter.output_summary(account_summary)
  end

end
