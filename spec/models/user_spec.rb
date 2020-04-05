require 'rails_helper'

describe User, type: :model do
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
