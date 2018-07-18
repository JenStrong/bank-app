require 'pry'
require 'date'

class Transaction

  attr_reader :amount, :type, :date

  def initialize(amount, date = Date.today, type)
    @amount = amount
    @date = date
    @type = type
  end

end
