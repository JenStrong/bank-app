require 'formatter'

describe Formatter do
  let(:formatter) { described_class.new }
  let(:credit_transaction) { double('transaction') }
  let(:account_summary) { [[credit_transaction, 500.00]] }

  it 'formats the account summary' do
    # allow(credit_transaction).to receive(:type) { :credit }
    # allow(credit_transaction).to receive(:amount) { 500.00 }
    # allow(credit_transaction).to receive(:date) { "10/08/2018" }

    expect(formatter.output_summary(account_summary)).to eq("type: credit, amount: 500 date: 10/08/2018, balance: 500")
  end
end
