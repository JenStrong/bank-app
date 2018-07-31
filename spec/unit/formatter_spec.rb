require 'formatter'
require 'transaction'

describe Formatter do
  let(:formatter) { described_class.new }
  let(:transaction_with_new_balance) { instance_double('TransactionWithNewBalance') }
  let(:account_summary) { [transaction_with_new_balance] }

  before do
    allow(transaction_with_new_balance).to receive(:amount).and_return(500.00)
    allow(transaction_with_new_balance).to receive(:date).and_return("10/08/2018")
    allow(transaction_with_new_balance).to receive(:type).and_return(:credit)
    allow(transaction_with_new_balance).to receive(:balance).and_return(500.00)
  end

  it 'formats the account summary' do

    expect(formatter.output_summary(account_summary)).to eq("date || credit || debit || balance
10/08/2018 || 500.00 || || 500.00")
  end
end
