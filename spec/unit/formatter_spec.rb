require 'formatter'
require 'transaction'

describe Formatter do
  let(:formatter) { described_class.new }
  let(:credit_transaction) { Transaction.new(500.00, "10/08/2018", :credit) }
  let(:account_summary) { [[credit_transaction, 500.00]] }

  it 'formats the account summary' do

    expect(formatter.output_summary(account_summary)).to eq("date || credit || debit || balance
10/08/2018 || 500.00 || || 500.00")
  end
end
