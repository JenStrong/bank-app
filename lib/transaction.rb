require 'pry'

class Transaction

  def initialize (amount, date = Time.new.strftime("%m/%d/%Y"))
    @amount = amount
    @date = date
  end

end
