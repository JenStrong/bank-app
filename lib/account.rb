require 'printer'

class Account

  attr_reader :account_summary

  def initialize(printer = Printer.new)
    @printer = printer
    @account_summary = []
  end

  def credit(transaction)
    @account_summary.push(transaction)
  end

end
