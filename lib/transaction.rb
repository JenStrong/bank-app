require 'pry'

class Transaction

  attr_accessor :amount

  def initialize(amount, date = Time.new, type)
    @amount = amount
    @date = date
    @type = type
  end

end
