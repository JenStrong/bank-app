describe 'printing a receipt' do

  let(:printer) { Printer.new }
  let(:account) { Account.new(printer) }
  let(:first_transaction) { Transaction.new(500.00, "07-17-2018") }
  let(:second_transaction) { Transaction.new(400.00, "07-18-2018") }

  it 'prints a summary of transactions on an account' do

    account.credit(first_transaction)
    account.debit(second_transaction)

    receipt = account.print_receipt

    expect(receipt).to eq("date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00)")
  end

end
