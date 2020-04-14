require 'rails_helper'

describe Account, type: :model do
  describe 'when validating' do
    subject { build(:account) }

    it { should have_many(:users).through(:account_users) }
  end
end
