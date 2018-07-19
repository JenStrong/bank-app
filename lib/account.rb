require_relative 'formatter'

class Account

  attr_reader :formatter, :account_summary, :balance

  def initialize(formatter = Formatter.new)
    @formatter = formatter
    @account_summary = []
    @balance = 0.00
  end

  def credit(transaction)
    @balance += transaction.amount
    account_summary.push([transaction, balance])
  end

  def debit(transaction)
    @balance -= transaction.amount
    account_summary.push([transaction, balance])
  end

  def statement
    formatter.output_summary(account_summary)
  end

end
