describe 'banking app' do

  let(:formatter) { Formatter.new }
  let(:account) { Account.new(formatter) }
  let(:credit_transaction) { Transaction.new(500.00, "07-17-2018", :credit) }
  let(:debit_transaction) { Transaction.new(400.00, "07-18-2018", :debit) }

  it 'prints a summary of transactions on an account' do

    account.credit(credit_transaction)
    account.debit(debit_transaction)

    expect(account.statement).to eq("date || credit || debit || balance
18/07/2018 || || 400.00 || 100.00
17/07/2018 || 500.00 || || 500.00")
  end

end
