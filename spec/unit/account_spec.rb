require 'account'
require 'transaction'

describe Account do
  subject(:account) { described_class.new }
  let(:credit_transaction) { Transaction.new(500.00, "07-17-2018", :credit) }
  let(:debit_transaction) { Transaction.new(500.00, "07-17-2018", :debit) }

  describe '#transactions' do
    context 'when transaction is credit' do
      it 'credits money into an account' do
        account.credit(credit_transaction)

        expect(account.account_summary).to eq [credit_transaction, 500.00]
        expect(account.balance).to eq credit_transaction.amount
      end
    end

    context 'when transaction is debit' do
      it 'debits money from an account' do
        account.debit(debit_transaction)

        expect(account.account_summary).to eq [debit_transaction, 500.00]
        expect(account.balance).to eq debit_transaction.amount
      end
    end
  end
end
