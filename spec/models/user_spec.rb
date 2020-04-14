require 'rails_helper'

describe User, type: :model do
  describe 'when validating' do
    subject { build(:user) }

    it { should validate_presence_of(:first_name) }
    it { should validate_length_of(:first_name).is_at_most(255) }

    it { should validate_presence_of(:last_name) }
    it { should validate_length_of(:last_name).is_at_most(255) }

    it { should validate_length_of(:password).is_at_least(8) }
    it { should validate_length_of(:password).is_at_most(128) }

    it { should validate_presence_of(:email) }
    it { should allow_value("email@addresse.foo").for(:email) }
    it { should_not allow_value("foo").for(:email) }
  end

  context "when created" do
    it "should create an account" do
      user = build(:user)
      # Ensure that the factory hasn't created an account for us
      # resulting in a false positive
      expect(user.accounts.count).to eq 0
      # On creation, the account should be created as well
      user.save!
      expect(user.accounts.count).to eq 1
    end
  end
end
