require 'pry'

class Transaction

  attr_reader :amount

  def initialize(amount, date = Time.new.strftime("%m/%d/%Y"))
    @amount = amount
    @date = date
  end

end
