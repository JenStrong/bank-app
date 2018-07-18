require 'pry'
require 'printer'

class Account

  attr_accessor :account_summary, :balance

  def initialize(printer = Printer.new)
    @printer = printer
    @account_summary = []
    @balance = 0.00
  end

  def credit(transaction)
    self.balance += transaction.amount
    account_summary.push(transaction, balance)
  end

  def debit(transaction)
    self.balance -= transaction.amount
    transaction.amount = (-transaction.amount)
    account_summary.push(transaction, balance)
  end

end
