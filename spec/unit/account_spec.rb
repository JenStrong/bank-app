require 'account'
require 'transaction'

describe Account do
  subject(:account) { described_class.new }
  let(:credit_transaction) { instance_double('Transaction') }
  let(:debit_transaction) { instance_double('Transaction') }

  describe '#transactions' do
    let(:first_account_summary) { account.account_summary.first }

    context 'when transaction is credit' do
      before do
        allow(credit_transaction).to receive(:amount).and_return(500.00)
        allow(credit_transaction).to receive(:date).and_return("07/17/2018")
        allow(credit_transaction).to receive(:type).and_return(:credit)
      end

      it 'credits money into an account' do
        account.credit(credit_transaction)

        expect(first_account_summary.amount).to eq(500.00)
        expect(first_account_summary.date).to eq("07/17/2018")
        expect(first_account_summary.type).to eq(:credit)
        expect(first_account_summary.balance).to eq(500.00)

      end
    end

    context 'when transaction is debit' do

      before do
        allow(debit_transaction).to receive(:amount).and_return(500.00)
        allow(debit_transaction).to receive(:date).and_return("07/17/2018")
        allow(debit_transaction).to receive(:type).and_return(:debit)
      end

      it 'debits money from an account' do
        account.debit(debit_transaction)

        expect(first_account_summary.amount).to eq(500.00)
        expect(first_account_summary.date).to eq("07/17/2018")
        expect(first_account_summary.type).to eq(:debit)
        expect(first_account_summary.balance).to eq(-500.00)
      end
    end
  end
end
