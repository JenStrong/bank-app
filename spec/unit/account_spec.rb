require 'account'

describe Account do
  subject(:account) { described_class.new }
  let(:transaction) { Transaction.new(500.00, "07-17-2018") }

  context '#transactions' do

    it 'credits money into an account' do

      account.credit(transaction)

      expect(account.account_summary).to eq [transaction, balance: 500.00]
      expect(account.balance).to eq transaction.amount
    end

    it 'debits money from an account' do

      account.debit(transaction)

      expect(account.account_summary).to eq [transaction, balance: -500.00]
      expect(account.balance).to eq -transaction.amount
    end

  end
end
