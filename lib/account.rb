require 'pry'
require 'printer'

class Account

  attr_reader :account_summary, :balance

  def initialize(printer = Printer.new)
    @printer = printer
    @account_summary = []
    @balance = 0.00
  end

  def credit(transaction)
    @balance += transaction.amount
    @account_summary.push(transaction, balance: @balance)
  end

  def debit(transaction)
    @balance -= transaction.amount
    @account_summary.push(transaction, balance: @balance)
  end

end
