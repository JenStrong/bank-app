require 'date'

class Transaction

  attr_reader :amount, :type, :date

  def initialize(amount, date, type)
    @amount = amount
    @date = date
    @type = type
  end

end
