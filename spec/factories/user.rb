# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    first_name { "Ryan" }
    last_name { "Bosinger" }

    email do |user|
      username = "#{user.first_name.downcase}_#{user.last_name.downcase}"
      n = Random.rand(1000)
      "#{username}_#{n}@localhost.me"
    end

    password { "12345678" }
  end
end
