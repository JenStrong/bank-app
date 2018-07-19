require 'formatter'
require 'transaction'

describe Formatter do
  let(:formatter) { described_class.new }
  let(:credit_transaction) { instance_double('Transaction') }
  let(:account_summary) { [[credit_transaction, 500.00]] }

  before do
    allow(credit_transaction).to receive(:amount).and_return(500.00)
    allow(credit_transaction).to receive(:date).and_return("10/08/2018")
    allow(credit_transaction).to receive(:type).and_return(:credit)
  end

  it 'formats the account summary' do

    expect(formatter.output_summary(account_summary)).to eq("date || credit || debit || balance
10/08/2018 || 500.00 || || 500.00")
  end
end
