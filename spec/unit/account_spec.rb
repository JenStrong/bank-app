require 'account'

describe Account do
  subject(:account) { described_class.new }
  let(:first_transaction) { Transaction.new(500.00, "07-17-2018") }

  context '#transactions' do

    it 'credits money into an account' do

      account.credit(first_transaction)

      expect(account.account_summary).to eq [first_transaction]

    end

  end
end
