class Formatter
  def output_summary(account_summary)
    @summary = "date || credit || debit || balance\n"

    account_summary.reverse_each do |transaction_with_new_balance|
      append_to_summary(transaction_with_new_balance)
    end

    @summary.chomp("\n")
  end

  private

  def append_to_summary(line)
    amount = format(line.amount)
    balance = format(line.balance)

    case line.type
    when :credit
      @summary += "#{line.date} || #{amount} || || #{balance}\n"
    when :debit
      @summary += "#{line.date} || || #{amount} || #{balance}\n"
    end
  end

  def format(number)
    sprintf('%.2f', number)
  end
end
