FactoryBot.define do
  factory :account do
    sequence(:name) { |n| "Account #{n}" }

    after(:create) do |account, evaluator|
      account.users << create(:user)
    end
  end
end
