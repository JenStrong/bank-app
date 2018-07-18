require 'transaction'
require 'date'

describe Transaction do
  let(:transaction) { Transaction.new(500.00, Date.today, :debit) }

  it 'has an amount' do
    expect(transaction.amount).to eq(500.00)
  end

  it 'has a date' do
    expect(transaction.date).to eq(Date.today)
  end

  it 'has a type' do
    expect(transaction.type).to eq(:debit)
  end

end
