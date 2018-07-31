require 'pry'
require_relative 'formatter'

class Account
  TransactionWithNewBalance = Struct.new(:amount, :date, :type, :balance)

  attr_reader :formatter, :account_summary, :balance

  def initialize(formatter = Formatter.new)
    @formatter = formatter
    @account_summary = []
    @balance = 0.00
  end

  def credit(transaction)
    transaction_summary = TransactionWithNewBalance.new(
      transaction.amount,
      transaction.date,
      transaction.type,
      @balance += transaction.amount
    )
    account_summary.push(transaction_summary)
  end

  def debit(transaction)
    transaction_summary = TransactionWithNewBalance.new(
      transaction.amount,
      transaction.date,
      transaction.type,
      @balance -= transaction.amount
    )
    account_summary.push(transaction_summary)
  end

  def statement
    formatter.output_summary(account_summary)
  end

end
