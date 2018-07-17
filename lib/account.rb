require 'printer'

class Account

  def initialize(printer = Printer.new)
    @printer = printer
  end
end
