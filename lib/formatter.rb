class Formatter
  def output_summary(account_summary)
    summary = "date || credit || debit || balance\n"

    account_summary.reverse_each do |transaction|
      date = transaction.first.date
      amount = format_number(transaction.first.amount)
      balance = format_number(transaction.last)
      type = transaction.first.type

      case type
      when :credit
        summary += "#{date} || #{amount} || || #{balance}\n"
      when :debit
        summary += "#{date} || || #{amount} || #{balance}\n"
      end
      
    end
    summary.chomp("\n")
  end

  private

  def format_number(amount)
    sprintf('%.2f', amount)
  end

end
