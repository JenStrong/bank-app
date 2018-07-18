require 'pry'
class Formatter
  def output_summary(account_summary)
    summary = "date || credit || debit || balance\n"

    account_summary.reverse_each do |transaction|
      amount = sprintf('%.2f', transaction.first.amount)
      balance = sprintf('%.2f', transaction.last)

      if transaction.first.type == :credit
        summary += "#{transaction.first.date} || #{amount} || || #{balance}\n"
      else
        summary += "#{transaction.first.date} || || #{amount} || #{balance}\n"
      end
    end
    summary.chomp("\n")
  end
end
